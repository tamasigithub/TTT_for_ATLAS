/*!
 *\file
 * \brief The reconstruction frame class
 */
#ifndef TRIPLETTRACKFINDER_FRAME_H_
#define TRIPLETTRACKFINDER_FRAME_H_

#include "InDetPrepRawData/PixelClusterContainer.h"
#include "InDetPrepRawData/SCT_ClusterContainer.h"
#include "InDetIdentifier/PixelID.h"
#include "InDetIdentifier/SCT_ID.h"

#include <AsgTools/MessageCheck.h>

#include "TripletTrackFinder/SiDet.h"
#include <iostream>
#include "math.h"
#include <cmath>
#include <vector>

#define Constant 0.299760192f	/*constant*/
#define B_field  2.0f		/*magnetic field in Tesla*/

ANA_MSG_HEADER (NAME)

class Frame 
{
public:
    //! Total no. of frames reconstructed - same as eventId
    unsigned int frameID;
    //! Total no. of triplets found in an event - same as the no. of tracks reconstructed in an event
    int ntriplets = 0;
    std::vector<int> HitCount;//no. of hits per triplet

    //! some flags indicatings cuts passed or not
    std::vector<bool> F_phi_barrel;
    std::vector<bool> F_dz2_barrel;
    std::vector<bool> F_dphi2_barrel;
    std::vector<bool> F_isTriplet;
    std::vector<bool> F_match;
    
    //! track id (barcode)
    std::vector<int> Tid;// =-1 for fake combinations

    //! Triplet Validation
    //! the various cuts are summarized here : http://tkar.web.cern.ch/tkar/TTT/cuts_final1.pdf
    //! Loose geometry cuts (pre-selection cuts)
    const double phi_barrel_cut	 = 0.007;//optimised 0.007 check phi1-phi3 and set this accordingly,0.007 for 2GeV/c muons.For 5 GeV/c single muons the cut can be tightened to 0.003 already. Cut needs to be wider for other particles.
    const double z_barrel_cut	 = 70.0;//optimised - 70 check z1-z3 and set this accordingly
    const double dphi2_barrel_cut = 1e-4;//0.0018;//5e-4
    const double dz2_barrel_cut	 = 9e-2;//0.4;//7e-5;//7e-5

    //! Hit Final-Selection cuts(Applied after calculation of track parameters using beamline constraint)
    const double eta_max = 1.5; // longitudinal acceptance cut
    const double pt_min  = 2.0e3; // momentum acceptance cut
    const double z0_max	= 100.0; //20 cm luminous region
    //! kappa cut -> the constants below are calculated based on the Multiple scattering formula(Note: these constants are to be used with kappa in mm)
    //! The formula is detailed here -> https://arxiv.org/abs/1611.01671
    const double hit_const = 7.8125e-9;
    const double MS_const = 0.0192667;
    const double sigma_kmax = 5;//4;//3 -> for tighter cut, 5-> for very loose cut
    
    //! cut parameters
    std::vector<double>	 Kappa_pull;
    std::vector<double>	 Dz2;
    std::vector<double>	 Dphi2;

    //!another method
    std::vector<double>	 rad013;
    std::vector<double>	 kap013;
    std::vector<double>	 R01;
    std::vector<double>	 R03;
    std::vector<double>	 R13;
    std::vector<double>	 Cross0103;
    std::vector<double>	 Pt_n;
    std::vector<double>	 P_n;
    std::vector<double>	 Charge;
    std::vector<double>	 Phi1_bend;
    std::vector<double>	 Phi3_bend;
    std::vector<double>	 S1;
    std::vector<double>	 S3;
    std::vector<double>	 S13;
    std::vector<double>	 Theta13;
    std::vector<double>	 Eta13;
    std::vector<double>	 Z013;
    std::vector<double>	 Hbml;
    std::vector<double>	 Kbml;
    std::vector<double>	 Phi013;

    //
    //!Reconstrcuted parameters with and without beamline constraint
    std::vector<double>   X1;
    std::vector<double>   X2;
    std::vector<double>   X3;
    std::vector<double>   Y1;
    std::vector<double>   Y2;
    std::vector<double>   Y3;
    std::vector<double>   Z1;
    std::vector<double>   Z2;
    std::vector<double>   Z3;
    std::vector<double>   Phi1;
    std::vector<double>   Phi2;
    std::vector<double>   Phi3;
    std::vector<double>   Phi1_Module;
    std::vector<double>   Eta1_Module;
    std::vector<double>   Phi2_Module;
    std::vector<double>   Eta2_Module;
    std::vector<double>   Phi3_Module;
    std::vector<double>   Eta3_Module;
    std::vector<double>   X12;
    std::vector<double>   X13;
    std::vector<double>   X23;
    std::vector<double>   Y12;
    std::vector<double>   Y13;
    std::vector<double>   Y23;
    std::vector<double>   Z13;
    std::vector<double>   Phi13;
    std::vector<double>   Phi_slope;
    std::vector<double>   Delta_phi;
    std::vector<double>   Tau_half_bml;
    std::vector<double>   Chord31;
    std::vector<double>   Kappa_bml;
    std::vector<double>   Radius_bml;
    std::vector<double>   Pt_bml;
    std::vector<double>   Pt_inv_bml;
    std::vector<double>   S31_bml;
    std::vector<double>   Stot_bml;
    std::vector<double>   S01_bml;
    std::vector<double>   Slope_l_bml;
    std::vector<double>   Theta_bml;
    std::vector<double>   Eta_bml;
    std::vector<double>   Z0_bml;
    std::vector<double>   D12;
    std::vector<double>   D13;
    std::vector<double>   D23;
    std::vector<double>   Cross_prod;
    std::vector<double>   Radius;
    std::vector<double>   Kappa;
    std::vector<double>   Pt;
    std::vector<double>   Pt_inv;
    std::vector<double>   Det;
    std::vector<double>   H;
    std::vector<double>   K;
    std::vector<double>   Dca;
    std::vector<double>   Phi_dca;
    std::vector<double>   Chord_l;
    std::vector<double>   Tau_half;
    std::vector<double>   Phi_half;
    std::vector<double>   S31;
    std::vector<double>   Stot;
    std::vector<double>   S01;
    std::vector<double>   Slope_l;
    std::vector<double>   Theta;
    std::vector<double>   Eta;
    std::vector<double>   Z0;
 /*!
 * \brief ptr_t - Frame shared pointer.
 */
    //typedef typename std::shared_ptr<Frame> ptr_t;
public:
    //! constructor
    Frame(unsigned int eventID):frameID(eventID){}
    //! destructor
    ~Frame(){}

    //! Check if angle is in a particular phi range(target - cut, target + cut)
    bool angle_in_range(double angle, double target, double cut);

    //! Recontruct tracks
    void rec(unsigned int& eventID, SiDet::ptr_t &siDet);

    //! Return angle in the range [0,2*pi)
    static double angle_positive(double angle){ return angle -(2*M_PI) * std::floor(angle/(2*M_PI));}

    //! Return angle in the range [-pi,pi)
    static double angle_symmetric(double angle){return angle - (2*M_PI) * std::floor((angle + M_PI)/(2*M_PI));}
private:
    //! delete the default copy constructor and assignment operator
    Frame(const Frame&) = delete;
    Frame& operator=(const Frame&) = delete;
};
#endif /*TRIPLETTRACKFINDER_FRAME_H_*/
