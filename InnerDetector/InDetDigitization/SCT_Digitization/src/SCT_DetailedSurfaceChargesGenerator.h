/**
 * Header file for SCT_SurfaceChargesGenerator Class
 * @brief Class to drift the charged hits to the sensor surface for SCT
 * version 1.0a Szymon Gadomski 31.05.2001
 * @author Szymon.Gadomski@cern.ch, Awatif.Belymam@cern.ch, Davide.Costanzo@cern.ch,    
 * tgcornel@nikhef.nl, Grant.Gorfine@cern.ch, Paul.Bell@cern.ch, Jorgen.Dalmau@cern.ch, 
 * This is based on the SCTtest3SurfaceChargesGenerator
 * compared to "test3", changes are all related to interfaces
 * this should work with the new SCT_BarrelModuleSideDesign
 * Compared to "test2" the following have been added in "test3":
 * - a possibility to work with long steps and to smear charge along
 *   the step in smaller steps
 * - Lorentz angle
 * 19/04/2001 -  change of hit class to SiTrackerHit
 * version 1.0 Szymon Gadomski 09/06/2001, compiles with framework
 * 26/07/2001 - changed to work with SiDigitization-00-02-00, tested
 * 20/10/2002 - Awatif Belymam
 * 29/10/2002 - the thickness of sensors is obtained from the objects
 *            - of SCT_ModuleSideDesign type instead from its jobOptions file.
 *            - Changes are done as well in jobOptions files.
 * 06/01/2004 - Everything is now in CLHEP units (mm, ns, MeV)
 * 23/08/2007 - Kondo.Gnanvo@cern.ch           
 *            - Conversion of the SCT_SurfaceChargesGenerator code Al gTool
 */

#ifndef SCT_DIGITIZATION_SCT_DETAILEDSURFACECHARGESGENERATOR_H
#define SCT_DIGITIZATION_SCT_DETAILEDSURFACECHARGESGENERATOR_H

//Inheritance
#include "AthenaBaseComps/AthAlgTool.h"
#include "SCT_Digitization/ISCT_SurfaceChargesGenerator.h"
#include "SCT_ModuleDistortions/ISCT_ModuleDistortionsTool.h"

#include "GaudiKernel/ToolHandle.h"
#include <iostream>

// Charges and hits
#include "InDetSimEvent/SiHit.h"
#include "SiDigitization/SiSurfaceCharge.h"

#include "Identifier/IdentifierHash.h"

// -- do histos
#include "GaudiKernel/ITHistSvc.h"
#include "TH1.h"
#include "TH2.h" 
#include "TProfile.h"
#include "TMath.h"
//#include "TRandom.h"
//#include "TRandom3.h"
#include "TVector.h"
#include "TProfile2D.h"

namespace InDetDD{
  class SiDetectorElement;
}

namespace CLHEP {
  class HepRandomEngine;
}

//class IdentifierHash;
class ISiliconConditionsSvc;
class ISiPropertiesSvc;

class SCT_DetailedSurfaceChargesGenerator : public AthAlgTool, virtual public ISCT_SurfaceChargesGenerator {
 public:

  /**  constructor */
  SCT_DetailedSurfaceChargesGenerator( const std::string& type, const std::string& name, const IInterface* parent ) ;

  /** Destructor */
  virtual ~SCT_DetailedSurfaceChargesGenerator();

  /** AlgTool InterfaceID */
  //static const InterfaceID& interfaceID() ;

  /** AlgTool initialize */
  virtual StatusCode initialize();

  /** AlgTool finalize */
  virtual StatusCode finalize();

private:

  void setComTime(float comTime)                                 {m_comTime = comTime;} 
  void setFixedTime(float fixedTime)                             {m_tfix = fixedTime;} 
  void setCosmicsRun(bool cosmicsRun)                            {m_cosmicsRun = cosmicsRun;}
  void setComTimeFlag(bool useComTime)                           {m_useComTime = useComTime;}      
  void setRandomEngine(CLHEP::HepRandomEngine *rndmEngine)       {m_rndmEngine = rndmEngine;}
  void setDetectorElement(const InDetDD::SiDetectorElement *ele) {m_element = ele;} 

  /** create a list of surface charges from a hit */
  virtual void process(const TimedHitPtr<SiHit> & phit, const ISiSurfaceChargesInserter& inserter) const;
  virtual void processFromTool(const SiHit* phit, const ISiSurfaceChargesInserter& inserter, float p_eventTime, unsigned short p_eventId) const;
  void processSiHit(const SiHit& phit, const ISiSurfaceChargesInserter& inserter, const float eventTime, const unsigned short eventID) const;
  
  // some diagnostics methods are needed here too
  float DriftTime(float zhit) const;           //!< calculate drift time perpandicular to the surface for a charge at distance zhit from mid gap
  float DiffusionSigma(float zhit) const;      //!< calculate diffusion sigma from a gaussian dist scattered charge
  float SurfaceDriftTime(float ysurf) const;   //!< Calculate of the surface drift time 
  float MaxDriftTime() const;                  //!< max drift charge equivalent to the detector thickness
  float MaxDiffusionSigma() const;             //!< max sigma diffusion 

  // methods for Taka Kondos's new charge drift m
  void initTransportModel();
  void EField(double x, double y, double &Ex, double &Ey) const;
  double induced (int istrip, double x, double y) const;
  void init_mud_e(double T) ;
  void init_mud_h(double T) ;
  void initTransport();
  void initExEyArray();
  void initPotentialValue();
  bool electron( double x_e, double y_e, double &vx_e, double &vy_e, double &D_e) const;
  bool hole( double x_h, double y_h, double &vx_h, double &vy_h, double &D_h) const;
  double mud_e(double E) const;
  double mud_h(double E) const;
  double ExValue150(int& ix, int& iy);
  double EyValue150(int& ix, int& iy);
  double GetPotentialValue(int& ix, int& iy);
  void holeTransport(double & x0, double & y0, double* Q_m2, double* Q_m1, double* Q_00, double* Q_p1, double* Q_p2 ) const;
  void electronTransport(double & x0, double & y0, double* Q_m2, double* Q_m1, double* Q_00, double* Q_p1, double* Q_p2 ) const;
  double inducedCharge (int & istrip, double & x, double & y, double & t) const;

  int m_numberOfCharges;           //!< number of charges
  float m_smallStepLength;         //!< max internal step along the larger G4 step

  /** related to the surface drift */
  float m_tSurfaceDrift;          //!< Surface drift time     
  float m_tHalfwayDrift;          //!< Surface drift time
  float m_distInterStrip ;        //!< Inter strip distance normalized to 1
  float m_distHalfInterStrip ;    //!< Half way distance inter strip

  char m_SurfaceDriftFlag;         //!< surface drift ON/OFF   

  float m_tfix;       //!< fixed time
  float m_tsubtract;  //!< subtract drift time from mid gap 

  float m_comTime ;       //!< use cosmics time for timing
  bool  m_useComTime ;    //!< Flag to decide the use of cosmics time for timing
  bool  m_cosmicsRun ;    //!< Flag to set Cosmics Run
  bool  m_doDistortions ; //!< Flag to set Distortions

  // -- Charge Trapping -- //
  bool   m_doHistoTrap ;   //!< Flag that allows to fill the histograms
  bool   m_doTrapping ;    //!< Flag to set Charge Trapping
  double m_Fluence;        //!< Fluence used for Charge Trapping

  // -- Histograms
  ITHistSvc  *m_thistSvc; 
  TProfile   *h_efieldz;
  TProfile2D *h_yzRamo;
  TProfile2D *h_yzEfield;
  TProfile2D *h_yEfield;
  TProfile2D *h_zEfield;

  IdentifierHash m_hashId;

  //TK model settings
  int m_chargeDriftModel; //!< 0 default SCT model, 1 eh transport, 2 use of fixed charge map 
  int m_eFieldModel;      //!< 0 uniform E-field model, 1 flat diode model, 2 FEM solutions

  //------TK parameters given externally by jobOptions ------------------
  double m_depletionVoltage;
  double m_biasVoltage;
  double m_magneticField;
  double m_sensorTemperature;
  double m_transportTimeStep;
  double m_transportTimeMax;
  
  //------TK parameters mostly fixed but can be changed externally  ------------
  double m_bulk_depth;
  double m_strip_pitch;
  double m_depletion_depth;
  double m_y_origin_min;
  
  //------TK parameters for e, h transport --------------------------------
  double m_kB ;
  double m_e ;
  double m_vs_e;
  double m_Ec_e ;
  double m_vs_h;
  double m_Ec_h ;
  double m_diffusion;
  double m_beta_e ;
  double m_beta_h ;
  double m_theta;
  double m_driftMobility;
  double m_tanLA;

  //------TK arrays of FEM analysis -----------------------------------
  double m_PotentialValue[81][115];
  double m_ExValue150[17][115];
  double m_EyValue150[17][115];

  //------TK parameters for charge map, uses file storage of map.... 
  double m_stripCharge[5][81][285][50];
  int    m_stripCharge_ixmax;
  int    m_stripCharge_iymax;
  double m_stripCharge_dx;
  double m_stripCharge_dy;
  
  //ToolHandles
  ToolHandle<ISCT_ModuleDistortionsTool> m_distortionsTool;
  //ServiceHandles
  ServiceHandle<ISiliconConditionsSvc> m_siConditionsSvc;
  ServiceHandle<ISiPropertiesSvc> m_siPropertiesSvc;

  const InDetDD::SiDetectorElement * m_element;   
  CLHEP::HepRandomEngine *           m_rndmEngine;          //!< Random Engine
  std::string                        m_rndmEngineName;      //!< name of random engine, actual pointer in SiDigitization

};

#endif // SCT_DETAILEDSURFACECHARGESGENERATOR_H


 
