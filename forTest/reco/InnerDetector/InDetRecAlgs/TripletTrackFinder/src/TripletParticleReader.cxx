///////////////////////////////////////////////////////////////////
// TripletParticleReader.cxx, (c) ATLAS Detector software
///////////////////////////////////////////////////////////////////

// Tracking
#include "TripletTrackFinder/TripletParticleReader.h"
#include "CxxUtils/make_unique.h"
#include "GaudiKernel/MsgStream.h"
#include "StoreGate/StoreGateSvc.h"
#include "GaudiKernel/ServiceHandle.h"

//================ Constructor =================================================

TripletParticleReader::TripletParticleReader(const std::string& name, ISvcLocator* pSvcLocator) : AthAlgorithm(name,pSvcLocator),
//m_xaodout("InDetTrackParticles"),m_xauxout(""),
m_rec(0),
d0(0),z0(0),phi(0),theta(0),qOverP(0),
M_dca(0),M_z0(0),M_phi(0),M_theta(0),M_p(0),M_charge(0)
{

  // algorithm steering
  declareProperty("InputFileName"       , m_inputFileName);
  declareProperty("InputTreeName"       , m_inputTreeName);
  //declareProperty("TripletParticleCollection", m_xaodout);

}

//================ Destructor =================================================

TripletParticleReader::~TripletParticleReader()
{
}

void TripletParticleReader::fill(xAOD::TrackParticle &tp) 
{
        tp.setDefiningParameters( d0, z0, phi, theta, qOverP );
        return;
}

void TripletParticleReader::print( const xAOD::TrackParticle &tp) 
{
        std::cout << "d0 = " << tp.d0() << ", z0 = " << tp.z0() << ", phi0 = " << tp.phi0() << ", theta = " << tp.theta() << ", qOverP = " << tp.qOverP() << std::endl;
        return;
}


//================ Initialisation =================================================

StatusCode TripletParticleReader::initialize()
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
  /*if(!m_xaodout.name().empty() && m_xauxout.name().empty())
  {
    m_xauxout = SG::WriteHandle<xAOD::TrackParticleAuxContainer>(m_xaodout.name() + "Aux.");
  }*/

 //! Check if you can get a handle over the Histogram Service
  ServiceHandle<ITHistSvc> histSvc("THistSvc",name());
  CHECK( histSvc.retrieve() );
  m_inputFile = TFile::Open(m_inputFileName.c_str(), "read");
  // retrieve the Tree
  //CHECK(histSvc->getTree(m_inputTreeName,m_rec));
  //CHECK(m_inputFile->getTree(m_inputTreeName,m_rec));
  m_rec = (TTree*)m_inputFile->Get(m_inputTreeName.c_str());
  // set the ROOT branch address 
  m_rec->SetBranchAddress("dca", &M_dca);
  m_rec->SetBranchAddress("Z013", &M_z0);
  m_rec->SetBranchAddress("Phi013", &M_phi);
  m_rec->SetBranchAddress("Theta13", &M_theta);
  m_rec->SetBranchAddress("P_n", &M_p);
  m_rec->SetBranchAddress("Charge", &M_charge);
  
  return StatusCode::SUCCESS;
}

//================ Finalisation =================================================

StatusCode TripletParticleReader::finalize()
{
  return StatusCode::SUCCESS;
}


//================ Execution ====================================================

StatusCode TripletParticleReader::execute()
{
  ATH_MSG_INFO ("executing ReadRDO");
  d0=0; 
  z0=0; 
  phi=0;
  theta=0;
  qOverP=0;
  M_dca->clear();
  M_z0->clear();
  M_phi->clear();
  M_theta->clear();
  M_p->clear();
  M_charge->clear();

  Long64_t nentries;
  nentries = m_rec->GetEntries();
  // Read the event from the Tree / NTuple
  for(int i = 0; i<nentries; ++i)
  {
	m_rec->GetEntry(i);
  }
  // Create a new TrackParticle container
  // Create the main containers to test:
  //m_xaodout = CxxUtils::make_unique<xAOD::TrackParticleContainer>();
  //m_xauxout = CxxUtils::make_unique<xAOD::TrackParticleAuxContainer>();
  xAOD::TrackParticleContainer *m_xaodout = new xAOD::TrackParticleContainer();
  xAOD::TrackParticleAuxContainer *m_xauxout = new xAOD::TrackParticleAuxContainer();
  /*if(!m_xaodout.isValid() || !m_xauxout.isValid())
  {
     ATH_MSG_ERROR("Error creating key " << m_xaodout.name());
     return StatusCode::FAILURE;
  }
  m_xaodout->setStore(m_xauxout.ptr()); */

  // loop over the track paricle information, create one TrackParticle per info 
  /// push it into the collection 
  for(size_t xi=0; xi<M_p->size(); ++xi )
  {
	d0 = (*M_dca)[xi];
	z0 = (*M_z0)[xi];
	phi = (*M_phi)[xi];
	theta = (*M_theta)[xi];
	qOverP = (*M_charge)[xi]/std::abs((*M_p)[xi]);
	// Add one track particle to the container:
	xAOD::TrackParticle* p = new xAOD::TrackParticle();
	//tpc.push_back( p );

	// Fill it with information:
	fill( *p );
	m_xaodout->push_back( p );

	// Print the information:
	print( *p );
  }
  // Record to store gate
  //m_sgSvc->record(m_xaodout.ptr(),"InDetTrackParticles");
  //m_sgSvc->record(m_xauxout.ptr(),"InDetTrackParticlesAux.");
  //m_sgSvc->overwrite(m_xaodout,"InDetTrackParticles");
  //m_sgSvc->overwrite(m_xauxout,"InDetTrackParticlesAux.");
  CHECK(m_sgSvc->record(m_xaodout,"TPCollection",false));
  CHECK(m_sgSvc->record(m_xauxout,"TPCollectionAux.",false));
  
  m_xaodout->setStore(m_xauxout);

  return StatusCode::SUCCESS;  
}
