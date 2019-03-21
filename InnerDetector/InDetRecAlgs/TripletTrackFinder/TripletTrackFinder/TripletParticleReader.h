///////////////////////////////////////////////////////////////////
// TripletParticleReader.h, (c) ATLAS Detector software
///////////////////////////////////////////////////////////////////
#ifndef TRIPLETTRACKFINDER_TRIPLETPARTICLEREADER_H_
#define TRIPLETTRACKFINDER_TRIPLETPARTICLEREADER_H_

// Gaudi includes
#include "AthenaBaseComps/AthAlgorithm.h"
//#include "GaudiKernel/IRndmGenSvc.h"
//#include "GaudiKernel/RndmGenerators.h"
#include "GaudiKernel/ToolHandle.h"
#include "GaudiKernel/ITHistSvc.h"
#include <string>
#include <vector>
//#include "MagFieldInterfaces/IMagFieldSvc.h"
//#include "TrkParameters/TrackParameters.h"
#include "TFile.h"
#include "TChain.h"
#include "TTree.h"
#include "xAODTracking/TrackParticle.h"
#include "xAODTracking/TrackParticleContainer.h"
#include "xAODTracking/TrackParticleAuxContainer.h"
 
class StoreGateSvc;
class TripletParticleReader : public AthAlgorithm
{
public:

	/** Standard Athena-Algorithm Constructor */
	TripletParticleReader(const std::string &name, ISvcLocator* pSvcLocator);

	/** Default Destructor */
	~TripletParticleReader();
	//! Function filling one TrackParticle with information
	void fill(xAOD::TrackParticle &tp);
	//! Function printing the properties of a TrackParticle
	void print( const xAOD::TrackParticle &tp );
	/** calculate the equivalent angle in the [0, 2*pi) range */
	template<typename T>
	inline T angle_pos(T a)
	{
    		return a - static_cast<T>(2*M_PI) * std::floor(a / static_cast<T>(2*M_PI));
    	}

	/** calculate the equivalent angle in the [-pi, pi] range */
	template<typename T>
	inline T angle_sym(T a)
	{
		return a - static_cast<T>(2*M_PI) * std::floor((a + static_cast<T>(M_PI)) / static_cast<T>(2*M_PI));
	}


	/** standard Athena-Algorithm method */
	StatusCode          initialize();
	/** standard Athena-Algorithm method */
	StatusCode          execute();
	/** standard Athena-Algorithm method */
	StatusCode          finalize();

private:
	bool 		m_overwrite;
	std::string 	m_tpContainer;
	std::string 	m_tttContainer;
	std::string 	m_combTPContainer;
	std::string 	m_TTTtruthTPContainer;
	std::string 	m_infokey;
	unsigned int 	m_event;
	TFile* 	m_inputFile = nullptr;
	std::string 	m_inputFileName;
	std::string 	m_inputTreeName;
	std::string 	m_inputTruthTreeName;
	//std::string 	m_inputFiles = "/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/user.tkar/*.root";
	StoreGateSvc*  	m_sgSvc;
	//SG::WriteHandle<xAOD::TrackParticleContainer> m_xaodout;
	//SG::WriteHandle<xAOD::TrackParticleAuxContainer> m_xauxout;
	//TChain 		m_rec;
	TTree* m_rec;
	TTree* m_truth;
	Long64_t 	nentries;
	Long64_t 	nTruthentries;

	/// Add all the branches you need ... here
	//! trackParticle attributes
	float d0;
	float z0;
	float phi;
	float theta;
	float qOverP;
	unsigned int eventNo;
	int barcode;
	int status; 	
	int pdg;	
	float m_pt; 	
	float m_p;	
	float m_theta;
	float m_eta;
	float m_phi;	
	float m_Vx;	
	float m_Vy;	
	float m_Vz;		
	std::vector<double> *M_dca;
	std::vector<double> *M_z0;
	std::vector<double> *M_phi;
	std::vector<double> *M_theta;
	std::vector<double> *M_p;
	std::vector<double> *M_charge;
	std::vector<int> *MC_barcode;
	std::vector<int> *MC_status;
	std::vector<int> *MC_pdg;
	std::vector<double> *MC_pt;
	std::vector<double> *MC_p;
	std::vector<double> *MC_theta;
	std::vector<double> *MC_eta;
	std::vector<double> *MC_phi;
	std::vector<double> *MC_Vx;
	std::vector<double> *MC_Vy;
	std::vector<double> *MC_Vz;
	//! local variables for m_truthTree branches 
	unsigned int TTTtrutheventNo;// in principle same as eventNo above.. remove it later if not needed..
	std::vector<int> *TTTtruth_barcode;
	std::vector<int> *TTTtruth_status;
	std::vector<int> *TTTtruth_pdg;
	std::vector<int> *TTTtruth_charge;
	std::vector<double> *TTTtruth_pt;
	std::vector<double> *TTTtruth_p;
	std::vector<double> *TTTtruth_theta;
	std::vector<double> *TTTtruth_eta;
	std::vector<double> *TTTtruth_phi;
	std::vector<double> *TTTtruth_Vx;
	std::vector<double> *TTTtruth_Vy;
	std::vector<double> *TTTtruth_Vz;
	std::vector<double> *TTTtruth_rad;
	std::vector<double> *TTTtruth_kap;
	std::vector<double> *TTTtruth_dca;

}; 
#endif /*TRIPLETTRACKFINDER_TRIPLETPARTICLEREADER_H_*/
