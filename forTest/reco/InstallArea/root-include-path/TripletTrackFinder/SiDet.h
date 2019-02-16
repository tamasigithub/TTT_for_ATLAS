/*!
 * \file
 * \brief The Silicon Detector class
 */
#ifndef TRIPLETTRACKFINDER_SIDET_H_
#define TRIPLETTRACKFINDER_SIDET_H_

#include "InDetPrepRawData/PixelClusterContainer.h"
#include "InDetPrepRawData/SCT_ClusterContainer.h"
#include "InDetIdentifier/PixelID.h"
#include "InDetIdentifier/SCT_ID.h"
#include "TrkTruthData/PRD_MultiTruthCollection.h"

#include <AsgTools/MessageCheck.h>

#include <iostream>
#include <list>
#include <unordered_map>
#include <memory>//for smart pointers
#include <vector>

ANA_MSG_HEADER (NAME_)

class SiDet
{
public:
    //! Total no. of layers in detector simulation
    static constexpr int LAYER_N = 3;
    //! Length of the Nth layer
    static double LAYER_L[LAYER_N];
    //! Radius of the Nth layer
    static double LAYER_R[LAYER_N];
    ///////// TODO: Get field strength from ATLAS geometry description///////////////
    //! Magnetic field strength in Tesla
    static constexpr double B = 2.0f;
	
    uint32_t m_ID;             		uint32_t id[3]    = {0};
    double m_x;                      	double X[3] 	  = {0};
    double m_y;                     	double Y[3] 	  = {0};
    double m_z;                      	double Z[3] 	  = {0};
    int m_barrel;                   	int Barrel[3] 	  = {0};
    int m_layer;                    	int Layer[3] 	  = {0};
    int m_phi_module;               	int Phi_module[3] = {0};
    int m_eta_module;               	int Eta_module[3] = {0};
    double m_r;                      	double R[3] 	  = {0};
    double m_phi;                    	double Phi[3] 	  = {0};
    int m_barcode;			int TID[3]	  = {0};
       public:
    /*!
     * \brief ptr_t - SiDet shared pointer.
     */
    typedef typename std::shared_ptr<SiDet> ptr_t;//typedef to give a new name and typename to specify that it is a type and not a variable.

    /*!
     * \brief A Struct - Cluster
     * conatains cluster information
     */
     struct Cluster
     {
     	typedef typename std::vector<Cluster*> vector_t;
	uint32_t clusterID;
     	double 	x, y, z;
	int	barrel, layer, phi_module, eta_module;
	double 	r, phi;
	int tid; //barcode
	int hid; // hit no. for a given particle(which is unique in an event)

	Cluster() = default;
	Cluster(uint32_t& clID, double& X, double& Y, double& Z, int& Barrel, int& Layer, int& PhiMod, int& EtaMod, double& R, double& Phi, int& Tid, int Hid):clusterID(clID),x(X),y(Y),z(Z),barrel(Barrel),layer(Layer),phi_module(PhiMod),eta_module(EtaMod),r(R),phi(Phi),tid(Tid),hid(Hid){}
     };// end of struct Cluster

    //! vector of Clusters sorted according to the detector layer in which they lie. Here triplet_L1 = layer no. 4, triplet_L2 = layer no. 5, triplet_L3 = layer no.6
    std::vector<Cluster> triplet_L1;
    std::vector<Cluster> triplet_L2;
    std::vector<Cluster> triplet_L3;

public:
    SiDet() = default;
    ~SiDet() = default;
    
    //! get cluster information from cluster container to struct Cluster
    void get_Cluster(const InDet::SCT_ClusterContainer* cluster_cnt, const SCT_ID *SCTHelper, const PRD_MultiTruthCollection* prdMTColl, SiDet::ptr_t &siDet);
    void print_triplets(const std::vector<Cluster>& triplet);
//delete the default copy constructor and assignment operator
private:
    SiDet(const SiDet&) = delete;
    SiDet& operator=(const SiDet&) = delete;

}; // end of class SiDet
#endif /*TRIPLETTRACKFINDER_SIDET_H_*/
