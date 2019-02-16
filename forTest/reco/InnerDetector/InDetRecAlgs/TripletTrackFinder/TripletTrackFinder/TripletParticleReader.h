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
#include "TTree.h"
#include "xAODTracking/TrackParticle.h"
#include "xAODTracking/TrackParticleContainer.h"
#include "xAODTracking/TrackParticleAuxContainer.h"
 
class StoreGateSvc;
class TripletParticleReader : public AthAlgorithm
  {
  public:

     /** Standard Athena-Algorithm Constructor */
     TripletParticleReader(const std::string& name, ISvcLocator* pSvcLocator);
     
     /** Default Destructor */
     ~TripletParticleReader();
     //! Function filling one TrackParticle with information
     void fill(xAOD::TrackParticle& tp);
     //! Function printing the properties of a TrackParticle
     void print( const xAOD::TrackParticle& tp );
     
     /** standard Athena-Algorithm method */
     StatusCode          initialize();
     /** standard Athena-Algorithm method */
     StatusCode          execute();
     /** standard Athena-Algorithm method */
     StatusCode          finalize();

  private:
    TFile* m_inputFile = nullptr;
    std::string m_inputFileName = "/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/user.tkar/user.tkar.14778344.EXT0._000072.RDO.minbias.root";
    std::string m_inputTreeName = "recTree";
    StoreGateSvc*  m_sgSvc;
    //SG::WriteHandle<xAOD::TrackParticleContainer> m_xaodout;
    //SG::WriteHandle<xAOD::TrackParticleAuxContainer> m_xauxout;
    TTree* m_rec;
    
   /// Add all the branches you need ... here
   //! trackParticle attributes
   float d0;
   float z0;
   float phi;
   float theta;
   float qOverP;
   std::vector<double> *M_dca;
   std::vector<double> *M_z0;
   std::vector<double> *M_phi;
   std::vector<double> *M_theta;
   std::vector<double> *M_p;
   std::vector<double> *M_charge;
    

  }; 
#endif /*TRIPLETTRACKFINDER_TRIPLETPARTICLEREADER_H_*/
