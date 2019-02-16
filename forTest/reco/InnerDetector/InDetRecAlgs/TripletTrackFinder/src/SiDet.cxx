//#include <AsgTools/MessageCheck.h>
#include "TripletTrackFinder/SiDet.h"
#include <cmath>
#include "math.h"
ANA_MSG_SOURCE (NAME_,"SiDet")

HepGeom::Point3D<double> myGlobalPosition(InDet::SCT_Cluster* cl, const SCT_ID * helper){
          
	double hitLocal_Dep 	= 0.;

        Identifier id 		= cl->identify();
        int barrel              = helper->barrel_ec(id);
        int layer               = helper->layer_disk(id);
        int phi_module          = helper->phi_module(id);
        int eta_module          = helper->eta_module(id);

	double hitLocal_Phi 	= - (cl->localPosition()).x();
	// for positive eta module, use positive sign       
	if ( eta_module > 0) {
                hitLocal_Phi =  (cl->localPosition()).x();
        }
	double hitLocal_Eta =  (cl->localPosition()).y();
	HepGeom::Point3D<double> hit3D(hitLocal_Dep, hitLocal_Phi, hitLocal_Eta );
	HepGeom::Point3D<double> glop = cl->detectorElement()->transformHit() * hit3D ;
	return glop ;
}

//Get Cluster from cluster container
void SiDet::get_Cluster(/*Cluster& cl_obj,*/ const InDet::SCT_ClusterContainer* cluster_cnt, const SCT_ID *SCTHelper, const PRD_MultiTruthCollection* prdMTColl, SiDet::ptr_t &siDet)
{

using namespace NAME_;
//NAME_::msg().setLevel(MSG::DEBUG);
//NAME_::setMsgLevel(MSG::DEBUG);
	ANA_MSG_DEBUG("*************** Reading SCT clusters *****************\n");
	for (const auto& clusterCollection : *cluster_cnt)
        {
		// skip empty collections
		if( clusterCollection->empty() ) continue;
		
		for (auto& prd : *clusterCollection)
                {
                	//ANA_MSG_DEBUG( "my cluster is " << (unsigned long) prd );
			Identifier ClusterId = prd->identify();
			if ( !ClusterId.is_valid() )
			{
				ANA_MSG_DEBUG("SCT cluster identifier is not valid \n");
			} 
		        if(prdMTColl)
			{
				auto range = prdMTColl->equal_range(ClusterId);
                                for (auto i = range.first; i != range.second; ++i)
                                {
					Identifier clusterId	= i->first;
					HepMcParticleLink HMPL	= i->second;
	
					m_ID 			= clusterId.get_compact(); 		
		//			Amg::Vector3D gpos      = prd->globalPosition();
					HepGeom::Point3D<double> gpos = myGlobalPosition(prd, SCTHelper);
					m_x			= gpos.x();				
					m_y			= gpos.y();				
					m_z			= gpos.z();				
					m_barrel		= SCTHelper->barrel_ec(clusterId);	
					m_layer			= SCTHelper->layer_disk(clusterId);	
					m_phi_module		= SCTHelper->phi_module(clusterId);	
					m_eta_module		= SCTHelper->eta_module(clusterId);	
					m_r			= hypotf(m_x, m_y);				
					m_phi			= atan2f(m_y, m_x);					
					if (m_phi < 0.0f)m_phi += double(2.0 * M_PI);
					
					if ( HMPL.isValid())
                                        {
						m_barcode = HMPL.barcode();
					}

					if (m_barrel != 0 ) {ANA_MSG_DEBUG("NOT a barrel cluster!"); continue;}
					if (m_layer == 4)
					{
						ANA_MSG_DEBUG("**** CLUSTER FOUND IN LAYER 4 ****\n");
						id[0] = m_ID; 
						X[0] = m_x; Y[0] = m_y; Z[0] = m_z;
						Barrel[0] = m_barrel; Layer[0] = m_layer; Phi_module[0] = m_phi_module; Eta_module[0] = m_eta_module;
						R[0] = m_r; Phi[0] = m_phi;
						TID[0] = m_barcode;
						ANA_MSG_DEBUG("(x1,y1,z1,phiM,EtaM) : " <<X[0] << " " << Y[0] <<"  " <<Z[0] <<"  " <<Phi_module[0] <<"  " <<Eta_module[0] <<"\n");
						siDet->triplet_L1.push_back(SiDet::Cluster(id[0],X[0],Y[0],Z[0],Barrel[0],Layer[0],Phi_module[0],Eta_module[0],R[0],Phi[0],TID[0],1));// hid = 1 if cluster is in layer 4
						//continue;
					}
					if (m_layer == 5)
					{
						ANA_MSG_DEBUG("**** CLUSTER FOUND IN LAYER 5 ****\n");
						id[1] = m_ID; 
						X[1] = m_x; Y[1] = m_y; Z[1] = m_z;
						Barrel[1] = m_barrel; Layer[1] = m_layer; Phi_module[1] = m_phi_module; Eta_module[1] = m_eta_module;
						R[1] = m_r; Phi[1] = m_phi;
						TID[1] = m_barcode;
						ANA_MSG_DEBUG("(x2,y2,z2,phiM,EtaM) : " <<X[1] << " " << Y[1] <<"  " <<Z[1] <<"  " <<Phi_module[1] <<"  " <<Eta_module[1] <<"\n");
						siDet->triplet_L2.push_back(SiDet::Cluster(id[1],X[1],Y[1],Z[1],Barrel[1],Layer[1],Phi_module[1],Eta_module[1],R[1],Phi[1],TID[1],2));
					//continue;
					}
					if (m_layer == 6)
					{
						ANA_MSG_DEBUG("**** CLUSTER FOUND IN LAYER 6 ****\n");
						id[2] = m_ID; 
						X[2] = m_x; Y[2] = m_y; Z[2] = m_z;
						Barrel[2] = m_barrel; Layer[2] = m_layer; Phi_module[2] = m_phi_module; Eta_module[2] = m_eta_module;
						R[2] = m_r; Phi[2] = m_phi;
						TID[2] = m_barcode;
						ANA_MSG_DEBUG("(x1,y1,z1,phiM,EtaM) : " <<X[2] << " " << Y[2] <<"  " <<Z[2] <<"  " <<Phi_module[2] <<"  " <<Eta_module[2] <<"\n");
						siDet->triplet_L3.push_back(SiDet::Cluster(id[2],X[2],Y[2],Z[2],Barrel[2],Layer[2],Phi_module[2],Eta_module[2],R[2],Phi[2],TID[2],3));
						//continue;
					} else {ANA_MSG_DEBUG("Barrel cluster but not in the triplet!"); continue;}
		/*ANA_MSG_DEBUG("Push back in SiDet\n");
					ANA_MSG_DEBUG("(x1,y1,z1,phiM,EtaM) : " <<X[0] << " " << Y[0] <<"  " <<Z[0] <<"  " <<Phi_module[0] <<"  " <<Eta_module[0] <<"\n");
					ANA_MSG_DEBUG("(x2,y2,z2,phiM,EtaM) : " <<X[1] << " " << Y[1] <<"  " <<Z[1] <<"  " <<Phi_module[1] <<"  " <<Eta_module[1] <<"\n");
					ANA_MSG_DEBUG("(x1,y1,z1,phiM,EtaM) : " <<X[2] << " " << Y[2] <<"  " <<Z[2] <<"  " <<Phi_module[2] <<"  " <<Eta_module[2] <<"\n");
					siDet->triplet_L1.push_back(SiDet::Cluster(id[0],X[0],Y[0],Z[0],Barrel[0],Layer[0],Phi_module[0],Eta_module[0],R[0],Phi[0]));
					siDet->triplet_L2.push_back(SiDet::Cluster(id[1],X[1],Y[1],Z[1],Barrel[1],Layer[1],Phi_module[1],Eta_module[1],R[1],Phi[1]));
					siDet->triplet_L3.push_back(SiDet::Cluster(id[2],X[2],Y[2],Z[2],Barrel[2],Layer[2],Phi_module[2],Eta_module[2],R[2],Phi[2]));
		*/
				}//! end of prdmtcoll loop

			}//! end of prd multitruth collection validity check loop

		}
		ANA_MSG_DEBUG("end of cluster loop \n");

	}
	ANA_MSG_DEBUG("end of get cluster \n");
}// end of get_Cluster
void SiDet::print_triplets(const std::vector<Cluster>& triplet)
{
using namespace NAME_;
//NAME_::msg().setLevel(MSG::DEBUG);
	if(triplet.empty()) ANA_MSG_DEBUG("Sorry empty triplet \n");
	else 
	  for(unsigned int count = 0; count<triplet.size(); count++)
	  {
	  	ANA_MSG_DEBUG("Printing triplets\n");
		ANA_MSG_DEBUG("x : " << triplet[count].x);
		ANA_MSG_DEBUG("y : " << triplet[count].y);
		ANA_MSG_DEBUG("z : " << triplet[count].z);
		ANA_MSG_DEBUG("barrel : " << triplet[count].barrel);
		ANA_MSG_DEBUG("layer : " << triplet[count].layer);
		ANA_MSG_DEBUG("phi_module : " << triplet[count].phi_module);
		ANA_MSG_DEBUG("eta_module : " << triplet[count].eta_module);
		ANA_MSG_DEBUG("r : " << triplet[count].r);
		ANA_MSG_DEBUG("phi : " << triplet[count].phi);
		ANA_MSG_DEBUG("ID : " << triplet[count].clusterID);
		ANA_MSG_DEBUG("Barcode : " << triplet[count].tid);
		ANA_MSG_DEBUG("Hid: " << triplet[count].hid);	

	  }
}
