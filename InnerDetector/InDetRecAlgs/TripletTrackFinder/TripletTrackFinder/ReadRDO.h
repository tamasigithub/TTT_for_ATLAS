#ifndef TRIPLETTRACKFINDER_READRDO_H_
#define TRIPLETTRACKFINDER_READRDO_H_

#include "GaudiKernel/ToolHandle.h"
#include "AthenaBaseComps/AthAlgorithm.h"
#include "InDetIdentifier/SCT_ID.h"
#include "GaudiKernel/ITHistSvc.h"
#include "TH1.h"
#include "TTree.h"
#include <string>

#include "xAODTracking/TrackParticle.h"
#include "xAODTracking/TrackParticleContainer.h"
#include "xAODTracking/TrackParticleAuxContainer.h"

////////////////////////////////////////////////////////////////////////
class StoreGateSvc;
class PixelID;
class SCT_ID;
class ReadRDO : public AthAlgorithm
{
public:
  //! Constructor with parameters:
  ReadRDO (const std::string& name, ISvcLocator* pSvcLocator);
  //! Function filling one TrackParticle with information
  void fill(xAOD::TrackParticle& tp);
  //! Function printing the properties of a TrackParticle
  void print( const xAOD::TrackParticle& tp );
  //! Basic algorithm methods:
  StatusCode 	initialize();
  StatusCode 	execute();
  StatusCode 	finalize();
  //SiDet::ptr_t	siDet;
private:
  SG::WriteHandle<xAOD::TrackParticleContainer> m_xaodout;
  SG::WriteHandle<xAOD::TrackParticleAuxContainer> m_xauxout;
  StoreGateSvc*  m_sgSvc;
  std::string 	 m_infokey;
  std::string 	 m_truthkey;
  const PixelID* m_PixelHelper;
  const SCT_ID*  m_SCTHelper;
  std::string 	 m_clustercontainer;
  std::string 	 m_multiTruth;
  bool		 m_debug;
  TTree*	 m_selection_cuts;
  double	 m_phiBarrel_cut;
  double	 m_zBarrel_cut;
  double	 m_dPhi2_cut;
  double	 m_dZ2_cut;
  double	 m_ptmin_cut;
  double	 m_etamax_cut;
  double	 m_zVtx_cut;
  double	 m_hitConst;
  double	 m_MSConst;
  double	 m_sigmaKappaMax;
  TTree*	 m_truthTree;
  std::vector<int>	m_barcode;
  std::vector<int>	m_pdg;
  std::vector<int>	m_charge;
  std::vector<int>	m_status;
  std::vector<double>	m_mass;
  std::vector<double>	m_ptT;
  std::vector<double>	m_pT;
  std::vector<double>	m_radT;
  std::vector<double>	m_kapT;
  std::vector<double>	m_thetaT;
  std::vector<double>	m_etaT;
  std::vector<double>	m_phiT;
  std::vector<double>	m_Vx;
  std::vector<double>	m_Vy;
  std::vector<double>	m_Vz;
  std::vector<double>	m_dcaT;
  std::vector<bool>	f_heavyBaryon;//flag indicating if a particle is coming from a heavy baryon
  std::vector<bool>	f_heavyMeson;//flag indicating if a particle is coming from a heavy meson
  std::vector<double>   m_tid;
  std::vector<double>   m_x1;
  std::vector<double>   m_y1;
  std::vector<double>   m_z1;
  std::vector<double>   m_phi1;
  std::vector<double>   m_phi1Mod;
  std::vector<double>   m_eta1Mod;
  std::vector<double>   m_x2;
  std::vector<double>   m_y2;
  std::vector<double>   m_z2;
  std::vector<double>   m_phi2;
  std::vector<double>   m_phi2Mod;
  std::vector<double>   m_eta2Mod;
  std::vector<double>   m_x3;
  std::vector<double>   m_y3;
  std::vector<double>   m_z3;
  std::vector<double>   m_phi3;
  std::vector<double>   m_phi3Mod;
  std::vector<double>   m_eta3Mod;
  std::vector<double>   r_rad013;
  std::vector<double>   r_kap013;
  std::vector<double>   r_Pt_n;
  std::vector<double>	r_P_n;
  std::vector<double>   r_R01;
  std::vector<double>   r_R03;
  std::vector<double>   r_R13;
  std::vector<double>   r_Cross0103;
  std::vector<double>   r_Phi1_bend;
  std::vector<double>   r_Phi3_bend;
  std::vector<double>   r_S1;
  std::vector<double>   r_S3;
  std::vector<double>   r_S13;
  std::vector<double>   r_Theta13;
  std::vector<double>   r_Eta13;
  std::vector<double>   r_Z013;
  std::vector<double>   r_Hbml;
  std::vector<double>   r_Kbml;
  std::vector<double>   r_Phi013;
//w/o bml constraint parameters for truth tree
  std::vector<double>	r_Phi13;
  std::vector<double>	r_Z13;
  std::vector<double>	r_Kappa_pull;
  std::vector<double>	r_Dphi2;
  std::vector<double>	r_Dz2;
  std::vector<double>	r_Kappa;
  std::vector<double>	r_Radius;
  std::vector<double>	r_Pt;
  std::vector<double>	r_H;
  std::vector<double>	r_K;
  std::vector<double>	r_DCA;
  std::vector<double>	r_Phi_DCA;
  std::vector<double>	r_Theta;
  std::vector<double>	r_Eta;
  std::vector<double>	r_Z0;

  TTree*	m_recTree;
  unsigned int 	m_event;
  unsigned int 	m_frame;
  int 	   	m_Ntriplets;
  std::vector<int>	m_hitCount;
  std::vector<bool>	m_flg_phi_barr;
  std::vector<bool>	m_flg_isTriplet;
  //! matched variables
  std::vector<bool>   	m_flg_match;
  std::vector<bool>	mf_heavyBaryon;//flag indicating if a particle is coming from a heavy baryon
  std::vector<bool>	mf_heavyMeson;//flag indicating if a particle is coming from a heavy meson
  std::vector<int>   	m_Tid;
  std::vector<int>	match_barcode;
  std::vector<int>	match_layer;
  std::vector<int>	match_pdg;
  std::vector<int>	match_status;
  std::vector<double>	match_mass;
  std::vector<double>	match_ptT;
  std::vector<double>	match_pT;
  std::vector<double>	match_radT;
  std::vector<double>	match_kapT;
  std::vector<double>	match_thetaT;
  std::vector<double>	match_etaT;
  std::vector<double>	match_phiT;
  std::vector<double>	match_Vx;
  std::vector<double>	match_Vy;
  std::vector<double>	match_Vz;
  std::vector<double>	match_dcaT;
  
  //! another method
  std::vector<double>   m_rad013;
  std::vector<double>   m_kap013;
  std::vector<double>   m_Pt_n;
  std::vector<double>	m_P_n;
  std::vector<double>	m_Charge;
  std::vector<double>   m_R01;
  std::vector<double>   m_R03;
  std::vector<double>   m_R13;
  std::vector<double>   m_Cross0103;
  std::vector<double>   m_Phi1_bend;
  std::vector<double>   m_Phi3_bend;
  std::vector<double>   m_S1;
  std::vector<double>   m_S3;
  std::vector<double>   m_S13;
  std::vector<double>   m_Theta13;
  std::vector<double>   m_Eta13;
  std::vector<double>   m_Z013;
  std::vector<double>   m_Hbml;
  std::vector<double>   m_Kbml;
  std::vector<double>   m_Phi013;
  //! previous method
  std::vector<double>	m_X1;
  std::vector<double>	m_X2;
  std::vector<double>	m_X3;
  std::vector<double>	m_Y1;
  std::vector<double>	m_Y2;
  std::vector<double>	m_Y3;
  std::vector<double>	m_Z1;
  std::vector<double>	m_Z2;
  std::vector<double>	m_Z3;
  std::vector<double>	m_Phi1;
  std::vector<double>	m_Phi2;
  std::vector<double>	m_Phi3;
  std::vector<double>	m_X12;
  std::vector<double>	m_X13;
  std::vector<double>	m_X23;
  std::vector<double>	m_Y12;
  std::vector<double>	m_Y13;
  std::vector<double>	m_Y23;
  std::vector<double>	m_Z13;
  std::vector<double>	m_Phi13;
  std::vector<double>   m_Kappa_pull;
  std::vector<double>   m_Dz2;
  std::vector<double>   m_Dphi2;
  std::vector<double>	m_phi_slope;
  std::vector<double>	m_delta_phi;
  std::vector<double>	m_tau_half_bml;
  std::vector<double>	m_chord31;
  std::vector<double>	m_kappa_bml;
  std::vector<double>	m_radius_bml;
  std::vector<double>	m_pt_bml;
  std::vector<double>	m_pt_inv_bml;
  std::vector<double>	m_s31_bml;
  std::vector<double>	m_stot_bml;
  std::vector<double>	m_s01_bml;
  std::vector<double>	m_slope_l_bml;
  std::vector<double>	m_theta_bml;
  std::vector<double>	m_eta_bml;
  std::vector<double>	m_z0_bml;
  std::vector<double>	m_d12;
  std::vector<double>	m_d13;
  std::vector<double>	m_d23;
  std::vector<double>	m_cross_prod;
  std::vector<double>	m_kappa;
  std::vector<double>	m_radius;
  std::vector<double>	m_pt;
  std::vector<double>	m_pt_inv;
  std::vector<double>	m_det;
  std::vector<double>	m_h;
  std::vector<double>	m_k;
  std::vector<double>	m_dca;
  std::vector<double>	m_phi_dca;
  std::vector<double>	m_chord_l;
  std::vector<double>	m_tau_half;
  std::vector<double>	m_phi_half;
  std::vector<double>	m_s31;
  std::vector<double>	m_stot;
  std::vector<double>	m_s01;
  std::vector<double>	m_slope_l;
  std::vector<double>	m_theta;
  std::vector<double>	m_eta;
  std::vector<double>	m_z0;
  //! trackParticle attributes
  float d0;
  float z0;
  float phi0;
  float theta;
  float qOverP;
  
};
#endif // TRIPLETTRACKFINDER_READRDO_H_
