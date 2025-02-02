#include "SCT_SurfaceChargesGenerator.h"
#include <cmath>
// DD
#include "InDetReadoutGeometry/SiDetectorElement.h"
#include "InDetReadoutGeometry/SCT_ModuleSideDesign.h"
#include "InDetReadoutGeometry/SCT_BarrelModuleSideDesign.h"

// random number service includes
#include "AthenaKernel/IAtRndmGenSvc.h"
#include "CLHEP/Random/RandomEngine.h"
#include "AtlasCLHEP_RandomGenerators/RandGaussZiggurat.h"
#include "CLHEP/Random/RandFlat.h"

// CLHEP
#include "CLHEP/Geometry/Point3D.h"
#include "CLHEP/Units/SystemOfUnits.h"
#include "CLHEP/Vector/TwoVector.h"

#include "GeneratorObjects/HepMcParticleLink.h"

#include "SiPropertiesSvc/ISiPropertiesSvc.h"
#include "InDetConditionsSummaryService/ISiliconConditionsSvc.h"
#include "SCT_ConditionsServices/ISCT_RadDamageSummarySvc.h"
#include "SiPropertiesSvc/SiliconProperties.h"
#include "GeneratorObjects/HepMcParticleLink.h"

using InDetDD::SiDetectorElement;
using InDetDD::SCT_ModuleSideDesign;
using InDetDD::SiLocalPosition;

using namespace std;

// constructor
SCT_SurfaceChargesGenerator::SCT_SurfaceChargesGenerator(const
                                                         std::string &type,
                                                         const std::string &name,
                                                         const IInterface *
parent)
    : AthAlgTool(type, name, parent),
    m_tHalfwayDrift(0),
    m_distInterStrip(1.0),
    m_distHalfInterStrip(0),
    m_SurfaceDriftFlag(0),
    m_comTime(0),
    m_useComTime(false),
    m_cosmicsRun(false),
    m_doDistortions(false),
    m_useSiCondDB(true),
    m_doTrapping(false),
    m_doHistoTrap(false),
    m_doRamo(false),
    m_doCTrap(false),
    m_hashId(0),
    m_distortionsTool("SCT_DistortionsTool"),
    m_siConditionsSvc("SCT_SiliconConditionsSvc", name),
    m_siPropertiesSvc("SCT_SiPropertiesSvc", name),
    m_radDamageSvc("SCT_RadDamageSummarySvc", name),
    m_element(0),
    m_rndmEngine(0),
    m_rndmEngineName("SCT_Digitization") {
    declareInterface< ISCT_SurfaceChargesGenerator  >(this);

    declareProperty("FixedTime", m_tfix = -999);                // !< fixed
                                                                // timing
    declareProperty("SubtractTime", m_tsubtract = -999);        // !< substract
                                                                // drift time
    declareProperty("SurfaceDriftTime", m_tSurfaceDrift = 10);  // !< max
                                                                // surface drift
                                                                // time
    declareProperty("NumberOfCharges", m_numberOfCharges = 1);
    declareProperty("SmallStepLength", m_smallStepLength = 5);
    declareProperty("SiConditionsSvc", m_siConditionsSvc);
    declareProperty("SiPropertiesSvc", m_siPropertiesSvc);
    //  declareProperty("rndmEngineName",m_rndmEngineName="SCT_Digitization");
    declareProperty("doDistortions", m_doDistortions,
                    "Simulation of module distortions");
    declareProperty("UseSiCondDB", m_useSiCondDB,
                    "Usage of SiConditions DB values can be disabled to use setable ones");
    declareProperty("DepletionVoltage", m_vdepl = 70);
    declareProperty("BiasVoltage", m_vbias = 150);
    declareProperty("doTrapping", m_doTrapping,
                    "Simulation of charge trapping effect"); //
    declareProperty("doHistoTrap", m_doHistoTrap,
                    "Histogram the charge trapping effect"); //
    declareProperty("doRamo", m_doRamo,
                    "Ramo Potential for charge trapping effect"); //
    declareProperty("SCTDistortionsTool", m_distortionsTool,
                    "Tool to retrieve SCT distortions");
    declareProperty("SCT_RadDamageSummarySvc", m_radDamageSvc);
}

// Destructor:
SCT_SurfaceChargesGenerator::~SCT_SurfaceChargesGenerator() {
}

// ----------------------------------------------------------------------
// Initialize
// ----------------------------------------------------------------------
StatusCode SCT_SurfaceChargesGenerator::initialize() {
    StatusCode sc = AthAlgTool::initialize();

    if (sc.isFailure()) {
        ATH_MSG_FATAL("SCT_SurfaceChargesGenerator::initialize() failed");
        return sc;
    }
    ATH_MSG_DEBUG("SCT_SurfaceChargesGenerator::initialize()");

    // Get ISiPropertiesSvc
    sc = m_siPropertiesSvc.retrieve();
    if (sc.isFailure()) {
        ATH_MSG_FATAL("Could not retrieve silicon properties svc: " <<
            m_siPropertiesSvc.name());
        return sc;
    }

    // Get ISiliconConditionsSvc
    sc = m_siConditionsSvc.retrieve();
    if (sc.isFailure()) {
        ATH_MSG_FATAL("Could not retrieve silicon conditions service: " <<
            m_siConditionsSvc.name());
        return sc;
    }

    // Get ISCT_ModuleDistortionsTool
    sc = m_distortionsTool.retrieve();
    if (sc.isFailure()) {
        ATH_MSG_FATAL("Could not retrieve distortions tool: " <<
            m_distortionsTool.name());
        return sc;
    }

    if (m_doTrapping) {
        ///////////////////////////////////////////////////
        // -- Get Radiation Damage Service
        sc = m_radDamageSvc.retrieve();
        if (sc.isFailure()) {
            ATH_MSG_FATAL("Could not retrieve SCT_RadDamageSummarySvc: " <<
                m_radDamageSvc.name());
            return sc;
        }
    }

    if (m_doHistoTrap) {
        // -- Get Histogram Service
        StatusCode rc = service("THistSvc", m_thistSvc);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        // h_efieldz = new TProfile("efieldz", "", 50, 0., 250.);
        h_efieldz = new TProfile("efieldz", "", 50, 0., 0.4);
        rc = m_thistSvc->regHist("/file1/efieldz", h_efieldz);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }


        h_efield = new TH1F("efield", "", 100, 200., 800.);
        rc = m_thistSvc->regHist("/file1/efield", h_efield);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        // // h_spess = new TH1F("spess","", 50, 0., 250);
        h_spess = new TH1F("spess", "", 50, 0., 0.4);
        rc = m_thistSvc->regHist("/file1/spess", h_spess);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_depD = new TH1F("depD", "", 50, -0.3, 0.3);
        rc = m_thistSvc->regHist("/file1/depD", h_depD);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_drift_electrode = new TH2F("drift_electrode", "", 50, 0., 20., 50, 0.,
                                     20.);
        rc = m_thistSvc->regHist("/file1/drift_electrode", h_drift_electrode);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_drift_time = new TH1F("drift_time", "", 100, 0., 20.);
        rc = m_thistSvc->regHist("/file1/drift_time", h_drift_time);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_t_electrode = new TH1F("t_electrode", "", 100, 0., 20.);
        rc = m_thistSvc->regHist("/file1/t_electrode", h_t_electrode);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_ztrap = new TH1F("ztrap", "", 100, 0., 0.3);
        rc = m_thistSvc->regHist("/file1/ztrap", h_ztrap);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        // More histograms to check what's going on
        h_zhit = new TH1F("zhit", "", 50, -0.2, 0.2);
        rc = m_thistSvc->regHist("/file1/zhit", h_zhit);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_ztrap_tot = new TH1F("ztrap_tot", "", 100, 0., 0.5);
        rc = m_thistSvc->regHist("/file1/ztrap_tot", h_ztrap_tot);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_no_ztrap = new TH1F("no_ztrap", "", 100, 0., 0.5);
        rc = m_thistSvc->regHist("/file1/no_ztrap", h_no_ztrap);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_trap_drift_t = new TH1F("trap_drift_t", "", 100, 0., 20.);
        rc = m_thistSvc->regHist("/file1/trap_drift_t", h_trap_drift_t);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_notrap_drift_t = new TH1F("notrap_drift_t", "", 100, 0., 20.);
        rc = m_thistSvc->regHist("/file1/notrap_drift_t", h_notrap_drift_t);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_mob_Char = new TProfile("mob_Char", "", 200, 100., 1000.);
        rc = m_thistSvc->regHist("/file1/mob_Char", h_mob_Char);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_vel = new TProfile("vel", "", 100, 100., 1000.);
        rc = m_thistSvc->regHist("/file1/vel", h_vel);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_drift1 = new TProfile("drift1", "", 50, 0., 0.3);
        rc = m_thistSvc->regHist("/file1/drift1", h_drift1);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_gen = new TProfile("gen", "", 50, 0., 0.3);
        rc = m_thistSvc->regHist("/file1/gen", h_gen);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_gen1 = new TProfile("gen1", "", 50, 0., 0.3);
        rc = m_thistSvc->regHist("/file1/gen1", h_gen1);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_gen2 = new TProfile("gen2", "", 50, 0., 0.3);
        rc = m_thistSvc->regHist("/file1/gen2", h_gen2);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_velocity_trap = new TProfile("velocity_trap", "", 50, 0., 1000.);
        rc = m_thistSvc->regHist("/file1/velocity_trap", h_velocity_trap);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_mobility_trap = new TProfile("mobility_trap", "", 50, 100., 1000.);
        rc = m_thistSvc->regHist("/file1/mobility_trap", h_mobility_trap);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }

        h_trap_pos = new TH1F("trap_pos", "", 100, 0., 0.3);
        rc = m_thistSvc->regHist("/file1/trap_pos", h_trap_pos);
        if (rc.isFailure()) {
            ATH_MSG_FATAL("Unable to retrieve pointer to THistSvc");
            return StatusCode::FAILURE;
        }
    }
    ///////////////////////////////////////////////////

    m_smallStepLength *= CLHEP::micrometer;
    m_tSurfaceDrift *= CLHEP::ns;

    // If we want charge trapping effect with Ramo potential let's fill the map
    // only once
    if (m_doTrapping && m_doRamo) {
        m_radDamageSvc->InitPotentialValue();
    }

    // Surface drift time calculation Stuff
    m_tHalfwayDrift = m_tSurfaceDrift / 2.0;
    m_distHalfInterStrip = m_distInterStrip / 2.0;
    if ((m_tSurfaceDrift > m_tHalfwayDrift) && (m_tHalfwayDrift >= 0.0) &&
        (m_distHalfInterStrip > 0.0) && (m_distHalfInterStrip <
                                         m_distInterStrip)) {
        m_SurfaceDriftFlag = 1;
    }
    else {
        ATH_MSG_INFO("\tsurface drift still not on, wrong params");
    }

    // Make sure these two flags are not set simultaneously
    if (m_tfix > -998. && m_tsubtract > -998.) {
        ATH_MSG_FATAL("\tCannot set both FixedTime and SubtractTime options!");
        ATH_MSG_INFO(
            "\tMake sure the two flags are not set simultaneously in jo");
        return StatusCode::FAILURE;
    }
    return sc;
}

// ----------------------------------------------------------------------
// finalize
// ----------------------------------------------------------------------
StatusCode SCT_SurfaceChargesGenerator::finalize() {
    MsgStream log(msgSvc(), name());
    StatusCode sc = AthAlgTool::finalize();

    if (sc.isFailure()) {
        ATH_MSG_FATAL("SCT_SurfaceChargesGenerator::finalize() failed");
        return sc;
    }
    ATH_MSG_DEBUG("SCT_SurfaceChargesGenerator::finalize()");
    return sc;
}

// ----------------------------------------------------------------------
// perpandicular Drift time calculation
// ----------------------------------------------------------------------
float SCT_SurfaceChargesGenerator::DriftTime(float zhit) const {
    float sensorThickness = m_element->thickness();

    if ((zhit < 0.0) || (zhit > sensorThickness)) {
        ATH_MSG_DEBUG("DriftTime: hit coordinate zhit=" << zhit /
            CLHEP::micrometer << " out of range");
        return -2.0;
    }

    float vdepl = 0.;
    float vbias = 0.;
    if (m_useSiCondDB) {
        vdepl = m_siConditionsSvc->depletionVoltage(m_hashId) * CLHEP::volt;
        vbias = m_siConditionsSvc->biasVoltage(m_hashId) * CLHEP::volt;
    }
    else {
        vdepl = m_vdepl * CLHEP::volt;
        vbias = m_vbias * CLHEP::volt;
    }
    float denominator = vdepl + vbias - (2.0 * zhit * vdepl / sensorThickness);
    if (denominator <= 0.0) {
        if (vbias >= vdepl) { // Should not happen
            ATH_MSG_ERROR("DriftTime: negative argument X for log(X) " << zhit);
            return -1.0;
        }
        else { // (vbias<vdepl) can happen with underdepleted sensors, lose
               // charges in that volume
            // ATH_MSG_DEBUG ( "DriftTime: ->infinity since vdepl>vbias, zhit: "
            // << zhit );
            return -10.0;
        }
    }

    float driftTime = log((vdepl + vbias) / denominator);
    driftTime = driftTime * sensorThickness * sensorThickness /
                (2.0 * m_siPropertiesSvc->getSiProperties(
                     m_hashId).holeDriftMobility() * vdepl);
    return driftTime;
}

// ----------------------------------------------------------------------
// Sigma Diffusion calculation
// ----------------------------------------------------------------------
float SCT_SurfaceChargesGenerator::DiffusionSigma(float zhit) const {
    float t = this->DriftTime(zhit); // in ns

    if (t > 0.0) {
        float diffusionSigma = sqrt(2 * m_siPropertiesSvc->getSiProperties(
                                        m_hashId).holeDiffusionConstant() * t); //
                                                                                // in
                                                                                // mm
        return diffusionSigma;
    }
    else {
        return 0.0;
    }
}

// ----------------------------------------------------------------------
// Maximum drift time
// ----------------------------------------------------------------------
float SCT_SurfaceChargesGenerator::MaxDriftTime() const {
    if (m_element) {
        float sensorThickness = m_element->thickness();
        return this->DriftTime(sensorThickness);
    }
    else {
        ATH_MSG_INFO("Error: SiDetectorElement not set!");
        return 0;
    }
}

// ----------------------------------------------------------------------
// Maximum Sigma difusion
// ----------------------------------------------------------------------
float SCT_SurfaceChargesGenerator::MaxDiffusionSigma() const {
    if (m_element) {
        float sensorThickness = m_element->thickness();
        return this->DiffusionSigma(sensorThickness);
    }
    else {
        ATH_MSG_INFO("Error: SiDetectorElement not set!");
        return 0;
    }
}

// ----------------------------------------------------------------------
// Calculating the surface drift time but I should confess that
// I haven't found out yet where the calculation come from
// ----------------------------------------------------------------------
float SCT_SurfaceChargesGenerator::SurfaceDriftTime(float ysurf) const {
    if (m_SurfaceDriftFlag) {
        //    if((ysurf>=0.0) && (ysurf<=1.0)) {
        if ((ysurf >= 0.0) && (ysurf <= m_distInterStrip)) {
            float surfaceDriftTime;
            if (ysurf < m_distHalfInterStrip) {
                float y = ysurf / m_distHalfInterStrip;
                surfaceDriftTime = m_tHalfwayDrift * y * y;
            }
            else {
                float y = (m_distInterStrip - ysurf) / (m_distInterStrip -
                                                        m_distHalfInterStrip);
                surfaceDriftTime = m_tSurfaceDrift + (m_tHalfwayDrift -
                                                      m_tSurfaceDrift) * y * y;
            }
            return surfaceDriftTime;
        }
        else {
            ATH_MSG_INFO(" ysurf out of range " << ysurf);
            return -1.0;
        }
    }
    else {
        return 0.0;
    }
}

// -------------------------------------------------------------------------------------------
// create a list of surface charges from a hit - called from
// SCT_DigitizationTool PileUpTool
// -------------------------------------------------------------------------------------------
// void SCT_SurfaceChargesGenerator::processFromTool(const SiHit* phit,
// std::list<SiSurfaceCharge> &charges, const float p_eventTime, const unsigned
// short p_eventId) const {
void SCT_SurfaceChargesGenerator::processFromTool(const SiHit *phit, const
                                                  ISiSurfaceChargesInserter &
                                                  inserter, const float
                                                  p_eventTime, const unsigned
                                                  short p_eventId) const {
    ATH_MSG_VERBOSE("SCT_SurfaceChargesGenerator::processFromTool starts");
    processSiHit(*phit, inserter, p_eventTime, p_eventId);
    return;
}

// -------------------------------------------------------------------------------------------
// create a list of surface charges from a hit - called from SCT_Digitization
// AthAlgorithm
// -------------------------------------------------------------------------------------------
// void SCT_SurfaceChargesGenerator::process(const TimedHitPtr<SiHit> & phit,
// std::list<SiSurfaceCharge> &charges) const {
void SCT_SurfaceChargesGenerator::process(const TimedHitPtr<SiHit> &phit, const
                                          ISiSurfaceChargesInserter &inserter)
const {
    ATH_MSG_VERBOSE("SCT_SurfaceChargesGenerator::process starts");

    float p_eventTime = phit.eventTime();
    unsigned short p_eventId = phit.eventId();
    // processSiHit(*phit,charges,p_eventTime,p_eventId);
    processSiHit(*phit, inserter, p_eventTime, p_eventId);
    return;
}

// -------------------------------------------------------------------------------------------
// create a list of surface charges from a hit - called from both AthAlgorithm
// and PileUpTool
// -------------------------------------------------------------------------------------------
// void SCT_SurfaceChargesGenerator::processSiHit(const SiHit& phit,
// std::list<SiSurfaceCharge> &charges, float p_eventTime, unsigned short
// p_eventId) const {
void SCT_SurfaceChargesGenerator::processSiHit(const SiHit &phit, const
                                               ISiSurfaceChargesInserter &
                                               inserter,
                                               float p_eventTime,
                                               unsigned short p_eventId) const {
    const InDetDD::SCT_ModuleSideDesign *p_design =
      dynamic_cast<const SCT_ModuleSideDesign *>(&(m_element->design()));

    if (!p_design) {
        ATH_MSG_ERROR("SCT_SurfaceChargesGenerator::process can not get " <<
            p_design);
        return;
    }

    // ---**************************************
    //  Time of Flight Calculation - separate method?
    // ---**************************************
    // --- Original calculation of Time of Flight of the particle Time needed by
    // the particle to reach the sensor
    float timeOfFlight = p_eventTime + hitTime(phit);  //  hitTime(phit): Open
                                                       // functions of
                                                       // InDetSimEvent/SiHit.h
                                                       //  hitTime(phit) =
                                                       //  phit->meanTime() ;

    // Kondo 19/09/2007: Use the coordinate of the center of the module to
    // calculate the time of flight
    timeOfFlight -= (m_element->center().mag()) / CLHEP::c_light;  // !< extract
                                                                   // the
                                                                   // distance
                                                                   // to the
                                                                   // origin of
                                                                   // the module
                                                                   // to Time of
                                                                   // flight

    // !< Commissioning time taken into account for the particle time of flight
    // calculation
    if (m_cosmicsRun && m_useComTime) {
        timeOfFlight -= m_comTime;
    }
    if (m_useComTime) {
        timeOfFlight -= m_comTime;
    }
    // !< timing set from jo to adjust (subtract) the timing
    if (m_tsubtract > -998) {
        timeOfFlight -= m_tsubtract;
    }
    // ---**************************************

    // Get HashId
    m_hashId = m_element->identifyHash();

    // get sensor thickness and tg lorentz from SiDetectorDesign
    const float sensorThickness = p_design->thickness();
    
    const float tanLorentz = m_element->getTanLorentzAnglePhi();

    const CLHEP::Hep3Vector pos = phit.localStartPosition();
    const float xEta = pos[SiHit::xEta];
    const float xPhi = pos[SiHit::xPhi];
    const float xDep = pos[SiHit::xDep];

    const CLHEP::Hep3Vector endPos = phit.localEndPosition();
    const float cEta = endPos[SiHit::xEta] - xEta;
    const float cPhi = endPos[SiHit::xPhi] - xPhi;
    const float cDep = endPos[SiHit::xDep] - xDep;

    float LargeStep = sqrt(cEta * cEta + cPhi * cPhi + cDep * cDep);
    int numberOfSteps = int(LargeStep / m_smallStepLength) + 1;
    float steps = static_cast<float>(m_numberOfCharges * numberOfSteps);
    float e1 = phit.energyLoss() / steps;
    float q1 = e1 * m_siPropertiesSvc->getSiProperties(
        m_hashId).electronHolePairsPerEnergy();

    // in the following, to test the code, we will use the original coordinate
    // system of the SCTtest3SurfaceChargesGenerator x is eta y is phi z is
    // depth
    float xhit = xEta;
    float yhit = xPhi;
    float zhit = xDep;

    if (m_doDistortions) {
        if (m_element->isBarrel() == 1) {// Only apply disortions to barrel
                                         // modules
            Amg::Vector2D BOW;
            BOW[0] = m_distortionsTool->correctSimulation(m_hashId, xhit, yhit,
                                                          cEta, cPhi, cDep)[0];
            BOW[1] = m_distortionsTool->correctSimulation(m_hashId, xhit, yhit,
                                                          cEta, cPhi, cDep)[1];
            xhit = BOW.x();
            yhit = BOW.y();
        }
    }

    float StepX = cEta / numberOfSteps;
    float StepY = cPhi / numberOfSteps;
    float StepZ = cDep / numberOfSteps;

    // check the status of truth information for this SiHit
    // some Truth information is cut for pile up events
    HepMcParticleLink trklink = HepMcParticleLink(phit.trackNumber(),
                                                  p_eventId);
    SiCharge::Process hitproc = SiCharge::track;
    if (phit.trackNumber() != 0) {
        if (!trklink.isValid()) {
            hitproc = SiCharge::cut_track;
        }
    }

    float dstep = -0.5;
    for (int istep = 0; istep < numberOfSteps; ++istep) {
        dstep += 1.0;
        float z1 = zhit + StepZ * dstep;// (static_cast<float>(istep)+0.5) ;

        // For charge trapping
        // This will be the position of the deposited charge
        // double xEta1 = xEta +  stepEta * (istep + 0.5);
        // double xPhi1 = xPhi +  stepPhi * (istep + 0.5);
        // double depD  = xDep +  stepDep * (istep + 0.5);
        // Distance between charge and readout side.  p_design->readoutSide() is
        // +1 if readout side is in +ve depth axis direction and visa-versa.
        // double spess = 0.5 * sensorThickness - p_design->readoutSide() *
        // depD;
        // if (spess<0) spess=0;

        // Distance between charge and readout side. p_design->readoutSide() is
        // +1 if readout side is in +ve depth axis direction and visa-versa.
        float zReadout = 0.5 * sensorThickness - p_design->readoutSide() * z1;
        double spess = zReadout;

        if (m_doHistoTrap) {
            h_depD->Fill(z1);
            h_spess->Fill(spess);
        }


        float tdrift = DriftTime(zReadout);  // !< tdrift: perpandicular drift
                                             // time
        if (tdrift > -2.0000002 && tdrift < -1.9999998) {
            ATH_MSG_DEBUG("Checking for rounding errors in compression");
            if ((fabs(z1) - 0.5 * sensorThickness) < 0.000010) {
                ATH_MSG_DEBUG(
                    "Rounding error found attempting to correct it. z1 = " <<
                    std::fixed << std::setprecision(8) << z1);
                if (z1 < 0.0) {
                    z1 = 0.0000005 - 0.5 * sensorThickness;
                } // set new coordinate to be 0.5nm inside wafer volume.
                else {
                    z1 = 0.5 * sensorThickness - 0.0000005;
                } // set new coordinate to be 0.5nm inside wafer volume.
                zReadout = 0.5 * sensorThickness - p_design->readoutSide() * z1;
                tdrift = DriftTime(zReadout);
                if (tdrift > -2.0000002 && tdrift < -1.9999998) {
                    ATH_MSG_WARNING("Attempt failed. Making no correction.");
                }
                else {
                    ATH_MSG_DEBUG("Correction Successful! z1 = " <<
                        std::fixed << std::setprecision(8) << z1 <<
                        ", zReadout = " << zReadout << ", tdrift = " << tdrift);
                }
            }
            else {
                ATH_MSG_DEBUG("No rounding error found. Making no correction.");
            }
        }
        if (tdrift > 0.0) {
            float x1 = xhit + StepX * dstep;// (static_cast<float>(istep)+0.5) ;
            float y1 = yhit + StepY * dstep;// (static_cast<float>(istep)+0.5) ;
            y1 += tanLorentz * zReadout; // !< Taking into account the magnetic
                                         // field
            float diffusionSigma = DiffusionSigma(zReadout);

            for (int i = 0; i < m_numberOfCharges; ++i) {
                float rx = CLHEP::RandGaussZiggurat::shoot(m_rndmEngine);
                float xd = x1 + diffusionSigma * rx;
                float ry = CLHEP::RandGaussZiggurat::shoot(m_rndmEngine);
                float yd = y1 + diffusionSigma * ry;

                // For charge trapping with Ramo potential
                double stripPitch = 0.080; // mm
                double dstrip = y1 / stripPitch; // mm
                // need the distance from the nearest strips edge not centre,
                // xtaka = 1/2*stripPitch
                // centre of detector, y1=0, is in the middle of an interstrip
                // gap
                if (dstrip > 0.) {
                    dstrip = dstrip - static_cast<double>(int(dstrip));
                }
                else {
                    dstrip = dstrip - static_cast<double>(int(dstrip)) + 1;
                }

                // now y will be x and z will be y ....just to make sure to
                // confuse everebody
                double yStripDist = dstrip * stripPitch;    // mm
                double y0 = yStripDist; // mm
                double z0 = (sensorThickness - zReadout); // mm

                // -- Charge Trapping
                if (m_doTrapping) {
                    m_doCTrap = false;                                   // Set
                                                                         // false
                                                                         // for
                                                                         // every
                                                                         // iteration
                                                                         // of
                                                                         // the
                                                                         // loop
                    m_doCTrap = m_radDamageSvc->doCTrap(m_hashId, spess);   // To
                                                                            // be
                                                                            // called
                                                                            // once
                                                                            // per
                                                                            // loop:
                                                                            // it
                                                                            // returns
                                                                            // a
                                                                            // bool(true)
                    if (m_doCTrap) { // Prevents double random number shooting
                        if (m_doHistoTrap) {
                            h_zhit->Fill(zhit);
                        }
                        double trap_pos(-999999.), drift_time(-999999.); // FIXME
                                                                         // need
                                                                         // better
                                                                         // default
                                                                         // values
                        if (this->ChargeIsTrapped(spess, trap_pos,
                                                  drift_time)) {
                            if (!m_doRamo) {
                                break;
                            }
                            else {  // if we want to take into account also Ramo
                                    // Potential
                                double Q_m2(0.), Q_m1(0.), Q_00(0.), Q_p1(0.),
                                Q_p2(0.); // Charges

                                dstrip = y1 / stripPitch; // mm
                                // need the distance from the nearest strips
                                // edge not centre, xtaka = 1/2*stripPitch
                                // centre of detector, y1=0, is in the middle of
                                // an interstrip gap
                                if (dstrip > 0.) {
                                    dstrip = dstrip -
                                             static_cast<double>(int(dstrip));
                                }
                                else {
                                    dstrip = dstrip -
                                             static_cast<double>(int(dstrip)) +
                                             1;
                                }

                                // now y will be x and z will be y ....just to
                                // make sure to confuse everebody
                                double yStripDist = dstrip * stripPitch;    // mm
                                double yfin = yStripDist; // mm
                                double zfin = (sensorThickness - trap_pos); // mm

                                m_radDamageSvc->HoleTransport(y0, z0, yfin,
                                                              zfin, Q_m2, Q_m1,
                                                              Q_00, Q_p1, Q_p2);
                                for (int strip = -2; strip <= 2; strip++) {
                                    double ystrip = yd + strip * stripPitch;  //
                                                                              // mm
                                                                              // 
                                                                              // 
                                                                              // 
                                                                              // 
                                                                              // 
                                                                              // 
                                                                              // 
                                                                              // 
                                                                              // <----
                                                                              // CHECK
                                                                              // THIS
                                                                              // QUANTITY
                                    SiLocalPosition position(
                                        m_element->hitLocalToLocal(xd, ystrip));
                                    if (p_design->inActiveArea(position)) {
                                        double charge(0.);
                                        if (strip == -2) {
                                            charge = Q_m2;
                                        }
                                        if (strip == -1) {
                                            charge = Q_m1;
                                        }
                                        if (strip == 0) {
                                            charge = Q_00;
                                        }
                                        if (strip == 1) {
                                            charge = Q_p1;
                                        }
                                        if (strip == 2) {
                                            charge = Q_p2;
                                        }
                                        double time = drift_time;
                                        if (charge != 0.) {
                                            inserter(SiSurfaceCharge(position,
                                                                     SiCharge(
                                                                         q1 *
                                                                         charge,
                                            time, hitproc,
                                                                         trklink)));
                                            continue;
                                        }
                                    }
                                }
                                ATH_MSG_INFO("strip zero charge = " << Q_00); //
                                                                              // debug
                            } // m_doRamo==true
                        } // ChargeIsTrapped()
                    } // m_doCTrap==true
                    else {
                        break;
                    }  // m_doCTrap==false
                } // m_doTrapping==true

                if (!m_doRamo) {
                    SiLocalPosition position(m_element->hitLocalToLocal(xd,
                                                                        yd));
                    if (p_design->inActiveArea(position)) {
                        float sdist = p_design->scaledDistanceToNearestDiode(
                            position);       // !< dist on the surface from the
                                             // hit point to the nearest strip
                                             // (diode)
                        float tsurf = this->SurfaceDriftTime(2.0 * sdist);                      //
                                                                                                // !<
                                                                                                // Surface
                                                                                                // drift
                                                                                                // time
                        float totaltime = (m_tfix > -998.) ? m_tfix : tdrift +
                                          timeOfFlight + tsurf;    // !< Total
                                                                   // drift time
                        // charges(SiSurfaceCharge(position,
                        // SiCharge(q1,totaltime,hitproc,trklink))) ;
                        inserter(SiSurfaceCharge(position, SiCharge(q1,
                                                                    totaltime,
                                                                    hitproc,
                                                                    trklink)));
                        // ATH_MSG_INFO ("Total Time: "<<totaltime<<" tdrift
                        // "<<tdrift<<" timeOfFlight  "<<timeOfFlight<<" tsurf
                        //  "<<tsurf) ;
                    }
                    else {
                        ATH_MSG_VERBOSE(std::fixed << std::setprecision(8) <<
                            "Local position (phi, eta, depth): (" <<
                            position.xPhi() << ", " << position.xEta() <<
                        ", " <<
                            position.xDepth() <<
                            ") of the element is out of active area, charge = "
                                                   <<
                            q1);
                        // ATH_MSG_VERBOSE (
                        // std::fixed<<std::setprecision(8)<<"Local position:
                        // "<<position<<" of the element is out of active area,
                        // charge = "<<q1) ;
                    }
                } // end of loop on charges
            }
        }
    }
    return;
}

bool SCT_SurfaceChargesGenerator::ChargeIsTrapped(double spess,
                                                  double &trap_pos,
                                                  double &drift_time) const {
    bool isTrapped(false);
    double electric_field = m_radDamageSvc->ElectricField(m_hashId, spess);

    if (m_doHistoTrap) {
        double mobChar = m_radDamageSvc->HoleDriftMobility(m_hashId, spess);
        h_efieldz->Fill(spess, electric_field);
        h_efield->Fill(electric_field);
        h_mob_Char->Fill(electric_field, mobChar);
        h_vel->Fill(electric_field, electric_field * mobChar);
    }
    double t_electrode = m_radDamageSvc->TimeToElectrode(m_hashId, spess);
    drift_time = m_radDamageSvc->TrappingTime(m_hashId, spess);
    double z_trap = m_radDamageSvc->TrappingPositionZ(m_hashId, spess);
    trap_pos = spess - z_trap;
    if (m_doHistoTrap) {
        h_drift_time->Fill(drift_time);
        h_t_electrode->Fill(t_electrode);
        h_drift_electrode->Fill(drift_time, t_electrode);
        h_ztrap_tot->Fill(z_trap);
    }
    // -- Calculate if the charge is trapped, and at which distance
    // -- Charge gets trapped before arriving to the electrode
    if (drift_time < t_electrode) {
        isTrapped = true;
        ATH_MSG_INFO("drift_time: " << drift_time << " t_electrode:  " <<
            t_electrode << " spess " << spess);
        ATH_MSG_INFO("z_trap: " << z_trap);
        if (m_doHistoTrap) {
            h_ztrap->Fill(z_trap);
            h_trap_drift_t->Fill(drift_time);
            h_drift1->Fill(spess, drift_time / t_electrode);
            h_gen->Fill(spess, drift_time);
            h_gen1->Fill(spess, z_trap);
            h_gen2->Fill(spess, z_trap / drift_time * t_electrode);
            h_velocity_trap->Fill(electric_field, z_trap / drift_time);
            h_mobility_trap->Fill(electric_field, z_trap / drift_time /
                                  electric_field);
            h_trap_pos->Fill(trap_pos);
        }
    }
    else {
        isTrapped = false;
        if (m_doHistoTrap) {
            double z_trap = m_radDamageSvc->TrappingPositionZ(m_hashId, spess);
            h_no_ztrap->Fill(z_trap);
            h_notrap_drift_t->Fill(drift_time);
        }
    }
    return isTrapped;
}
