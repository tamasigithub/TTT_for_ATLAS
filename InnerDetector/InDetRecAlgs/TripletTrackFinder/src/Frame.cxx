//#include "GaudiKernel/MsgStream.h"
//#include "GaudiKernel/ServiceHandle.h"
//#include <AsgTools/MessageCheck.h>
#include "TripletTrackFinder/Frame.h"
#include <vector>

ANA_MSG_SOURCE (NAME,"Frame")

bool Frame::angle_in_range(double angle, double target, double cut)
{
    //! angle1 will be greater than angle2 only at the boundary dividing the 1st and the 4th quadrant
    //! if(angle1 < angle2) target must always be > angle1 and <angle2
    //! if(angle2 < angle1) then target must be either greater than both angle1 and angle2 or it should be less than both angle1 and angle2
    double angle1 = Frame::angle_positive(angle - cut);
    double angle2 = Frame::angle_positive(angle + cut);
    if(angle1 <= angle2) 
	{
        	return angle1 <= target && target <= angle2;
	}
    else {
        if(angle1 <= target) {
            return angle1 <= target && angle2 <= target;
        } else {
            return target <= angle1 && target <= angle2;
        }
    }
}


/********************************************************************
 * rec() - Reconstruct tracks from clusters
 *
 * 1) Does a pre-selection of clusters to find a triplet(hits in all the 3 layers of the triplet)
 * 2) Calculates the track parameters for the above triplet 
 ********************************************************************/
void Frame::rec(unsigned int& eventID, SiDet::ptr_t &siDet)
{
using namespace NAME;
/*if(eventID==42)NAME::msg().setLevel(MSG::DEBUG);*/

	//! phi and eta  module no. of the cluste:r in layer 1,2,3 of the triplet resp. They are used for pre-selection of hits
	int Phi1_module, Phi2_module, Phi3_module;
	int Eta1_module, Eta2_module, Eta3_module;

	//! track id
	int tid[3]={0};

	//! azimuthal angles for hits in layer 1,2,3
	double phi1, phi2, phi3, phi13; 

	//! global hit co-ordinates for hits in layer 1,2,3
	double x1, x2, x3, y1, y2, y3, z1, z2, z3;
	double x12, x13, x23, y12, y13, y23, z13, det;
	int hitCount = 0;
		
	//! Loose geometry cuts for the hits in the middle 
	double kap_pull, dz2, dphi2;
	//! define variables for track parameter calculation
	//! with beamline constraint calculation
	double chord31, kappa_bml, radius_bml, pt_bml, pt_inv_bml, phi_slope, delta_phi, tau_half_bml;
	double s31_bml, stot_bml, s01_bml, slope_l_bml, theta_bml, eta_bml, z0_bml;

	//! another method for comparison
	double R013, k013, pt_n, p_n, r01, r03, r13, cross0103, phi1_bend, phi3_bend;  
	double s1, s3, s13, theta13, eta13, z013;
	double hbml, kbml, phi013;
	double charge;
	//! without beamline constraint calculation
	double d12, d23, d13, cross_prod, radius, kappa, pt, pt_inv, h, k, dca, phi_dca,e,f,g;
	double chord_l, tau_half, phi_half, s31, stot, s01, slope_l, theta, eta, z0; 

	bool isTriplet = false, isPhi_barrel = false, match = false;
	//! iterate over all the clusters in outer layer of the triplet
	for (const auto& clusters_L3 : siDet->triplet_L3)
	{
		ANA_MSG_DEBUG( "Iterating over the clusters in layer 3 of the triplet\n");
		Phi3_module = clusters_L3.phi_module;					ANA_MSG_DEBUG("Phi3_module: "<<Phi3_module);
		Eta3_module = clusters_L3.eta_module;					ANA_MSG_DEBUG("Eta3_module: "<<Eta3_module);
		hitCount    = 1;
		phi3	    = clusters_L3.phi;						ANA_MSG_DEBUG("Phi3: "<<phi3 );
		x3	    = clusters_L3.x;						ANA_MSG_DEBUG("X3: "<<x3);
		y3 	    = clusters_L3.y;						ANA_MSG_DEBUG("Y3: "<<y3);
		z3 	    = clusters_L3.z;						ANA_MSG_DEBUG("Z3: "<<z3);
		tid[2]	    = clusters_L3.tid;						ANA_MSG_DEBUG("tid3: "<<tid[2]);

		//! iterate over the clusters in the inner layer of the triplet
		for (const auto& clusters_L1 : siDet->triplet_L1)
		{
			ANA_MSG_DEBUG( "Iterating over the clusters in layer 1 of the triplet\n");
			
			//! check if this cluster in L1 lies in the same phi_module as the cluster in L3 else continue to the next cluster
			Phi1_module = clusters_L1.phi_module;				ANA_MSG_DEBUG("Phi1_module: "<<Phi1_module);
			//if(std::fabs(Phi3_module - Phi1_module) > 1) continue;                                                              
			if(Phi3_module - Phi1_module != 0) continue;                                                                                                                 
			//! check if this cluster in L1 lies in the same eta_module as the cluster in L3 else continue to the next cluster
			Eta1_module = clusters_L1.eta_module;				ANA_MSG_DEBUG("Eta1_module: "<<Eta1_module);
			if(std::fabs(std::fabs(Eta3_module) - std::fabs(Eta1_module)) > 1) continue;                                                              
			//  if(Eta3_module - Eta1_module != 0) continue;                                                                                                                  
			hitCount = 2;                                                                                                      
			phi1	  = clusters_L1.phi;					ANA_MSG_DEBUG("Phi1: "<<phi1 );
			x1        = clusters_L1.x;					ANA_MSG_DEBUG("X1: "<<x1);
			y1 	  = clusters_L1.y;					ANA_MSG_DEBUG("Y1: "<<y1);
			z1 	  = clusters_L1.z;					ANA_MSG_DEBUG("Z1: "<<z1);
			tid[0]	  = clusters_L1.tid;					ANA_MSG_DEBUG("tid1: "<<tid[0]);

		
 
			//! iterate over the clusters in middle layer of triplet
			for (const auto& clusters_L2 : siDet->triplet_L2)
			{
				ANA_MSG_DEBUG( "Iterating over the clusters in layer 2 of the triplet\n");
				//! check if this cluster in L2 lies in the same or neighbouring phi_modules as the cluster in L1,L3 else continue to the next cluster
				Phi2_module = clusters_L2.phi_module;			ANA_MSG_DEBUG("Phi2_module: "<<Phi2_module);
				//if(std::fabs(Phi2_module - Phi3_module) >  1) continue;
				if(Phi2_module - Phi3_module != 0) continue;
				//! check if this cluster in L2 lies in the same phi_module as the cluster in L1,L3 else continue to the next cluster
				Eta2_module = clusters_L2.eta_module;			ANA_MSG_DEBUG("Eta2_module: "<<Eta2_module);
                        	if(std::fabs(std::fabs(Eta2_module) - std::fabs(Eta3_module)) > 1) continue;
				//if(Eta2_module - Eta3_module != 0) continue;
				hitCount = 3;/*3 hits found*/				
				if(hitCount == 3) isTriplet = true;	
				phi2	= clusters_L2.phi;				ANA_MSG_DEBUG("Phi2: "<<phi2 );
				x2      = clusters_L2.x;    		                ANA_MSG_DEBUG("X2: "<<x2);
				y2 	= clusters_L2.y;     		                ANA_MSG_DEBUG("Y2: "<<y2);
				z2 	= clusters_L2.z;		                ANA_MSG_DEBUG("Z2: "<<z2);
				tid[1]	= clusters_L2.tid;				ANA_MSG_DEBUG("tid2: "<<tid[1]);

				x13 	= x3 - x1;					ANA_MSG_DEBUG("x13: "<<x13 );	
                                y13 	= y3 - y1;			                ANA_MSG_DEBUG("y13: "<<y13);
                                z13 	= z3 - z1;			                ANA_MSG_DEBUG("z13: "<<z13);
                                phi13   = phi3 - phi1;			                
                                if(phi13 > M_PI)                phi13 = phi13 - 2*M_PI;
                                else if(phi13 < (-1)*M_PI)      phi13 = phi13 + 2*M_PI; ANA_MSG_DEBUG("phi13: "<<phi13);
				//! Narrow sector cuts
				if (!angle_in_range(phi3, phi1, phi_barrel_cut)) continue; isPhi_barrel = true;
				if (std::fabs(z1 - z3) > z_barrel_cut) continue;

				ANA_MSG_DEBUG( "###### Triplet found for event number " << eventID << " ####### "); 
				ntriplets +=1;

				//! Check if all the clusters in this triplet have the same track id(if not assign this triplet combination as a fake combination)
				if (tid[0] == tid[1] && tid[1] == tid[2]) {match = true; ANA_MSG_DEBUG("Matched track found!!!"); }
				else {tid[1] = -1; match = false;}
				ANA_MSG_DEBUG("tid1, tid2, tid3 (:" << tid[0] << ",   " << tid[1] << ",   "<< tid[2] << ")");
				//! Calculate track parameters with beamline constraint(assumes the track originates from (0,0,z))
				
				//! another method
				r01 = hypot(x1, y1);					ANA_MSG_DEBUG("R01: "<<r01);
				r03 = hypot(x3, y3);					ANA_MSG_DEBUG("R03: "<<r03);
				r13 = hypot(x13, y13);					ANA_MSG_DEBUG("R13: "<<r13);
				cross0103 = y1*x3 - x1*y3;				ANA_MSG_DEBUG("Cross0103: "<<cross0103); 
				R013 = (0.5*r13*r01*r03)/cross0103;			ANA_MSG_DEBUG("rad013: "<<R013);
				k013 = cross0103/(0.5*r13*r01*r03);			ANA_MSG_DEBUG("kap013: "<<k013);
				pt_n = Constant*B_field*std::fabs(R013);		ANA_MSG_DEBUG("Pt_n: "<<pt_n); 
				
				phi1_bend = 2*asin(cross0103/(r13*r03));		ANA_MSG_DEBUG("Phi1_bend: "<<phi1_bend);
				phi3_bend = 2*asin(cross0103/(r13*r01));		ANA_MSG_DEBUG("Phi3_bend: "<<phi3_bend);
				s1 = R013*phi1_bend;					ANA_MSG_DEBUG("S1: "<<s1);
				s3 = R013*phi3_bend;					ANA_MSG_DEBUG("S3: "<<s3);
				s13 = s3 - s1;						ANA_MSG_DEBUG("S13: "<<s13);
				theta13 = atan2(s13, z13);				ANA_MSG_DEBUG("Theta13: "<<theta13);
				z013 = z1 - (s1/tan(theta13));				ANA_MSG_DEBUG("Z013: "<<z013);
				eta13 = -log(tan(theta13/2));				ANA_MSG_DEBUG("Eta13: "<<eta13);
				hbml = (y3*r01*r01 - y1*r03*r03)/(2*(y3*x1 - y1*x3));
				kbml = (x3*r01*r01 - x1*r03*r03)/(2*(x3*y1 - x1*y3));	//std::cout<<"\nRad, eta:"<<R013 <<", " << eta13<<"\n";
				/*double tgtslope = -hbml/kbml;
				phi013 = atan2(-hbml, kbml);
				if(R013 < 0){
					if(phi013 < M_PI) phi013 -= M_PI;
					else phi013 += M_PI;
				}*/
				phi013 = Frame::angle_positive(atan2(-hbml, kbml));	//std::cout<<" phi_Frame : " <<phi013<<"\n"; 	std::cout<<"phi_atan : " <<atan2(-hbml, kbml)<<"\n";
				if(R013>0){
					if(phi013 >M_PI) {phi013 = phi013 - M_PI;}
					else {phi013 = phi013 + M_PI;}
				}
				charge = copysign(1,k013);
				p_n = charge*(pt_n/sin(theta13));

				//! calculations in the transverse plane
				phi_slope = Frame::angle_positive(atan2(y13, x13));	ANA_MSG_DEBUG("Phi_slope: "<<phi_slope);
				delta_phi = phi_slope - phi3;
				if(delta_phi > M_PI)   	delta_phi = delta_phi - 2*M_PI;
				else if(delta_phi < (-1)*M_PI)	
				delta_phi = delta_phi + 2*M_PI;				ANA_MSG_DEBUG("Delta_phi: "<<delta_phi);
				tau_half_bml	= phi13 + delta_phi;			ANA_MSG_DEBUG("Tau_half_bml: "<<tau_half_bml);
				chord31		= hypot(x13, y13);			ANA_MSG_DEBUG("Chord31: "<<chord31);
				//kappa_bml	= (2*sin(phi13))/chord31;
				kappa_bml	= (2*sin(tau_half_bml))/hypot(x3,y3);	ANA_MSG_DEBUG("Kappa_bml: "<<kappa_bml);
				//radius_bml	= 1/kappa_bml;
				radius_bml	= hypot(x3,y3)/(2*sin(tau_half_bml));	ANA_MSG_DEBUG("Radius_bml: "<<radius_bml);
				pt_bml		= Constant*B_field*std::fabs(radius_bml);	ANA_MSG_DEBUG("Pt_bml: "<<pt_bml);
				pt_inv_bml	= (kappa_bml)*Constant*B_field;		ANA_MSG_DEBUG("Pt_inv_bml: "<<pt_inv_bml);
				
				//! calculations in the longitudinal plane
				s31_bml		= radius_bml*(2*phi13);			ANA_MSG_DEBUG("S31_bml: "<<s31_bml);
				stot_bml	= radius_bml*(2*tau_half_bml);		ANA_MSG_DEBUG("Stot_bml: "<<stot_bml);
				s01_bml		= stot_bml - s31_bml;			ANA_MSG_DEBUG("S01_bml: "<<s01_bml);
				slope_l_bml	= s31_bml/(z13);			ANA_MSG_DEBUG("Slope_l_bml: "<<slope_l_bml);
				theta_bml	= atan2(s31_bml,z13);			ANA_MSG_DEBUG("Theta_bml: "<<theta_bml);
				/*if (abs(z13)<1.1e-6F)
				eta_bml		= 0;
				else*/ eta_bml	= -log(tan(theta_bml/2));		ANA_MSG_DEBUG("Eta_bml: "<<eta_bml);
				/*if (abs(z13)<1.1e-6F)
                		z0_bml		= z1;
			        else*/ z0_bml	= z1 - (s01_bml/slope_l_bml);		ANA_MSG_DEBUG("Z0_bml: "<<z0_bml);
	
				//! Triplet Validation
				//! Loose validation cuts
				dz2 		= z2 - 0.5*(z3 + z1); 			ANA_MSG_DEBUG("Dz2: "<<dz2);
				dphi2 		= phi2 - 0.5*(phi3 + phi1); 		
				if(dphi2<-3.0)	
				{dphi2 		= dphi2 + M_PI;}
				else if(dphi2 >3.0) 
				{dphi2 		= dphi2 - M_PI;}			ANA_MSG_DEBUG("Dphi2: "<<dphi2);
				//! comment the 2 conditions below and the cut on kap_pull for wide cuts
				if(std::fabs(dz2)>dz2_barrel_cut) continue;
				if(std::fabs(dphi2)>dphi2_barrel_cut) continue;
	
				//! Hit Final selection cuts
				//! longitudinal acceptance cut
				if (std::fabs(eta13)>eta_max) continue;//1.5
				if (std::fabs(pt_n)<pt_min) continue;//1.5 GeV/c
				if (std::fabs(z013)>z0_max) continue;//20cm			
				//! Calculate track parameters without beamline constraint
				x12 = x2 - x1; x23 = x3 - x2;							ANA_MSG_DEBUG("X12; "<<x12 <<"  X23: "<<x23);
				y12 = y2 - y1; y23 = y3 - y2;							ANA_MSG_DEBUG("Y12: "<<y12 <<"  Y23: "<<y23);

				d12            	= hypot(x12,y12);						ANA_MSG_DEBUG("D12: "<<d12);
            			d23            	= hypot(x23,y23);						ANA_MSG_DEBUG("D23: "<<d23);
            			d13            	= hypot(x13,y13);						ANA_MSG_DEBUG("D13: "<<d13);
            			cross_prod	= (y12 * x23) - (y23 * x12);					ANA_MSG_DEBUG("Cross_prod: "<<cross_prod);
            			radius         	= (0.5 * d12 * d23 * d13) / cross_prod;				ANA_MSG_DEBUG("Radius: "<<radius);
            			kappa          	= 1 / radius;							ANA_MSG_DEBUG("Kappa: "<<kappa);
				//! momentum consistency cut
				kap_pull	= (kappa - k013)/sqrt(hit_const + MS_const * (1/sin(theta13)) * k013 * k013);
				if(std::fabs(kap_pull)>sigma_kmax) continue;
				pt             	= Constant * B_field * (std::fabs(radius));			ANA_MSG_DEBUG("Pt: "<<pt);
				pt_inv         	= std::fabs(kappa) / (Constant * B_field);			ANA_MSG_DEBUG("Pt_inv: "<<pt_inv);
				det		= 2 * (x12 * y13 - y12 * x13);					ANA_MSG_DEBUG("Det: "<<det);
				e		= x12*(x1+x2) + y12*(y1+y2);
				f		= x13*(x1+x3) + y13*(y1+y3);
				g		= 2*(x12*y23 - y12*x23);
				if(g==0)	{h = 0; k =0;}
				h		= (y13*e - y12*f)/g;
				k		= (x12*f - x13*e)/g;
				//h		= ((y13 * d12 * d12) - (y12 * d13 * d13) )/det;	ANA_MSG_DEBUG("H: "<<h);
				//k		= ((x12 * d13 * d13) - (x13 * d12 * d12))/det;	ANA_MSG_DEBUG("K: "<<k);
				if(radius>0){
				dca		= std::fabs(radius) - hypot(h,k);				ANA_MSG_DEBUG("Dca: "<<dca);
				}
				else dca        = hypot(h,k) - std::fabs(radius);
				phi_dca        	= atan2(-h, k);							ANA_MSG_DEBUG("Phi_dca: "<<phi_dca);
				chord_l        	= hypot((x3 - dca), (y3 - dca));				ANA_MSG_DEBUG("Chord_l: "<<chord_l);
				tau_half       	= asin(0.5 * chord_l * kappa);					ANA_MSG_DEBUG("Tau_half: "<<tau_half);
				phi_half       	= asin(0.5 * chord31 * kappa);					ANA_MSG_DEBUG("Phi_half: "<<phi_half);
				stot          	= 2 * radius * tau_half;					ANA_MSG_DEBUG("Stot: "<<stot);
				s31            	= radius * phi_half;						ANA_MSG_DEBUG("S31: "<<s31);
				s01            	= stot - s31;							ANA_MSG_DEBUG("S01: "<<s01);
				slope_l        	= (s31)/(z13);							ANA_MSG_DEBUG("Slope_l: "<<slope_l);
				if(slope_l < 0)
				theta       	= M_PI + atan2(slope_l,1);
				else theta     	=  atan2(slope_l,1);						ANA_MSG_DEBUG("Theta: "<<theta);
				if(abs(z13)<1.1e-6F) 
				eta		= 0;
				else eta	= -log(tan(theta/2));						ANA_MSG_DEBUG("Eta: "<<eta);
				if (abs(z13)<1.1e-6F)
				z0		= z1;
				else z0		= z1 - (s01/slope_l);						ANA_MSG_DEBUG("Z0: "<<z0);

				//Fill variables
				F_match.push_back(match);
				Tid.push_back(tid[1]);
				Phi1.push_back(phi1);
				X1.push_back(x1);
				Y1.push_back(y1);
				Z1.push_back(z1);
				Phi3.push_back(phi3);
				X3.push_back(x3);
				Y3.push_back(y3);
				Z3.push_back(z3);
				HitCount.push_back(hitCount);
				F_isTriplet.push_back(isTriplet);
				Phi2.push_back(phi2);
				X2.push_back(x2);
				Y2.push_back(y2);
				Z2.push_back(z2);
				Phi1_Module.push_back(Phi1_module);
				Phi2_Module.push_back(Phi2_module);
				Phi3_Module.push_back(Phi3_module);
				Eta1_Module.push_back(Eta1_module);
				Eta2_Module.push_back(Eta2_module);
				Eta3_Module.push_back(Eta3_module);
				X13.push_back(x13);
				Y13.push_back(y13);
				Z13.push_back(z13);
				Phi13.push_back(phi13);
				F_phi_barrel.push_back(isPhi_barrel);
				R01.push_back(r01);
				R03.push_back(r03);
				R13.push_back(r13);
				Cross0103.push_back(cross0103);
				rad013.push_back(R013);
				kap013.push_back(k013);
				Pt_n.push_back(pt_n);
				P_n.push_back(p_n);
				Charge.push_back(charge);
				Phi1_bend.push_back(phi1_bend);
				Phi3_bend.push_back(phi3_bend);
				S1.push_back(s1);
				S3.push_back(s3);
				S13.push_back(s13);
				Theta13.push_back(theta13);
				Z013.push_back(z013);
				Eta13.push_back(eta13);
				Hbml.push_back(hbml);
				Kbml.push_back(kbml);
				Phi013.push_back(phi013);
				Phi_slope.push_back(phi_slope);
				Delta_phi.push_back(delta_phi);
				Tau_half_bml.push_back(tau_half_bml);
				Chord31.push_back(chord31);
				Kappa_bml.push_back(kappa_bml);
				Radius_bml.push_back(radius_bml);
				Pt_bml.push_back(pt_bml);
				Pt_inv_bml.push_back(pt_inv_bml);
				S31_bml.push_back(s31_bml);
				Stot_bml.push_back(stot_bml);
				S01_bml.push_back(s01_bml);
				Slope_l_bml.push_back(slope_l_bml);
				Theta_bml.push_back(theta_bml);
				Eta_bml.push_back(eta_bml);
				Z0_bml.push_back(z0_bml);
				Kappa_pull.push_back(kap_pull);
				Dz2.push_back(dz2);
				Dphi2.push_back(dphi2);
				X12.push_back(x12);X23.push_back(x23);
				Y12.push_back(y12);Y23.push_back(y23);
				D12.push_back(d12);
				D23.push_back(d23);
				D13.push_back(d13);
				Cross_prod.push_back(cross_prod);
				Radius.push_back(radius);
				Kappa.push_back(kappa);
				Pt.push_back(pt);
				Pt_inv.push_back(pt_inv);
				Det.push_back(det);
				H.push_back(h);
				K.push_back(k);
				Dca.push_back(dca);
				Phi_dca.push_back(phi_dca);
				Chord_l.push_back(chord_l);
				Tau_half.push_back(tau_half);
				Phi_half.push_back(phi_half);
				Stot.push_back(stot);
				S31.push_back(s31);
				S01.push_back(s01);
				Slope_l.push_back(slope_l);
				Theta.push_back(theta);
				Eta.push_back(eta);
				Z0.push_back(z0);
			
			}// end of loop over triplet_L2

		}// end of loop over triplet_L3

	}// end of loop over triplet_L1
  ANA_MSG_DEBUG("no. of triplets found in this event = " << ntriplets );

}//end of function rec()

