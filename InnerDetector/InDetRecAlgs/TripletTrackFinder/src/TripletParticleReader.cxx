///////////////////////////////////////////////////////////////////
// TripletParticleReader.cxx, (c) ATLAS Detector software
///////////////////////////////////////////////////////////////////

// Tracking
#include "TripletTrackFinder/TripletParticleReader.h"
#include "CxxUtils/make_unique.h"
#include "GaudiKernel/MsgStream.h"
#include "StoreGate/StoreGateSvc.h"
#include "GaudiKernel/ServiceHandle.h"

#include "EventInfo/EventInfo.h"
#include "EventInfo/EventType.h"
#include "EventInfo/EventID.h"

#include <iostream>
//================ Constructor =================================================

TripletParticleReader::TripletParticleReader(const std::string& name, ISvcLocator* pSvcLocator) : AthAlgorithm(name,pSvcLocator),
//m_xaodout("InDetTrackParticles"),m_xauxout(""),
m_event(0),
/*m_rec("m_recTree")*/m_rec(0),nentries(0),
d0(0),z0(0),phi(0),theta(0),qOverP(0),
eventNo(0),M_dca(0),M_z0(0),M_phi(0),M_theta(0),M_p(0),M_charge(0)
{

  // algorithm steering
  declareProperty("OverwriteFlag"		,m_overwrite= false);
  declareProperty("TrackPcleContainerName"	,m_tpContainer= "InDetTrackParticles");
  declareProperty("TTTPcleContainerName"	,m_tttContainer= "TTTParticles");
  declareProperty("CombinedTPContainerName"	,m_combTPContainer= "InDetTTTParticles");
  declareProperty("McEventInfoKey"		,m_infokey= "McEventInfo");
  declareProperty("InputFileName"     		,m_inputFileName);
  declareProperty("InputTreeName"       	,m_inputTreeName);
  //declareProperty("InputFiles"       	,m_inputFiles);
  //declareProperty("TripletParticleCollection", m_xaodout);

}

//================ Destructor =================================================

TripletParticleReader::~TripletParticleReader()
{
}

template< typename T >
std::ostream& operator<< ( std::ostream& out,
                           const std::vector< T >& vec ) {

   out << "[";
   for( size_t i = 0; i < vec.size(); ++i ) {
      out << vec[ i ];
      if( i < vec.size() - 1 ) {
         out << ", ";
      }
   }
   out << "]";
   return out;
}
void TripletParticleReader::fill(xAOD::TrackParticle &tp) 
{
        std::cout<<"filling \n";
	tp.setDefiningParameters( d0, z0, phi, theta, qOverP );
	tp.setParametersOrigin( 0.0, 0.0, 0.0 );
	static const float covMatrix[ 15 ] = {
	   1.0, 0.0, 1.0, 0.0, 0.0,
	   1.0, 0.0, 0.0, 0.0, 1.0,
	   0.0, 0.0, 0.0, 0.0, 1.0
	};
	static const std::vector< float > covMatrixVec( covMatrix, covMatrix + 15 );
	tp.setDefiningParametersCovMatrixVec( covMatrixVec );
        return;
}

void TripletParticleReader::print( const xAOD::TrackParticle &tp) 
{
        std::cout << "printing \n d0 = " << tp.d0() << ", z0 = " << tp.z0() << ", phi0 = " << tp.phi0() << ", theta = " << tp.theta() << ", qOverP = " << tp.qOverP() << std::endl;
	std::cout << "definingParametersCovMatrixVec = " << tp.definingParametersCovMatrixVec() << std::endl;
	std::cout << "vx = " << tp.vx() << ", vy = " << tp.vy() << ", vz = " << tp.vz() << std::endl;
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

 //! Check if you can get a handle over the Histogram Service
  ServiceHandle<ITHistSvc> histSvc("THistSvc",name());
  CHECK( histSvc.retrieve() );
  m_inputFile = TFile::Open(m_inputFileName.c_str(), "read");
  m_rec = (TTree*)m_inputFile->Get(m_inputTreeName.c_str());
  //! testing if TChain works
  //m_rec.Add(m_inputFiles.c_str());
  // set the ROOT branch address 
  m_rec->SetBranchAddress("event", &eventNo);
  m_rec->SetBranchAddress("dca", &M_dca);
  m_rec->SetBranchAddress("Z013", &M_z0);
  m_rec->SetBranchAddress("Phi013", &M_phi);
  m_rec->SetBranchAddress("Theta13", &M_theta);
  m_rec->SetBranchAddress("P_n", &M_p);
  m_rec->SetBranchAddress("Charge", &M_charge);
  
  nentries = m_rec->GetEntries();
  std::cout<<"TChain init, total number of entries are : " << nentries <<std::endl;
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
  eventNo=0;
  M_dca->clear();
  M_z0->clear();
  M_phi->clear();
  M_theta->clear();
  M_p->clear();
  M_charge->clear();

  //! Create new Track Particle Container
  xAOD::TrackParticleContainer *m_xaodout = new xAOD::TrackParticleContainer();
  xAOD::TrackParticleAuxContainer *m_xauxout = new xAOD::TrackParticleAuxContainer();
  m_xaodout->setStore(m_xauxout);
  xAOD::TrackParticleContainer *mttt_xaodout = new xAOD::TrackParticleContainer();
  xAOD::TrackParticleAuxContainer *mttt_xauxout = new xAOD::TrackParticleAuxContainer();
  mttt_xaodout->setStore(mttt_xauxout);
  ATH_MSG_INFO( "creating new track particle containers");

  ATH_MSG_INFO( " m_overwrite: " << m_overwrite );
  //! Retrieve the existing TrackParticle Container 
  //! if m_overwrite=true (i.e. if you want to overwrite existing IndetTrackParticles with both the existing tracks and tracks from TTT)
  if(m_overwrite)
  {
	  const xAOD::TrackParticleContainer* tracks = 0;
	  if(evtStore()->contains< xAOD::TrackParticleContainer >(m_tpContainer))
	  {
		ATH_CHECK (evtStore()->retrieve(tracks, m_tpContainer));
	  }
	  else 
	  {
	      ATH_MSG_WARNING("xAOD::TrackParticleContainer not available (" << m_tpContainer << "). Skipping although requested.");
	      tracks = 0;
	  }
	  xAOD::TrackParticleContainer::const_iterator nextTrk(tracks->begin());
	  xAOD::TrackParticleContainer::const_iterator lastTrk(tracks->end());
	  for (; nextTrk!=lastTrk; nextTrk++) 
	  {
		xAOD::TrackParticle* particle = new xAOD::TrackParticle(**nextTrk);
		//particle = *nextTrk;
		m_xaodout->push_back( particle );

		//! print track particles before overwrite
		ATH_MSG_INFO("printing existing track particles... ");
		//print( *particle );

		//m_xaodout->push_back( new xAOD::TrackParticle(**nextTrk) );
	  }
  }
  
  const EventInfo * mcInfoptr;
  if ( m_sgSvc->retrieve(mcInfoptr, m_infokey).isFailure() ) {
    ATH_MSG_ERROR( "Could not retrieve EventInfo" );
    return StatusCode::FAILURE;
  } else{
    m_event = mcInfoptr->event_ID()->event_number();
 
    ATH_MSG_INFO( " event: " << m_event );
  }

  // Read the event from the Tree / NTuple
  for(int i = 0; i<nentries; ++i)
  {
	m_rec->GetEntry(i);
	if(eventNo == m_event) ATH_MSG_INFO(" matching event found with event number : " << eventNo);
	else  
	{
		ATH_MSG_INFO(" No matching event found with event number : " << eventNo);
		continue;
	}

  //! overwrite the newly created Track Particle Container to an existing xAOD if there is an event match
	  /*xAOD::TrackParticleContainer *m_xaodout = new xAOD::TrackParticleContainer();
	  xAOD::TrackParticleAuxContainer *m_xauxout = new xAOD::TrackParticleAuxContainer();
	  m_xaodout->setStore(m_xauxout);*/
	  // loop over the track paricle information, create one TrackParticle per info 
	  /// push it into the collection
	  std::cout<<"size of M_p: " <<M_p->size() <<std::endl;
	  if(M_p->size() < 1) break;
	  for(size_t xi=0; xi<M_p->size(); ++xi )
	  {
		d0 = M_dca->at(xi);
		z0 = M_z0->at(xi);
		phi = angle_sym(M_phi->at(xi));
		theta = M_theta->at(xi);
		qOverP = M_charge->at(xi)/std::abs(M_p->at(xi));
		std::cout<<"creating track particles with track parameters : d0, z0, phi, theta, qOverP : "<< d0 << ", " << z0 << ", " << phi << ", " << theta <<", " <<qOverP <<std::endl;
		// Add one track particle to the container:
		xAOD::TrackParticle* p = new xAOD::TrackParticle();
		m_xaodout->push_back( p );
		xAOD::TrackParticle* p1 = new xAOD::TrackParticle();
		mttt_xaodout->push_back( p1 );
		//tpc.push_back( p );
		// Fill it with information:
		fill( *p );
		fill( *p1 );

		// Print the information:
		//print( *p );
		print( *p1 );
	  }
	  break;
  }
  
  //! Record to store gate
  CHECK(m_sgSvc->record(m_xaodout,m_combTPContainer,false));
  CHECK(m_sgSvc->record(m_xauxout,m_combTPContainer+"Aux.",false));
  CHECK(m_sgSvc->record(mttt_xaodout,m_tttContainer,false));
  CHECK(m_sgSvc->record(mttt_xauxout,m_tttContainer+"Aux.",false));
  //CHECK(m_sgSvc->overwrite(m_xaodout,"InDetTrackParticles",false));
  //CHECK(m_sgSvc->overwrite(m_xauxout,"InDetTrackParticlesAux.",false));
  
  //! Retrieve the Combined TrackParticleContainer m_combTPContainer 
  //! Print them to check if they are correctly recorded or not
  /*const xAOD::TrackParticleContainer* tracks1 = 0;
  if(evtStore()->contains< xAOD::TrackParticleContainer >(m_combTPContainer))
  {
	ATH_CHECK (evtStore()->retrieve(tracks1, m_combTPContainer));
  }
  else 
  {
      ATH_MSG_WARNING("xAOD::TrackParticleContainer not available after recording (" << m_combTPContainer << "). Skipping although requested.");
      tracks1 = 0;
  }
  xAOD::TrackParticleContainer::const_iterator nextTrk1(tracks1->begin());
  xAOD::TrackParticleContainer::const_iterator lastTrk1(tracks1->end());
  for (; nextTrk1!=lastTrk1; nextTrk1++) 
  {
	xAOD::TrackParticle* particle1 = new xAOD::TrackParticle(**nextTrk1);
	//particle1 = *nextTrk1;

	//! print track particles after recording
	ATH_MSG_INFO("printing track particles from the combined container... ");
	print( *particle1 );

	//m_xaodout->push_back( new xAOD::TrackParticle(**nextTrk) );
  }
  
  const xAOD::TrackParticleContainer* tracks2 = 0;
  if(evtStore()->contains< xAOD::TrackParticleContainer >(m_tttContainer))
  {
	ATH_CHECK (evtStore()->retrieve(tracks2, m_tttContainer));
  }
  else 
  {
      ATH_MSG_WARNING("xAOD::TrackParticleContainer not available after recording (" << m_tttContainer << "). Skipping although requested.");
      tracks2 = 0;
  }
  xAOD::TrackParticleContainer::const_iterator nextTrk2(tracks2->begin());
  xAOD::TrackParticleContainer::const_iterator lastTrk2(tracks2->end());
  for (; nextTrk2!=lastTrk2; nextTrk2++) 
  {
	xAOD::TrackParticle* particle2 = new xAOD::TrackParticle(**nextTrk2);
	//particle1 = *nextTrk1;

	//! print track particles after recording
	ATH_MSG_INFO("printing track particles from the TTT container... ");
	print( *particle2 );

	//m_xaodout->push_back( new xAOD::TrackParticle(**nextTrk) );
  }*/
  return StatusCode::SUCCESS;  
}
