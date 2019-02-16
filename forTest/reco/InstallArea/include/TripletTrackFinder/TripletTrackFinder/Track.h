/*!
 *  \file
 *  \brief The Particle Track class
 */
#ifndef TRIPLETTRACKFINDER_TRACK_H_
#define TRIPLETTRACKFINDER_TRACK_H_

#include "InDetPrepRawData/SCT_ClusterContainer.h"
#include "InDetIdentifier/SCT_ID.h"
#include "TrkTruthData/PRD_MultiTruthCollection.h"
#include "HepMC/GenParticle.h"
#include "HepMC/GenVertex.h"

#include "TripletTrackFinder/SiDet.h"
#include "TripletTrackFinder/Frame.h"//included just for the function Angle positive(define it in SiDet?)

#include <AsgTools/MessageCheck.h>

#include <iostream>
#include <list>
#include <unordered_map>
#include <memory>//for smart pointers
#include <vector>

ANA_MSG_HEADER (TRACK_)

class Track
{
public:
/*!
 * \brief map_t - Unordered map with key as tid( type -> int) and value Track.
 */
  //typedef typename std::unordered_map<int, Track> map_t;//typedef to give a new name and typename to specify that it is a type and not a variable.
  SiDet::Cluster::vector_t clusters;

public:
  //! Particle properties
  std::vector<int>      Barcode;
  std::vector<int>      Pdg;
  std::vector<int>      Charge;
  std::vector<int>      Status;
  std::vector<double>   Mass;
  std::vector<double>   Pt;
  std::vector<double>	P;
  std::vector<double>	Rad;
  std::vector<double>	Kap;
  std::vector<double>   Theta;
  std::vector<double>   Eta;
  std::vector<double>   Phi;
  std::vector<double>   Vx;
  std::vector<double>   Vy;
  std::vector<double>   Vz;
  std::vector<double>   Dca;

public:
  Track()  = default;
  ~Track() = default;

    //! get cluster information from cluster container to struct Cluster
  //Track get_ParticleInfo(const InDet::SCT_ClusterContainer* cluster_cnt, const SCT_ID *SCTHelper, const PRD_MultiTruthCollection* prdMTColl,Track::map_t &tracks);
  void get_ParticleInfo(const InDet::SCT_ClusterContainer* cluster_cnt, const SCT_ID *SCTHelper, const PRD_MultiTruthCollection* prdMTColl);
//delete the default copy constructor and assignment operator
private:
  Track(const Track&) = delete;
  Track& operator=(const Track&) = delete;
};
#endif /*TRIPLETTRACKFINDER_TRACK_H_*/
