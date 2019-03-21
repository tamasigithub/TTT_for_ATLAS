#include "TripletTrackFinder/Track.h"
#include <cmath>
#include "math.h"

ANA_MSG_SOURCE (TRACK_,"TRACK")
//Track Track::get_ParticleInfo(const InDet::SCT_ClusterContainer* cluster_cnt, const SCT_ID *SCTHelper, const PRD_MultiTruthCollection* prdMTColl, Track::map_t &tracks)
void Track::get_ParticleInfo(const InDet::SCT_ClusterContainer* cluster_cnt, const SCT_ID *SCTHelper, const PRD_MultiTruthCollection* prdMTColl)
{
using namespace TRACK_;
//TRACK_::msg().setLevel(MSG::DEBUG);
	ANA_MSG_DEBUG("*************** Reading SCT clusters *****************\n");
        for (const auto& clusterCollection : *cluster_cnt)
        {
                // skip empty collections
                if( clusterCollection->empty() ) continue;

                for (auto& prd : *clusterCollection)
                {
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
                                        Identifier clusterId    = i->first;
                                        HepMcParticleLink HMPL  = i->second;

					int barrel  = SCTHelper->barrel_ec(clusterId);
					int layer   = SCTHelper->layer_disk(clusterId);
                                        if(barrel!=0) {ANA_MSG_DEBUG( "Not barrel! "); continue;}
					//if(layer < 4) {ANA_MSG_DEBUG( "Not in triplet layer! "); continue;}					
					if(layer != 6) {ANA_MSG_DEBUG( "Particle did not pass the outermost triplet layer! "); continue;}					
					if ( HMPL.isValid())
                                        {
						 ANA_MSG_DEBUG( "Loop 3 HMPL valid loop ");
                                                //! https://gitlab.cern.ch/dmuller/HepMC3/blob/master/include/HepMC/FourVector.h
                                                const HepMC::GenParticle* genParticle = HMPL.cptr();
						
                                                const HepMC::GenVertex* genVertex = genParticle->production_vertex();
                                                //! Fill truth variables
                                                int barcode = HMPL.barcode();
						int pid	= genParticle->pdg_id();
						//std::cout<<"pdg : " << pid <<"\n";
						int charge;
						if (std::find(Barcode.begin(), Barcode.end(), barcode) == Barcode.end())
                                                {
							//! if leptons
							if(std::abs(pid)>10 && std::abs(pid)<20)
							{
								charge = -1*pid/std::abs(pid);
							}
							else charge = pid/std::abs(pid);
							 
							//std::cout<<"charge : " << charge <<"\n";
							/*Track& track = tracks[HMPL.barcode()];
							track.Barcode.push_back(HMPL.barcode());
                                                        track.Pdg.push_back(genParticle->pdg_id());
                                                        track.Status.push_back(genParticle->status());
                                                        track.Mass.push_back(genParticle->momentum().m());
                                                        track.Pt.push_back(genParticle->momentum().perp());
                                                        track.Theta.push_back(genParticle->momentum().theta());
                                                        track.Eta.push_back(genParticle->momentum().eta());
                                                        track.Phi.push_back(Frame::angle_positive(genParticle->momentum().phi()));
                                                        track.Vx.push_back(genVertex->position().x());
                                                        track.Vy.push_back(genVertex->position().y());
                                                        track.Vz.push_back(genVertex->position().z());*/
							Barcode.push_back(HMPL.barcode());
                                                        Pdg.push_back(pid);
                                                        Charge.push_back(charge);
                                                        Status.push_back(genParticle->status());
                                                        Mass.push_back(genParticle->momentum().m());
                                                        Pt.push_back(genParticle->momentum().perp());
                                                        Theta.push_back(genParticle->momentum().theta());
                                                        Eta.push_back(genParticle->momentum().eta());
							//std::cout<<"charge out : "<<charge <<"\n";
							P.push_back(charge*(genParticle->momentum().perp()/sin(genParticle->momentum().theta())));
                                                        Rad.push_back((charge*genParticle->momentum().perp())/(Constant*B_field));
                                                        Kap.push_back((Constant*B_field)/(charge*genParticle->momentum().perp()));
							Phi.push_back(Frame::angle_positive(genParticle->momentum().phi()));
                                                        Vx.push_back(genVertex->position().x());
                                                        Vy.push_back(genVertex->position().y());
                                                        Vz.push_back(genVertex->position().z());
							if(charge>0){ 
							Dca.push_back(hypot(genVertex->position().x(),genVertex->position().y()));
							}
							else {
							Dca.push_back(0.0 - hypot(genVertex->position().x(),genVertex->position().y()));
							}
							
						}
					}
				}//! end of prdmtcoll loop
			}//! end of prd multitruth collection validity check loop
		}//! end of cluster collection loop
	}//! end of cluster container loop
//return track;
}//! end of get Particle info
