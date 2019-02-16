#include "TripletTrackFinder/ReadRDO.h"
#include "TripletTrackFinder/SiDet.h"
#include "TripletTrackFinder/Track.h"
#include "TripletTrackFinder/Frame.h"

#include "GaudiKernel/MsgStream.h"
#include "GaudiKernel/ServiceHandle.h"
#include "StoreGate/StoreGateSvc.h"

#include "EventInfo/EventInfo.h"
#include "EventInfo/EventType.h"
#include "EventInfo/EventID.h"

#include "InDetPrepRawData/PixelClusterContainer.h"
#include "InDetIdentifier/PixelID.h"

#include "InDetPrepRawData/SCT_ClusterContainer.h"
#include "InDetIdentifier/SCT_ID.h"

#include "TrkTruthData/PRD_MultiTruthCollection.h"
#include "HepMC/GenParticle.h"
#include "HepMC/GenVertex.h"

#include "GeneratorObjects/McEventCollection.h"

//#include "xAODTracking/Vertex.h"
//#include "xAODTracking/TrackingPrimitives.h"
//#include "EventPrimitives/EventPrimitivesToStringConverter.h"

/*#include "xAODTracking/TrackMeasurementValidation.h"
#include "xAODTracking/TrackMeasurementValidationContainer.h"
#include "xAODTracking/TrackMeasurementValidationAuxContainer.h"*/
#include "CxxUtils/make_unique.h"
#include <algorithm>
#include <iterator>

/////////////////////////////////////////////////////////
/*******************************************************
 * Constructor with parameters
 *******************************************************/
ReadRDO::ReadRDO(const std::string& name, ISvcLocator* pSvcLocator):
AthAlgorithm(name, pSvcLocator),
m_xaodout("InDetTrackParticles"),
m_xauxout(""),
m_PixelHelper(0),
m_SCTHelper(0),
m_selection_cuts(0),
m_phiBarrel_cut(0),m_zBarrel_cut(0),m_dPhi2_cut(0),m_dZ2_cut(0),m_ptmin_cut(0),m_etamax_cut(0),m_zVtx_cut(0),m_hitConst(0),m_MSConst(0),m_sigmaKappaMax(0),
m_truthTree(0),
m_barcode(0),m_pdg(0),m_status(0),m_mass(0),m_ptT(0),m_pT(0),m_radT(0),m_kapT(0),m_thetaT(0),m_etaT(0),m_phiT(0),m_Vx(0),m_Vy(0),m_Vz(0),m_dcaT(0),
f_heavyBaryon(0),f_heavyMeson(0),
m_tid(0),m_x1(0),m_y1(0),m_z1(0),m_phi1(0),m_phi1Mod(0),m_eta1Mod(0),m_x2(0),m_y2(0),m_z2(0),m_phi2(0),m_phi2Mod(0),m_eta2Mod(0),m_x3(0),m_y3(0),m_z3(0),m_phi3(0),m_phi3Mod(0),m_eta3Mod(0),
r_rad013(0),r_kap013(0),r_Pt_n(0),r_P_n(0),r_R01(0),r_R03(0),r_R13(0),r_Cross0103(0),r_Phi1_bend(0),r_Phi3_bend(0),
r_S1(0),r_S3(0),r_S13(0),r_Theta13(0),r_Eta13(0),r_Z013(0),r_Hbml(0),r_Kbml(0),r_Phi013(0),
r_Phi13(0),r_Z13(0),r_Kappa_pull(0),r_Dphi2(0),r_Dz2(0),r_Kappa(0),r_Radius(0),r_Pt(0),r_H(0),r_K(0),r_DCA(0),r_Phi_DCA(0),r_Theta(0),r_Eta(0),r_Z0(0),
m_recTree(0),
m_event(0),
m_frame(0),m_Ntriplets(0),m_hitCount(0),m_flg_phi_barr(0),m_flg_isTriplet(0),m_flg_match(0),mf_heavyBaryon(0),mf_heavyMeson(0),m_Tid(0),
match_barcode(0),match_layer(0),match_pdg(0),match_status(0),match_mass(0),match_ptT(0),match_pT(0),match_radT(0),match_kapT(0),match_thetaT(0),match_etaT(0),match_phiT(0),match_Vx(0),match_Vy(0),match_Vz(0),match_dcaT(0),
m_rad013(0),m_kap013(0),m_Pt_n(0),m_P_n(0),m_Charge(0),m_R01(0),m_R03(0),m_R13(0),m_Cross0103(0),m_Phi1_bend(0),m_Phi3_bend(0),
m_S1(0),m_S3(0),m_S13(0),m_Theta13(0),m_Eta13(0),m_Z013(0),m_Hbml(0),m_Kbml(0),m_Phi013(0),
m_X1(0),m_X2(0),m_X3(0),m_Y1(0),m_Y2(0),m_Y3(0),m_Z1(0),m_Z2(0),m_Z3(0),m_Phi1(0),m_Phi2(0),m_Phi3(0),
m_X12(0),m_X13(0),m_X23(0),m_Y12(0),m_Y13(0),m_Y23(0),m_Z13(0),
m_Phi13(0),m_Kappa_pull(0),m_Dz2(0),m_Dphi2(0),m_phi_slope(0),m_delta_phi(0),m_tau_half_bml(0),
m_chord31(0),m_kappa_bml(0),m_radius_bml(0),m_pt_bml(0),m_pt_inv_bml(0),
m_s31_bml(0),m_stot_bml(0),m_s01_bml(0),m_slope_l_bml(0),m_theta_bml(0),m_eta_bml(0),m_z0_bml(0),
m_d12(0),m_d13(0),m_d23(0),m_cross_prod(0),m_kappa(0),m_radius(0),m_pt(0),m_pt_inv(0),
m_det(0),m_h(0),m_k(0),m_dca(0),m_phi_dca(0),m_chord_l(0),m_tau_half(0),m_phi_half(0),
m_s31(0),m_stot(0),m_s01(0),m_slope_l(0),m_theta(0),m_eta(0),
d0(0),z0(0),phi0(0),theta(0),qOverP(0)
{
  //add constructor properties
  //Configuration keys
  //declare the m_clustercontainer data member as a configurable property for your algorithm
  // i.e. m_clustercontainer can be configured in the JobOption file to different string values
  //  using the key "SiClusterContainer" and its default value is set to PixelClusters.
  declareProperty("SiClusterContainer", m_clustercontainer/* = "PixelClusters"*/);
  declareProperty("PRD_MultiTruth", m_multiTruth = "PRD_MultiTruthSCT");
  declareProperty("Debug",		 m_debug = false);
  declareProperty("McEventInfoKey", 	m_infokey= "McEventInfo");
  declareProperty("TruthEventKey", 	m_truthkey= "TruthEvent");
  
  /*declareProperty("Write_xAOD",		m_writexAOD = False);*/
}

void ReadRDO::fill(xAOD::TrackParticle &tp)
{
	tp.setDefiningParameters( d0, z0, phi0, theta, qOverP );
	return;
}

void ReadRDO::print( const xAOD::TrackParticle &tp)
{
	std::cout << "d0 = " << tp.d0() << ", z0 = " << tp.z0() << ", phi0 = " << tp.phi0() << ", theta = " << tp.theta() << ", qOverP = " << tp.qOverP() << std::endl;
	return;
}
/*******************************************************
 * Initialize method :
 *******************************************************/
StatusCode ReadRDO::initialize()
{
  // Print where you are
  ATH_MSG_INFO ("initialize()");
  
  // Get the Storegate collection
  StatusCode sc = service("StoreGateSvc", m_sgSvc);
  if (sc.isFailure()) {
    ATH_MSG_ERROR( "Could not find StoreGateSvc" );
    return sc;
  }
//Automatically set the Aux names
  if(!m_xaodout.name().empty() && m_xauxout.name().empty())
  {
    m_xauxout = SG::WriteHandle<xAOD::TrackParticleAuxContainer>(m_xaodout.name() + "Aux.");
  }
  // Check if one can get a handle over the PixelID or SCT_ID helper
  if (m_clustercontainer == "PixelClusters")ATH_CHECK( detStore()->retrieve(m_PixelHelper, "PixelID") );
  else if (m_clustercontainer == "SCT_Clusters")ATH_CHECK( detStore()->retrieve(m_SCTHelper, "SCT_ID") );
  else 
  {
	ATH_MSG_ERROR ("******* Could not retrieve Cluster Container : " << m_clustercontainer << "*******");
	return StatusCode::FAILURE;
  }
  
  //! Check if you can get a handle over the Histogram Service
  ServiceHandle<ITHistSvc> histSvc("THistSvc",name());
  CHECK( histSvc.retrieve() );
  //! Tree with selection cuts
  m_selection_cuts = new TTree("m_selection_cuts","selection_cuts");
  CHECK(histSvc->regTree("/MYSTREAM/selection_cuts", m_selection_cuts));
  m_selection_cuts->Branch("phiBarrel_cut", &m_phiBarrel_cut , "phiBarrel_cut/D");
  m_selection_cuts->Branch("zBarrel_cut", &m_zBarrel_cut , "zBarrel_cut/D");
  m_selection_cuts->Branch("dPhi2_cut", &m_dPhi2_cut , "dPhi2_cut/D");
  m_selection_cuts->Branch("dZ2_cut", &m_dZ2_cut , "dZ2_cut/D");
  m_selection_cuts->Branch("ptmin_cut", &m_ptmin_cut , "ptmin_cut/D");
  m_selection_cuts->Branch("etamax_cut", &m_etamax_cut , "etamax_cut/D");
  m_selection_cuts->Branch("zVtx_cut", &m_zVtx_cut , "zVtx_cut/D");
  m_selection_cuts->Branch("hitConst", &m_hitConst , "hitConst/D");
  m_selection_cuts->Branch("MSConst", &m_MSConst , "MSConst/D");
  m_selection_cuts->Branch("sigmaKappaMax", &m_sigmaKappaMax , "sigmaKappaMax/D");
  
  //! Truth Tree
  m_truthTree = new TTree("m_truthTree", "truthTree");
  CHECK(histSvc->regTree("/MYSTREAM/truthTree", m_truthTree));
  m_truthTree->Branch("eventNo", &m_event, "eventNo/i");
  m_truthTree->Branch("barcode", &m_barcode);
  m_truthTree->Branch("pdg", &m_pdg);
  m_truthTree->Branch("status", &m_status);
  m_truthTree->Branch("mass", &m_mass);
  m_truthTree->Branch("pt", &m_ptT);
  m_truthTree->Branch("p", &m_pT);
  m_truthTree->Branch("rad", &m_radT);
  m_truthTree->Branch("kap", &m_kapT);
  m_truthTree->Branch("theta", &m_thetaT);
  m_truthTree->Branch("eta", &m_etaT);
  m_truthTree->Branch("phi", &m_phiT);
  m_truthTree->Branch("Vx", &m_Vx);
  m_truthTree->Branch("Vy", &m_Vy);
  m_truthTree->Branch("Vz", &m_Vz);
  m_truthTree->Branch("dca", &m_dcaT);
  m_truthTree->Branch("f_Hbaryon", &f_heavyBaryon);
  m_truthTree->Branch("f_Hmeson", &f_heavyMeson);
  m_truthTree->Branch("r_tid", &m_tid);
  m_truthTree->Branch("r_x1", &m_x1);
  m_truthTree->Branch("r_y1", &m_y1);
  m_truthTree->Branch("r_z1", &m_z1);
  m_truthTree->Branch("r_phi1", &m_phi1);
  m_truthTree->Branch("r_phi1Mod", &m_phi1Mod);
  m_truthTree->Branch("r_eta1Mod", &m_eta1Mod);
  m_truthTree->Branch("r_x2", &m_x2);
  m_truthTree->Branch("r_y2", &m_y2);
  m_truthTree->Branch("r_z2", &m_z2);
  m_truthTree->Branch("r_phi2", &m_phi2);
  m_truthTree->Branch("r_phi2Mod", &m_phi2Mod);
  m_truthTree->Branch("r_eta2Mod", &m_eta2Mod);
  m_truthTree->Branch("r_x3", &m_x3);
  m_truthTree->Branch("r_y3", &m_y3);
  m_truthTree->Branch("r_z3", &m_z3);
  m_truthTree->Branch("r_phi3", &m_phi3); 
  m_truthTree->Branch("r_phi3Mod", &m_phi3Mod);
  m_truthTree->Branch("r_eta3Mod", &m_eta3Mod);
  m_truthTree->Branch("r_rad013", &r_rad013);
  m_truthTree->Branch("r_kap013", &r_kap013);
  m_truthTree->Branch("r_Pt_n", &r_Pt_n);
  m_truthTree->Branch("r_P_n", &r_P_n);
  m_truthTree->Branch("r_R01", &r_R01);
  m_truthTree->Branch("r_R03", &r_R03);
  m_truthTree->Branch("r_R13", &r_R13);
  m_truthTree->Branch("r_Cross0103", &r_Cross0103);
  m_truthTree->Branch("r_Phi1_bend", &r_Phi1_bend);
  m_truthTree->Branch("r_Phi3_bend", &r_Phi3_bend);
  m_truthTree->Branch("r_S1", &r_S1);
  m_truthTree->Branch("r_S3", &r_S3);
  m_truthTree->Branch("r_S13", &r_S13);
  m_truthTree->Branch("r_Theta13", &r_Theta13);
  m_truthTree->Branch("r_Eta13", &r_Eta13);
  m_truthTree->Branch("r_Z013", &r_Z013);
  m_truthTree->Branch("r_Hbml", &r_Hbml);
  m_truthTree->Branch("r_Kbml", &r_Kbml);
  m_truthTree->Branch("r_Phi013", &r_Phi013);
  m_truthTree->Branch("r_Phi13",  &r_Phi13);
  m_truthTree->Branch("r_Z13",    &r_Z13);
  m_truthTree->Branch("r_Kappa_pull",  &r_Kappa_pull);
  m_truthTree->Branch("r_Dphi2",  &r_Dphi2);
  m_truthTree->Branch("r_Dz2",    &r_Dz2);
  m_truthTree->Branch("r_Kappa",  &r_Kappa);
  m_truthTree->Branch("r_Radius", &r_Radius);
  m_truthTree->Branch("r_Pt",     &r_Pt);
  m_truthTree->Branch("r_H",      &r_H);
  m_truthTree->Branch("r_K",      &r_K);
  m_truthTree->Branch("r_DCA",    &r_DCA);
  m_truthTree->Branch("r_Phi_DCA",&r_Phi_DCA);
  m_truthTree->Branch("r_Theta",  &r_Theta);
  m_truthTree->Branch("r_Eta",    &r_Eta);
  m_truthTree->Branch("r_Z0",     &r_Z0);
  //! Reconstruction Tree 
  m_recTree = new TTree("m_recTree", "recTree");
  CHECK(histSvc->regTree("/MYSTREAM/recTree", m_recTree));
  m_recTree->Branch("event", &m_event, "event/i");
  m_recTree->Branch("frameId", &m_frame, "frameId/i");
  m_recTree->Branch("Ntriplets", &m_Ntriplets, "Ntriplets/i");
  m_recTree->Branch("hitCount", &m_hitCount);
  m_recTree->Branch("flag_phiBarr", &m_flg_phi_barr);
  m_recTree->Branch("flag_isTriplet", &m_flg_isTriplet);
  m_recTree->Branch("flag_match", &m_flg_match);
  m_recTree->Branch("M_fHbaryon", &mf_heavyBaryon);
  m_recTree->Branch("M_fHmeson", &mf_heavyMeson);
  m_recTree->Branch("Tid", &m_Tid);
  //! matched variables
  m_recTree->Branch("M_barcode", &match_barcode);
  m_recTree->Branch("M_layer", &match_layer);
  m_recTree->Branch("M_pdg", &match_pdg);
  m_recTree->Branch("M_status", &match_status);
  m_recTree->Branch("M_mass", &match_mass);
  m_recTree->Branch("M_pt", &match_ptT);
  m_recTree->Branch("M_p", &match_pT);
  m_recTree->Branch("M_rad", &match_radT);
  m_recTree->Branch("M_kap", &match_kapT);
  m_recTree->Branch("M_theta", &match_thetaT);
  m_recTree->Branch("M_eta", &match_etaT);
  m_recTree->Branch("M_phi", &match_phiT);
  m_recTree->Branch("M_Vx", &match_Vx);
  m_recTree->Branch("M_Vy", &match_Vy);
  m_recTree->Branch("M_Vz", &match_Vz);
  m_recTree->Branch("M_dca", &match_dcaT);
  
  //!another method(Andre's calculation)
  m_recTree->Branch("rad013", &m_rad013);
  m_recTree->Branch("kap013", &m_kap013);
  m_recTree->Branch("Pt_n", &m_Pt_n);
  m_recTree->Branch("P_n", &m_P_n);
  m_recTree->Branch("Charge", &m_Charge);
  m_recTree->Branch("R01", &m_R01);
  m_recTree->Branch("R03", &m_R03);
  m_recTree->Branch("R13", &m_R13);
  m_recTree->Branch("Cross0103", &m_Cross0103);
  m_recTree->Branch("Phi1_bend", &m_Phi1_bend);
  m_recTree->Branch("Phi3_bend", &m_Phi3_bend);
  m_recTree->Branch("S1", &m_S1);
  m_recTree->Branch("S3", &m_S3);
  m_recTree->Branch("S13", &m_S13);
  m_recTree->Branch("Theta13", &m_Theta13);
  m_recTree->Branch("Eta13", &m_Eta13);
  m_recTree->Branch("Z013", &m_Z013);
  m_recTree->Branch("Hbml", &m_Hbml);
  m_recTree->Branch("Kbml", &m_Kbml);
  m_recTree->Branch("Phi013", &m_Phi013);

  //!previous method
  m_recTree->Branch("X1", &m_X1);
  m_recTree->Branch("X2", &m_X2);
  m_recTree->Branch("X3", &m_X3);
  m_recTree->Branch("Y1", &m_Y1);
  m_recTree->Branch("Y2", &m_Y2);
  m_recTree->Branch("Y3", &m_Y3);
  m_recTree->Branch("Z1", &m_Z1);
  m_recTree->Branch("Z2", &m_Z2);
  m_recTree->Branch("Z3", &m_Z3);
  m_recTree->Branch("Phi1", &m_Phi1);
  m_recTree->Branch("Phi2", &m_Phi2);
  m_recTree->Branch("Phi3", &m_Phi3);
  m_recTree->Branch("X12", &m_X12);
  m_recTree->Branch("X13", &m_X13);
  m_recTree->Branch("X23", &m_X23);
  m_recTree->Branch("Y12", &m_Y12);
  m_recTree->Branch("Y13", &m_Y13);
  m_recTree->Branch("Y23", &m_Y23);
  m_recTree->Branch("Z13", &m_Z13);
  m_recTree->Branch("Phi13", &m_Phi13);
  m_recTree->Branch("kappa_pull", &m_Kappa_pull);
  m_recTree->Branch("dz2", &m_Dz2);
  m_recTree->Branch("dphi2", &m_Dphi2);
  m_recTree->Branch("phi_slope", &m_phi_slope);
  m_recTree->Branch("delta_phi", &m_delta_phi);
  m_recTree->Branch("tau_half_bml", &m_tau_half_bml);
  m_recTree->Branch("chord31", &m_chord31);
  m_recTree->Branch("kappa_bml", &m_kappa_bml);
  m_recTree->Branch("radius_bml", &m_radius_bml);
  m_recTree->Branch("pt_bml", &m_pt_bml);
  m_recTree->Branch("pt_inv_bml", &m_pt_inv_bml);
  m_recTree->Branch("s31_bml", &m_s31_bml);
  m_recTree->Branch("stot_bml", &m_stot_bml);
  m_recTree->Branch("s01_bml", &m_s01_bml);
  m_recTree->Branch("slope_l_bml", &m_slope_l_bml);
  m_recTree->Branch("theta_bml", &m_theta_bml);
  m_recTree->Branch("eta_bml", &m_eta_bml);
  m_recTree->Branch("z0_bml", &m_z0_bml);
  m_recTree->Branch("d12", &m_d12);
  m_recTree->Branch("d13", &m_d13);
  m_recTree->Branch("d23", &m_d23);
  m_recTree->Branch("cross_prod", &m_cross_prod);
  m_recTree->Branch("radius", &m_radius);
  m_recTree->Branch("kappa", &m_kappa);
  m_recTree->Branch("pt", &m_pt);
  m_recTree->Branch("pt_inv", &m_pt_inv);
  m_recTree->Branch("det", &m_det);
  m_recTree->Branch("h", &m_h);
  m_recTree->Branch("k", &m_k);
  m_recTree->Branch("dca", &m_dca);
  m_recTree->Branch("phi_dca", &m_phi_dca);
  m_recTree->Branch("chord_l", &m_chord_l);
  m_recTree->Branch("tau_half", &m_tau_half);
  m_recTree->Branch("phi_half", &m_phi_half);
  m_recTree->Branch("s31", &m_s31);
  m_recTree->Branch("stot", &m_stot);
  m_recTree->Branch("s01", &m_s01);
  m_recTree->Branch("slope_l", &m_slope_l);
  m_recTree->Branch("theta", &m_theta);
  m_recTree->Branch("eta", &m_eta);
  m_recTree->Branch("z0", &m_z0);
  
 
  Frame fr(0);
  m_phiBarrel_cut=fr.phi_barrel_cut;
  m_zBarrel_cut=fr.z_barrel_cut;
  m_dPhi2_cut=fr.dphi2_barrel_cut;
  m_dZ2_cut=fr.dz2_barrel_cut;
  m_ptmin_cut=fr.pt_min;
  m_etamax_cut=fr.eta_max;
  m_zVtx_cut=fr.z0_max;
  m_hitConst=fr.hit_const;
  m_MSConst=fr.MS_const;
  m_sigmaKappaMax=fr.sigma_kmax;
  if (m_selection_cuts->Fill() == -1) 
  {
	   ATH_MSG_WARNING("Error writing selection cuts Tree");
  }
	
  return StatusCode::SUCCESS;
}

/******************************************************
 * Execute method:
 ******************************************************/
StatusCode ReadRDO::execute()
{
  // Print where you are
  ATH_MSG_INFO ("executing ReadRDO");

  /*if(m_writexAOD)
  {
	// Create the xAOD container and its auxiliary store:
	xAOD::TrackMeasurementValidationContainer* xaod = new xAOD::TrackMeasurementValidationContainer();
	CHECK( evtStore()->record( xaod, m_clustercontainer ) );
	xAOD::TrackMeasurementValidationAuxContainer* aux = new xAOD::TrackMeasurementValidationAuxContainer();
	CHECK( evtStore()->record( aux, m_clustercontainer + "Aux." ) );
	xaod->setStore( aux );
  }*/
  
  //! Get EventInfo object
  //clear data
  m_barcode.clear();
  m_pdg.clear();
  m_status.clear();
  m_mass.clear();
  m_ptT.clear();
  m_pT.clear();
  m_radT.clear();
  m_kapT.clear();
  m_thetaT.clear();
  m_etaT.clear();
  m_phiT.clear();
  m_Vx.clear();
  m_Vy.clear();
  m_Vz.clear();
  m_dcaT.clear();
  f_heavyBaryon.clear();
  f_heavyMeson.clear();
  m_tid.clear();
  m_x1.clear();
  m_y1.clear();
  m_z1.clear();
  m_phi1.clear();
  m_phi1Mod.clear();
  m_eta1Mod.clear();
  m_x2.clear();
  m_y2.clear();
  m_z2.clear();
  m_phi2.clear();
  m_phi2Mod.clear();
  m_eta2Mod.clear();
  m_x3.clear();
  m_y3.clear();
  m_z3.clear();
  m_phi3.clear();
  m_phi3Mod.clear();
  m_eta3Mod.clear();
  r_rad013.clear();
  r_kap013.clear();
  r_Pt_n.clear();
  r_P_n.clear();
  r_R01.clear();
  r_R03.clear();
  r_R13.clear();
  r_Cross0103.clear();
  r_Phi1_bend.clear();
  r_Phi3_bend.clear();
  r_S1.clear();
  r_S3.clear();
  r_S13.clear();
  r_Theta13.clear();
  r_Eta13.clear();
  r_Z013.clear();
  r_Hbml.clear();
  r_Kbml.clear();
  r_Phi013.clear();
  r_Phi13.clear();
  r_Z13.clear();
  r_Kappa_pull.clear();
  r_Dphi2.clear();
  r_Dz2.clear();
  r_Kappa.clear();
  r_Radius.clear();
  r_Pt.clear();
  r_H.clear();
  r_K.clear();
  r_DCA.clear();
  r_Phi_DCA.clear();
  r_Theta.clear();
  r_Eta.clear();
  r_Z0.clear();
  m_event = 0;   
  m_frame = 0;
  m_Ntriplets = 0;
  m_hitCount.clear();
  m_flg_phi_barr.clear();
  m_flg_isTriplet.clear();
  m_flg_match.clear();
  mf_heavyBaryon.clear();
  mf_heavyMeson.clear();
  m_Tid.clear();

//! matched variable
  match_barcode.clear();
  match_layer.clear();
  match_pdg.clear();
  match_status.clear();
  match_mass.clear();
  match_ptT.clear();
  match_pT.clear();
  match_radT.clear();
  match_kapT.clear();
  match_thetaT.clear();
  match_etaT.clear();
  match_phiT.clear();
  match_Vx.clear();
  match_Vy.clear();
  match_Vz.clear();
  match_dcaT.clear();
  
//! another method(Andre's Calulation)
  m_rad013.clear();
  m_kap013.clear();
  m_Pt_n.clear();
  m_P_n.clear();
  m_Charge.clear();
  m_R01.clear();
  m_R03.clear();
  m_R13.clear();
  m_Cross0103.clear();
  m_Phi1_bend.clear();
  m_Phi3_bend.clear();
  m_S1.clear();
  m_S3.clear();
  m_S13.clear();
  m_Theta13.clear();
  m_Eta13.clear();
  m_Z013.clear();
  m_Hbml.clear();
  m_Kbml.clear();
  m_Phi013.clear();
//! ........
  m_X1.clear();
  m_X2.clear();
  m_X3.clear();
  m_Y1.clear();
  m_Y2.clear();
  m_Y3.clear();
  m_Z1.clear();
  m_Z2.clear();
  m_Z3.clear();
  m_Phi1.clear();
  m_Phi2.clear();
  m_Phi3.clear();
  m_X12.clear();
  m_X13.clear();
  m_X23.clear();
  m_Y12.clear();
  m_Y13.clear();
  m_Y23.clear();
  m_Z13.clear();
  m_Phi13.clear();
  m_Kappa_pull.clear();
  m_Dz2.clear();
  m_Dphi2.clear();
  m_phi_slope.clear();
  m_delta_phi.clear();
  m_tau_half_bml.clear();
  m_chord31.clear();
  m_kappa_bml.clear();
  m_radius_bml.clear();
  m_pt_bml.clear();
  m_pt_inv_bml.clear();
  m_s31_bml.clear();
  m_stot_bml.clear();
  m_s01_bml.clear();
  m_slope_l_bml.clear();
  m_theta_bml.clear();
  m_eta_bml.clear();
  m_z0_bml.clear();
  m_d12.clear();
  m_d13.clear();
  m_d23.clear();
  m_cross_prod.clear();
  m_radius.clear();
  m_kappa.clear();
  m_pt.clear();
  m_pt_inv.clear();
  m_det.clear();
  m_h.clear();
  m_k.clear();
  m_dca.clear();
  m_phi_dca.clear();
  m_chord_l.clear();
  m_tau_half.clear();
  m_phi_half.clear();
  m_s31.clear();
  m_stot.clear();
  m_s01.clear();
  m_slope_l.clear();
  m_theta.clear();
  m_eta.clear();
  m_z0.clear();
    //Load event info
   const EventInfo * mcInfoptr;
   if ( m_sgSvc->retrieve(mcInfoptr, m_infokey).isFailure() ) {
     ATH_MSG_ERROR( "Could not retrieve EventInfo" );
     return StatusCode::FAILURE;
   } else{
     m_event = mcInfoptr->event_ID()->event_number();
 
     ATH_MSG_INFO( " event: " << m_event );
   }
   //!Load Truthevent
   int id_pdg, nq1, nq2, nq3;
   double tmp_eta, tmp_phi;//! TODO: get eta and phi for truth

   std::vector<int> tmp_Hbaryon_pid;
   std::vector<int> tmp_Hbaryon_eta;
   std::vector<int> tmp_Hbaryon_phi;
   std::vector<int> tmp_Hmeson_pid;
   std::vector<int> tmp_Hmeson_eta;
   std::vector<int> tmp_Hmeson_phi;
   const McEventCollection * mcEventptr;
   if ( m_sgSvc->retrieve(mcEventptr, m_truthkey).isFailure() ) {
     ATH_MSG_ERROR( "Could not retrieve McEventCollection" );
     return StatusCode::FAILURE;
   } else{
	
	McEventCollection::const_iterator itr;
        for (itr = mcEventptr->begin(); itr!=mcEventptr->end(); ++itr) 
        {
        	HepMC::GenEvent::particle_const_iterator itrPart;
        	for (itrPart = (*itr)->particles_begin(); itrPart!=(*itr)->particles_end(); ++itrPart )
         	{
         		HepMC::GenParticle *part=*itrPart;
			id_pdg = part->pdg_id();
			//! TODO: get eta and phi for truth
			tmp_eta = part->momentum().eta();
			tmp_phi = Frame::angle_positive(part->momentum().phi()); 
			nq1 = (int)abs(id_pdg/1000)%10;
			nq2 = (int)abs(id_pdg/100)%10;
			nq3 = (int)abs(id_pdg/10)%10;
			//std::cout<<"pdg, nq1, nq2, nq3 : "<<id_pdg<<", "<<nq1 <<", "<<nq2<<", "<<nq3<<"\n";
			if(nq1!=0 && nq2!=0 && nq3!=0 && abs(nq1) >= abs(nq2) && abs(nq2) >= abs(nq3))
			{
				//! fill temporary heavy flavoured baryon pdg vector
				//! check for charm or bottom quarks
				//std::cout<<"heay flavoured baryon filled?\n";
				if(abs(nq1) == 4 || abs(nq1) == 5 || abs(nq2) == 4 || abs(nq2) == 5 || abs(nq3) == 4 || abs(nq3) == 5)
				{
				//std::cout<<"yes\n";
				tmp_Hbaryon_pid.push_back(id_pdg);
				//!TODO: fill dR
				tmp_Hbaryon_eta.push_back(tmp_eta);
				tmp_Hbaryon_phi.push_back(tmp_phi);
				}
				//else std::cout<<"no\n";
			}
			else if(nq1==0 && nq2!=0 && nq3!=0 && abs(nq2) >= abs(nq3))
			{
				//! fill temporary heavy flavoured mesons pdg vector here
				//std::cout<<"heay flavoured baryon filled?\n";
				if(abs(nq2) == 4 || abs(nq2) == 5 || abs(nq3) == 4 || abs(nq3) == 5)
				{
				//std::cout<<"yes\n";
				tmp_Hmeson_pid.push_back(id_pdg);
				//!TODO: fill dR
				tmp_Hmeson_eta.push_back(tmp_eta);
				tmp_Hmeson_phi.push_back(tmp_phi);
				}
				//else std::cout<<"no\n";
			}
			
		}
	}
   } 

 //! Check if one can get handle over the Multi Truth Collection
  const PRD_MultiTruthCollection* prdmtColl = 0;
  if ( evtStore()->contains<PRD_MultiTruthCollection>(m_multiTruth) ) 
  {
      ATH_CHECK(evtStore()->retrieve(prdmtColl, m_multiTruth));
  } 
  else 
  {
      ATH_MSG_WARNING("MultiTruth container not available (" << m_multiTruth << "). Skipping although requested.");
      prdmtColl = 0;
  }
  
 
 //retrieve sct cluster container
  if (m_clustercontainer == "SCT_Clusters")
  {
	const InDet::SCT_ClusterContainer* sct_clcontainer;
  	StatusCode sc = evtStore()->retrieve(sct_clcontainer, m_clustercontainer);
  	if (sc.isFailure()  || ! sct_clcontainer)
  	{
        	ATH_MSG_ERROR( "sct cluster container not found" );
        	return StatusCode::RECOVERABLE;
  	}	

	//! Get cluster information from cluster container to the sct_cluster
	ATH_MSG_DEBUG("in SIDET ");
	SiDet::ptr_t siDet = std::make_shared<SiDet>();
	siDet->triplet_L1.clear();
	siDet->triplet_L2.clear();
	siDet->triplet_L3.clear();
	siDet->get_Cluster(sct_clcontainer, m_SCTHelper, prdmtColl, siDet);
	
	//! print more
	ATH_MSG_DEBUG("printing in Read RDO after SiDet");
	//ATH_MSG_DEBUG("(x1,y1,z1,phiM,EtaM) : " <<siDet->triplet_L1.x() << " " << siDet->triplet_L1.y() <<"  " <<siDet->triplet_L1.z() <<"  " <<siDet->triplet_L1.phi_module() <<"  " <<siDet->triplet_L1.eta_module() );
	//ATH_MSG_DEBUG("(x2,y2,z2,phiM,EtaM) : " <<siDet->triplet_L2.x() << " " << siDet->triplet_L2.y() <<"  " <<siDet->triplet_L2.z() <<"  " <<siDet->triplet_L3.phi_module() <<"  " <<siDet->triplet_L3.eta_module() );
	//ATH_MSG_DEBUG("(x3,y3,z3,phiM,EtaM) : " <<siDet->triplet_L3.x() << " " << siDet->triplet_L3.y() <<"  " <<siDet->triplet_L3.z() <<"  " <<siDet->triplet_L3.phi_module() <<"  " <<siDet->triplet_L3.eta_module() );
	
	//! call the rec function from class Frame
	//(m_event == 42 || m_event == 43){

	ANA_MSG_DEBUG("Printing Layer 1 of the triplet");
	siDet->print_triplets(siDet->triplet_L1);
	ANA_MSG_DEBUG("Printing Layer 2 of the triplet");
	siDet->print_triplets(siDet->triplet_L2);
	ANA_MSG_DEBUG("Printing Layer 3 of the triplet");
	siDet->print_triplets(siDet->triplet_L3);
//}
	Track tracks;	
	tracks.get_ParticleInfo(sct_clcontainer, m_SCTHelper, prdmtColl);
	Frame frame(m_event);
	frame.rec(m_event, siDet);
	/*if(m_event == 42 || m_event == 44)for(size_t f = 0; f<frame.Tid.size(); ++f)
	{std::cout<<"TID's :" << frame.Tid[f] << ",  ";	}*/
	//! For each generated particle find the corresponding reconstructed track and fill them
	for(size_t fdefault=0; fdefault < tracks.Barcode.size(); ++fdefault)
	{
		f_heavyBaryon.push_back(false);
		f_heavyMeson.push_back(false);
	}
	double deta, dphi, dR;
	for(size_t jtruth = 0; jtruth < tracks.Barcode.size(); ++jtruth)
	{
		//! tag the truth particles if they lie close dR < 0.4 to a heavy flavoured meson of heavy flavoured baryon
		//! fill f_heavyBaryon and f_heavyMeson here
		//f_heavyBaryon[jtruth] = false;
		//f_heavyMeson[jtruth]  = false;
		//std::cout<<"Hbaryon Size : " <<tmp_Hbaryon_eta.size() <<"\n";
		//std::cout<<"Hmeson Size : " <<tmp_Hmeson_eta.size() <<"\n";
		for(size_t fi = 0; fi<tmp_Hbaryon_eta.size(); ++fi)
		{
			deta = tmp_Hbaryon_eta[fi] - tracks.Eta[jtruth];
			dphi = tmp_Hbaryon_phi[fi] - tracks.Phi[jtruth];
			dR = std::sqrt(deta*deta + dphi*dphi);
			//std::cout<<"deta : " << deta <<"hBaryon eta : "<<tmp_Hbaryon_eta[fi]<<"\n";
			//std::cout<<"dphi : " << dphi <<"hBaryon phi : "<<tmp_Hbaryon_phi[fi]<<"\n";
			//std::cout<<"dR : " << dR <<"\n";
			if(dR < 0.4){ f_heavyBaryon[jtruth] = true; continue;}
		}
		for(size_t fj = 0; fj<tmp_Hmeson_eta.size(); ++fj)
		{
			deta = tmp_Hmeson_eta[fj] - tracks.Eta[jtruth];
			dphi = tmp_Hmeson_phi[fj] - tracks.Phi[jtruth];
			dR = std::sqrt(deta*deta + dphi*dphi);
			//std::cout<<"deta : " << deta <<"hMeson eta : "<<tmp_Hmeson_eta[fj]<<"\n";
			//std::cout<<"dphi : " << dphi <<"hMeson phi : "<<tmp_Hmeson_phi[fj]<<"\n";
			//std::cout<<"dR : " << dR <<"\n";
			if(dR < 0.4){ f_heavyMeson[jtruth] = true; continue;}
		}
		ATH_MSG_DEBUG("looping over generated particle track ids");
		int barcode_truth = tracks.Barcode[jtruth]; ATH_MSG_DEBUG("barcode_truth = " <<barcode_truth);
		int jrecoIdx = -1, dc_count = -1;
		for(size_t jreco = 0; jreco < frame.Tid.size(); ++jreco)
		{
			//! if for a generated particle, one or more tracks are reconstructed(dc_count will be zero or >zero)
			if(frame.Tid[jreco] == barcode_truth)
			{
				jrecoIdx = jreco;
				dc_count++;
				if(dc_count > 0 )//track found more than once 
				{
					frame.Tid[jrecoIdx] = (-1) * barcode_truth;
					m_barcode.push_back(-1);
					m_pdg.push_back(-1);
					m_status.push_back(-1);
					m_mass.push_back(-1.0);
					m_ptT.push_back(-1.0);
					m_radT.push_back(-1.0);
					m_kapT.push_back(-1.0);
					m_pT.push_back(-1.0);
					m_thetaT.push_back(-1.0);
					m_etaT.push_back(-1.0);
					m_phiT.push_back(-1.0);
					m_Vx.push_back(-1.0);
					m_Vy.push_back(-1.0);
					m_Vz.push_back(-1.0);
					m_dcaT.push_back(-1.0);

				}
				else /*if(dc_count == 0)*/// track found once
				{
					m_barcode.push_back(tracks.Barcode[jtruth]); 	ATH_MSG_DEBUG("M_barcode : " << tracks.Barcode[jtruth]);
					m_pdg.push_back(tracks.Pdg[jtruth]);
					m_status.push_back(tracks.Status[jtruth]);
					m_mass.push_back(tracks.Mass[jtruth]);
					m_ptT.push_back(tracks.Pt[jtruth]);		ATH_MSG_DEBUG("M_pt: " << tracks.Pt[jtruth]);
					m_pT.push_back(tracks.P[jtruth]);
					m_radT.push_back(tracks.Rad[jtruth]);
					m_kapT.push_back(tracks.Kap[jtruth]);
					m_thetaT.push_back(tracks.Theta[jtruth]);	ATH_MSG_DEBUG("M_theta: " << tracks.Theta[jtruth]);
					m_etaT.push_back(tracks.Eta[jtruth]);		ATH_MSG_DEBUG("M_eta: " << tracks.Eta[jtruth]);
					m_phiT.push_back(tracks.Phi[jtruth]);		ATH_MSG_DEBUG("M_phi: " << tracks.Phi[jtruth] );
					m_Vx.push_back(tracks.Vx[jtruth]);		ATH_MSG_DEBUG("M_Vx:" << tracks.Vx[jtruth]);
					m_Vy.push_back(tracks.Vy[jtruth]);		ATH_MSG_DEBUG("M_Vy:" << tracks.Vy[jtruth]);
					m_Vz.push_back(tracks.Vz[jtruth]);		ATH_MSG_DEBUG("M_Vz:" << tracks.Vz[jtruth]);
					m_dcaT.push_back(tracks.Dca[jtruth]);

				}
				m_tid.push_back(frame.Tid[jrecoIdx]);			ATH_MSG_DEBUG("M_tid: " << frame.Tid[jrecoIdx]);
				m_x1.push_back(frame.X1[jrecoIdx]);			ATH_MSG_DEBUG("M_x1: " << frame.X1[jrecoIdx]);
				m_y1.push_back(frame.Y1[jrecoIdx]);			ATH_MSG_DEBUG("M_y1:" << frame.Y1[jrecoIdx]);
				m_z1.push_back(frame.Z1[jrecoIdx]);			ATH_MSG_DEBUG("M_z1:" << frame.Z1[jrecoIdx]);	
				m_phi1Mod.push_back(frame.Phi1_Module[jrecoIdx]);	ATH_MSG_DEBUG("M_Phi1mod:" << frame.Phi1_Module[jrecoIdx]);
				m_eta1Mod.push_back(frame.Eta1_Module[jrecoIdx]);	ATH_MSG_DEBUG("M_Eta1mod:" << frame.Eta1_Module[jrecoIdx]);
				m_x2.push_back(frame.X2[jrecoIdx]);			ATH_MSG_DEBUG("M_x2: " << frame.X2[jrecoIdx]);
				m_y2.push_back(frame.Y2[jrecoIdx]);			ATH_MSG_DEBUG("M_y2" << frame.Y2[jrecoIdx]);
				m_z2.push_back(frame.Z2[jrecoIdx]);			ATH_MSG_DEBUG("M_z2" << frame.Z2[jrecoIdx]);
				m_phi2Mod.push_back(frame.Phi2_Module[jrecoIdx]);	ATH_MSG_DEBUG("M_Phi2mod:" << frame.Phi2_Module[jrecoIdx]);
				m_eta2Mod.push_back(frame.Eta2_Module[jrecoIdx]);	ATH_MSG_DEBUG("M_Eta2mod:" << frame.Eta2_Module[jrecoIdx]);
				m_x3.push_back(frame.X3[jrecoIdx]);			ATH_MSG_DEBUG("M_x3: " << frame.X3[jrecoIdx]);
				m_y3.push_back(frame.Y3[jrecoIdx]);			ATH_MSG_DEBUG("M_y3" << frame.Y3[jrecoIdx]);
				m_z3.push_back(frame.Z3[jrecoIdx]);			ATH_MSG_DEBUG("M_z3" << frame.Z3[jrecoIdx]);
				m_phi3Mod.push_back(frame.Phi3_Module[jrecoIdx]);	ATH_MSG_DEBUG("M_Phi3mod:" << frame.Phi3_Module[jrecoIdx]);
				m_eta3Mod.push_back(frame.Eta3_Module[jrecoIdx]);	ATH_MSG_DEBUG("M_Eta3mod:" << frame.Eta3_Module[jrecoIdx]);
				r_rad013.push_back(frame.rad013[jrecoIdx]);		ATH_MSG_DEBUG("M_rad013:" << frame.rad013[jrecoIdx]);
				r_kap013.push_back(frame.kap013[jrecoIdx]);
				r_Pt_n.push_back(frame.Pt_n[jrecoIdx]);
				r_P_n.push_back(frame.P_n[jrecoIdx]);
				r_R01.push_back(frame.R01[jrecoIdx]);			ATH_MSG_DEBUG("M_R01:" << frame.R01[jrecoIdx]);
				r_R03.push_back(frame.R03[jrecoIdx]);			ATH_MSG_DEBUG("M_R03:" << frame.R03[jrecoIdx]);
				r_R13.push_back(frame.R13[jrecoIdx]);			ATH_MSG_DEBUG("M_R13:" << frame.R13[jrecoIdx]);
				r_Cross0103.push_back(frame.Cross0103[jrecoIdx]);	ATH_MSG_DEBUG("M_Cross0103:" << frame.Cross0103[jrecoIdx]);
				r_Phi1_bend.push_back(frame.Phi1_bend[jrecoIdx]);	
				r_Phi3_bend.push_back(frame.Phi3_bend[jrecoIdx]);
				r_S1.push_back(frame.S1[jrecoIdx]);			ATH_MSG_DEBUG("M_S1:" << frame.S1[jrecoIdx]);
				r_S3.push_back(frame.S3[jrecoIdx]);			ATH_MSG_DEBUG("M_S3:" << frame.S3[jrecoIdx]);
				r_S13.push_back(frame.S13[jrecoIdx]);			ATH_MSG_DEBUG("M_S13:" << frame.S13[jrecoIdx]);
				r_Theta13.push_back(frame.Theta13[jrecoIdx]);		ATH_MSG_DEBUG("M_theta13:" << frame.Theta13[jrecoIdx]);
				r_Eta13.push_back(frame.Eta13[jrecoIdx]);		ATH_MSG_DEBUG("M_eta13:" << frame.Eta13[jrecoIdx]);
				r_Z013.push_back(frame.Z013[jrecoIdx]);			ATH_MSG_DEBUG("M_Z013:" << frame.Z013[jrecoIdx]);
				r_Hbml.push_back(frame.Hbml[jrecoIdx]);			ATH_MSG_DEBUG("M_hbml:" << frame.Hbml[jrecoIdx]);
				r_Kbml.push_back(frame.Kbml[jrecoIdx]);			ATH_MSG_DEBUG("M_kbml:" << frame.Kbml[jrecoIdx]);
				r_Phi013.push_back(frame.Phi013[jrecoIdx]);		ATH_MSG_DEBUG("M_phi013:" << frame.Phi013[jrecoIdx]);
				r_Phi13.push_back(frame.Phi13[jrecoIdx]);
				r_Z13.push_back(frame.Z13[jrecoIdx]);
				r_Kappa_pull.push_back(frame.Kappa_pull[jrecoIdx]);
				r_Dphi2.push_back(frame.Dphi2[jrecoIdx]);
				r_Dz2.push_back(frame.Dz2[jrecoIdx]);
				r_Kappa.push_back(frame.Kappa[jrecoIdx]);
				r_Radius.push_back(frame.Radius[jrecoIdx]);
				r_Pt.push_back(frame.Pt[jrecoIdx]);
				r_H.push_back(frame.H[jrecoIdx]);
				r_K.push_back(frame.K[jrecoIdx]);
				r_DCA.push_back(frame.Dca[jrecoIdx]);
				r_Phi_DCA.push_back(frame.Phi_dca[jrecoIdx]);
				r_Theta.push_back(frame.Theta[jrecoIdx]);
				r_Eta.push_back(frame.Eta[jrecoIdx]);
				r_Z0.push_back(frame.Z0[jrecoIdx]);
		}	
		}//! end of for loop over reconstructed frames
		ATH_MSG_DEBUG("dc_count : " <<dc_count);
		if(jrecoIdx < 0)
		{ 
		//! if for a generated particle, no track is reconstructed dc_count<0 
		//! here generated particles correspond to particles generating a cluster in the outermost triplet layer
		//! ToDO : getParticle in Track.cxx must consider particles passing all the 3 layers and not just the outermost layer
		if(dc_count<0)
		{
			//! fill zero's
			m_barcode.push_back(tracks.Barcode[jtruth]);
			m_pdg.push_back(tracks.Pdg[jtruth]);
			m_status.push_back(tracks.Status[jtruth]);
			m_mass.push_back(tracks.Mass[jtruth]);
			m_ptT.push_back(tracks.Pt[jtruth]);
			m_pT.push_back(tracks.P[jtruth]);
			m_radT.push_back(tracks.Rad[jtruth]);
			m_kapT.push_back(tracks.Kap[jtruth]);
			m_thetaT.push_back(tracks.Theta[jtruth]);
			m_etaT.push_back(tracks.Eta[jtruth]);
			m_phiT.push_back(tracks.Phi[jtruth]);
			m_Vx.push_back(tracks.Vx[jtruth]);
			m_Vy.push_back(tracks.Vy[jtruth]);
			m_Vz.push_back(tracks.Vz[jtruth]);
			m_dcaT.push_back(tracks.Dca[jtruth]);

			m_tid.push_back(0);
			m_x1.push_back(0);
			m_y1.push_back(0);
			m_z1.push_back(0);
			m_phi1Mod.push_back(0);
			m_eta1Mod.push_back(0);
			m_x2.push_back(0);
			m_y2.push_back(0);
			m_z2.push_back(0);
			m_phi2Mod.push_back(0);
			m_eta2Mod.push_back(0);
			m_x3.push_back(0);
			m_y3.push_back(0);
			m_z3.push_back(0);
			m_phi3Mod.push_back(0);
			m_eta3Mod.push_back(0);
			r_rad013.push_back(0);
			r_kap013.push_back(0);
			r_Pt_n.push_back(0);
			r_P_n.push_back(0);
			r_R01.push_back(0);
			r_R03.push_back(0);
			r_R13.push_back(0);
			r_Cross0103.push_back(0);
			r_Phi1_bend.push_back(0);
			r_Phi3_bend.push_back(0);
			r_S1.push_back(0);
			r_S3.push_back(0);
			r_S13.push_back(0);
			r_Theta13.push_back(0);
			r_Eta13.push_back(0);
			r_Z013.push_back(0);
			r_Hbml.push_back(0);
			r_Kbml.push_back(0);
			r_Phi013.push_back(0);			
			r_Phi13.push_back(0);
			r_Z13.push_back(0);
			r_Kappa_pull.push_back(0);
			r_Dphi2.push_back(0);
			r_Dz2.push_back(0);
			r_Kappa.push_back(0);
			r_Radius.push_back(0);
			r_Pt.push_back(0);
			r_H.push_back(0);
			r_K.push_back(0);
			r_DCA.push_back(0);
			r_Phi_DCA.push_back(0);
			r_Theta.push_back(0);
			r_Eta.push_back(0);
			r_Z0.push_back(0);
 

		}
		else continue;
		}
	}

		
	//! Fill matched info from Tracks
	//for(auto& i : frame.Tid)
	for(size_t mfdefault=0; mfdefault < frame.Tid.size(); ++mfdefault)
	{
		mf_heavyBaryon.push_back(false);
		mf_heavyMeson.push_back(false);
	}
	for(size_t ireco = 0; ireco < frame.Tid.size(); ++ireco)
	{
		ATH_MSG_DEBUG("looping over reconstructed track ids");
		int barcode_reco = frame.Tid[ireco]; ATH_MSG_DEBUG("barcode_reco = " <<barcode_reco);
		/*if(barcode_reco!=-1)*/// it is -1 for fakes and -1*barcode for tracks reconstructed more than once
		if(barcode_reco > 0){
			

			//auto &i = std::find(tracks.Barcode.begin(),tracks.Barcode.end(),i);
			//int idx = std::distance(i, tracks.Barcode.begin());
			ATH_MSG_DEBUG("Barcode not -1, Match found!!!");
			int itruthIdx = -1;
			for (size_t itruth = 0; itruth < tracks.Barcode.size(); ++itruth) {
				if (tracks.Barcode[itruth] == barcode_reco) {
					itruthIdx = itruth;
					break;
				}
			}
			if (itruthIdx < 0) {
				// did not find a match ... missed this truth track
				continue;
			}
			match_barcode.push_back( tracks.Barcode[itruthIdx]);
			match_pdg.push_back( tracks.Pdg[itruthIdx]);                             
			match_status.push_back( tracks.Status[itruthIdx]);
			match_mass.push_back( tracks.Mass[itruthIdx]);                              
			match_ptT.push_back( tracks.Pt[itruthIdx]);                    
			match_pT.push_back( tracks.P[itruthIdx]);
			match_radT.push_back( tracks.Rad[itruthIdx]);
			match_kapT.push_back( tracks.Kap[itruthIdx]);
			match_thetaT.push_back( tracks.Theta[itruthIdx]);                        
			match_etaT.push_back( tracks.Eta[itruthIdx]);                    
			match_phiT.push_back( tracks.Phi[itruthIdx]);     
			match_Vx.push_back( tracks.Vx[itruthIdx]);
			match_Vy.push_back( tracks.Vy[itruthIdx]);
			match_Vz.push_back( tracks.Vz[itruthIdx]);
			match_dcaT.push_back( tracks.Dca[itruthIdx]);
			//! fill heavy flavoured hadron flags here
			//! tag the truth particles if they lie close dR < 0.4 to a heavy flavoured meson of heavy flavoured baryon
			//! fill f_heavyBaryon and f_heavyMeson here
			//f_heavyBaryon[jtruth] = false;
			//f_heavyMeson[jtruth]  = false;
			//std::cout<<"Hbaryon Size : " <<tmp_Hbaryon_eta.size() <<"\n";
			//std::cout<<"Hmeson Size : " <<tmp_Hmeson_eta.size() <<"\n";
			for(size_t mfi = 0; mfi<tmp_Hbaryon_eta.size(); ++mfi)
			{
				deta = tmp_Hbaryon_eta[mfi] - tracks.Eta[itruthIdx];
				dphi = tmp_Hbaryon_phi[mfi] - tracks.Phi[itruthIdx];
				dR = std::sqrt(deta*deta + dphi*dphi);
				//std::cout<<"deta : " << deta <<"hBaryon eta : "<<tmp_Hbaryon_eta[fi]<<"\n";
				//std::cout<<"dphi : " << dphi <<"hBaryon phi : "<<tmp_Hbaryon_phi[fi]<<"\n";
				//std::cout<<"dR : " << dR <<"\n";
				if(dR < 0.4){ mf_heavyBaryon[ireco] = true; continue;}
			}
			for(size_t mfj = 0; mfj<tmp_Hmeson_eta.size(); ++mfj)
			{
				deta = tmp_Hmeson_eta[mfj] - tracks.Eta[itruthIdx];
				dphi = tmp_Hmeson_phi[mfj] - tracks.Phi[itruthIdx];
				dR = std::sqrt(deta*deta + dphi*dphi);
				//std::cout<<"deta : " << deta <<"hMeson eta : "<<tmp_Hmeson_eta[fj]<<"\n";
				//std::cout<<"dphi : " << dphi <<"hMeson phi : "<<tmp_Hmeson_phi[fj]<<"\n";
				//std::cout<<"dR : " << dR <<"\n";
				if(dR < 0.4){ mf_heavyMeson[ireco] = true; continue;}
			}
		}
		else if (barcode_reco == -1)//fakes 
		{
			match_barcode.push_back(0);
			match_pdg.push_back(0);                             
			match_status.push_back(0);
			match_mass.push_back(0);                              
			match_ptT.push_back(0);                    
			match_pT.push_back(0);
			match_radT.push_back(0);
			match_kapT.push_back(0);
			match_thetaT.push_back(0);                        
			match_etaT.push_back(0);                    
			match_phiT.push_back(0);     
			match_Vx.push_back(0);
			match_Vy.push_back(0);
			match_Vz.push_back(0);
			match_dcaT.push_back(0);

		}
		else /* if(barcode_reco <-1)*/ // DC tracks
		{
			match_barcode.push_back(-1 );
			match_pdg.push_back(-1 );                             
			match_status.push_back(-1);
			match_mass.push_back(-1.0 );                              
			match_ptT.push_back(-1.0 );                    
			match_pT.push_back(-1.0);
			match_radT.push_back(-1.0);
			match_kapT.push_back(-1.0);
			match_thetaT.push_back(-1.0);                        
			match_etaT.push_back(-1.0);                    
			match_phiT.push_back(-1.0);     
			match_Vx.push_back(-1.0);
			match_Vy.push_back(-1.0);
			match_Vz.push_back(-1.0);
			match_dcaT.push_back(-1.0);
		}
	}
	//! Fill frame objects
	m_frame = frame.frameID;
	m_Ntriplets = frame.ntriplets;
	m_hitCount = frame.HitCount;
	m_flg_phi_barr = frame.F_phi_barrel;
	m_flg_isTriplet = frame.F_isTriplet;
	m_flg_match = frame.F_match;
	m_Tid = frame.Tid;
	//! another method
	m_rad013 = frame.rad013;
	m_kap013 = frame.kap013;
	m_Pt_n = frame.Pt_n;
	m_P_n = frame.P_n;
	m_Charge = frame.Charge;
	m_R01 = frame.R01;
	m_R03 = frame.R03;
	m_R13 = frame.R13;
	m_Cross0103 = frame.Cross0103;
	m_Phi1_bend = frame.Phi1_bend;
	m_Phi3_bend = frame.Phi3_bend;
	m_S1 = frame.S1;
	m_S3 = frame.S3;
	m_S13 = frame.S13;
	m_Theta13 = frame.Theta13;
	m_Eta13 = frame.Eta13;
	m_Z013 = frame.Z013;
	m_Hbml = frame.Hbml;
	m_Kbml = frame.Kbml;
	m_Phi013 = frame.Phi013;

	//!previous method
	m_X1 = frame.X1;
	m_X2 = frame.X2;
	m_X3 = frame.X3;
	m_Y1 = frame.Y1;
	m_Y2 = frame.Y2;
	m_Y3 = frame.Y3;
	m_Z1 = frame.Z1;
	m_Z2 = frame.Z2;
	m_Z3 = frame.Z3;
	m_Phi1 = frame.Phi1;
	m_Phi2 = frame.Phi2;
	m_Phi3 = frame.Phi3;
	m_X12 = frame.X12;
	m_X13 = frame.X13;
	m_X23 = frame.X23;
	m_Y12 = frame.Y12;
	m_Y13 = frame.Y13;
	m_Y23 = frame.Y23;
	m_Z13 = frame.Z13;
	m_Phi13 = frame.Phi13;
	m_Kappa_pull = frame.Kappa_pull;
	m_Dz2   = frame.Dz2;
	m_Dphi2 = frame.Dphi2;
	m_phi_slope = frame.Phi_slope;
	m_delta_phi = frame.Delta_phi;
	m_tau_half_bml = frame.Tau_half_bml;
	m_chord31 = frame.Chord31;
	m_kappa_bml = frame.Kappa_bml;
	m_radius_bml = frame.Radius_bml;
	m_pt_bml = frame.Pt_bml;
	m_pt_inv_bml = frame.Pt_inv_bml;
	m_s31_bml = frame.S31_bml;
	m_stot_bml = frame.Stot_bml;
	m_s01_bml = frame.S01_bml;
	m_slope_l_bml = frame.Slope_l_bml;
	m_theta_bml = frame.Theta_bml;
	m_eta_bml = frame.Eta_bml;
	m_z0_bml = frame.Z0_bml;
	m_d12 = frame.D12;
	m_d13 = frame.D13;
	m_d23 = frame.D23;
	m_cross_prod = frame.Cross_prod;
	m_radius = frame.Radius;
	m_kappa = frame.Kappa;
	m_pt = frame.Pt;
	m_pt_inv = frame.Pt_inv;
	m_det = frame.Det;
	m_h = frame.H;
	m_k = frame.K;
	m_dca = frame.Dca;
	m_phi_dca = frame.Phi_dca;
	m_chord_l = frame.Chord_l;
	m_tau_half = frame.Tau_half;
	m_phi_half = frame.Phi_half;
	m_s31 = frame.S31;
	m_stot = frame.Stot;
	m_s01 = frame.S01;
	m_slope_l = frame.Slope_l;
	m_theta = frame.Theta;
	m_eta = frame.Eta;
	m_z0 = frame.Z0;
	//! fill n-tuple
	if (m_truthTree->Fill() == -1) 
	{
	   ATH_MSG_WARNING("Error writing truth Tree");
	}

	if (m_recTree->Fill() == -1) 
	{
	   ATH_MSG_WARNING("Error writing reconstruction Tree");
	}
	
	// Create the main containers to test:
	m_xaodout = CxxUtils::make_unique<xAOD::TrackParticleContainer>();
	m_xauxout = CxxUtils::make_unique<xAOD::TrackParticleAuxContainer>();
	if(!m_xaodout.isValid() || !m_xauxout.isValid())
	{
	   ATH_MSG_ERROR("Error creating key " << m_xaodout.name());
	   return StatusCode::FAILURE;
	}
	m_xaodout->setStore(m_xauxout.ptr());
	//xAOD::TrackParticleAuxContainer aux;
	//xAOD::TrackParticleContainer tpc;
	//tpc.setStore( &aux );

	for(size_t xi=0; xi<m_Pt_n.size(); ++xi )
	{
		d0 = m_dca[xi];
		z0 = m_Z013[xi];
		phi0 = m_Phi013[xi];
		theta = m_Theta13[xi];
		qOverP = m_Charge[xi]/std::abs(m_P_n[xi]);
		// Add one track particle to the container:
		xAOD::TrackParticle* p = new xAOD::TrackParticle();
		m_xaodout->push_back( p );
		//tpc.push_back( p );

		// Fill it with information:
		fill( *p );

		// Print the information:
		print( *p );
	}
  } //end of SCT_Cluster
  
  return StatusCode::SUCCESS;
}

/******************************************************
 * Finalize method:
 ******************************************************/
StatusCode ReadRDO::finalize()
{
  // Print where you are
  ATH_MSG_INFO ("finalize()");
  return StatusCode::SUCCESS;
}
