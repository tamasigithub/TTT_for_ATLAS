////////////////////////////////////////////////////////////////////////////
// SCT_SmearedDigitizationTool.cxx
//   Implementation file for class SCT_SmearedDigitizationTool
////////////////////////////////////////////////////////////////////////////
// (c) ATLAS Detector software

// SCT_ digitization includes
#include "FastSiDigitization/SCT_SmearedDigitizationTool.h"

// Det Descr
#include "Identifier/Identifier.h"
#include "InDetReadoutGeometry/SCT_DetectorManager.h"
#include "InDetReadoutGeometry/SiDetectorElement.h"

#include "InDetReadoutGeometry/SiReadoutCellId.h"
#include "InDetReadoutGeometry/SiDetectorDesign.h"
#include "InDetReadoutGeometry/StripBoxDesign.h"
#include "InDetReadoutGeometry/StripStereoAnnulusDesign.h"
#include "InDetReadoutGeometry/SiCellId.h"
#include "InDetIdentifier/SCT_ID.h"
#include "InDetSimData/InDetSimDataCollection.h"

// Random numbers
#include "AtlasCLHEP_RandomGenerators/RandGaussZiggurat.h"
#include "CLHEP/Random/RandFlat.h"
#include "CLHEP/Random/RandGauss.h"
#include "CLHEP/Random/RandLandau.h"

// Gaudi includes
#include "GaudiKernel/AlgFactory.h"
#include "GaudiKernel/PropertyMgr.h"

// DataHandle
#include "StoreGate/DataHandle.h"

// Pile-up
#include "PileUpTools/PileUpMergeSvc.h"
#include "InDetPrepRawData/SCT_Cluster.h"
#include "InDetPrepRawData/SiWidth.h"
#include "InDetSimEvent/SiHitCollection.h"
#include "SiClusterizationTool/ISCT_ClusteringTool.h"
#include "InDetPrepRawData/SiClusterContainer.h"
#include "InDetPrepRawData/SiCluster.h"
#include "EventPrimitives/EventPrimitivesHelpers.h"

#include "HepMC/GenParticle.h"
#include "HepMC/GenVertex.h"

#include <cmath>

using namespace InDetDD;

// Constructor with parameters:
SCT_SmearedDigitizationTool::SCT_SmearedDigitizationTool(const std::string &type, const std::string &name, 
const IInterface* parent):

PileUpToolBase(type, name, parent),
m_thpcsi(NULL),
m_rndmSvc("AtRndmGenSvc",name),
m_manager_sct(NULL),
m_sct_ID(0),
m_randomEngine(0),
m_randomEngineName("SCT_SmearedDigitization"),
m_sctClusterContainer(0),
m_mergeSvc("PileUpMergeSvc",name),
m_prdTruthName("PRD_MultiTruthSCT_"),
m_sigmaX(0.02),
m_sigmaY(0.6)
{
  declareInterface<ISCT_SmearedDigitizationTool>(this);
  declareProperty("RndmSvc",                   m_rndmSvc, "Random Number Service used in SCT & SCT_ digitization" );
  declareProperty("RndmEngine",                m_randomEngineName, "Random engine name");
  declareProperty("InputObjectName",           m_inputObjectName="SCT_Hits", "Input Object name" );
  declareProperty("ClusterContainerName",      m_siClustersName="SCT_Clusters");
  declareProperty("PRD_MultiTruthName",        m_prdTruthName="PRD_MultiTruthSCT");
  declareProperty("SigmaX",                    m_sigmaX);
  declareProperty("SigmaY",                    m_sigmaY);
}


// Initialize method:
StatusCode SCT_SmearedDigitizationTool::initialize()
{

  ATH_MSG_DEBUG ( "---  SCT_SmearedDigitizationTool : initialize()" );

  //locate the AtRndmGenSvc and initialize our local ptr
  if (!m_rndmSvc.retrieve().isSuccess()) 
  {
    ATH_MSG_ERROR ( "Could not find given RndmSvc" );
    return StatusCode::FAILURE;
  }

  // Get the SCT_ Detector Manager
  if (StatusCode::SUCCESS != detStore()->retrieve(m_manager_sct,"SCT") ) {
    ATH_MSG_ERROR ( "Can't get SCT_DetectorManager " );
    return StatusCode::FAILURE;
  } else {
    ATH_MSG_DEBUG ( "Retrieved SCT_DetectorManager with version "  << m_manager_sct->getVersion().majorNum() );
  }
  
  if (detStore()->retrieve(m_sct_ID, "SCT_ID").isFailure()) {
    ATH_MSG_ERROR ( "Could not get SCT_ ID helper" );
    return StatusCode::FAILURE;
  }  
  
  //Get own engine with own seeds:
  m_randomEngine = m_rndmSvc->GetEngine(m_randomEngineName);
  if (!m_randomEngine) {
    ATH_MSG_ERROR( "Could not get random engine '" << m_randomEngineName << "'" );
    return StatusCode::FAILURE; 
  }
  
  if (m_inputObjectName=="") 
  {
    ATH_MSG_FATAL ( "Property InputObjectName not set !" );
    return StatusCode::FAILURE;
  } 
  else ATH_MSG_DEBUG ( "Input objects: '" << m_inputObjectName << "'" );
  
  //locate the PileUpMergeSvc and initialize our local ptr
  if (!m_mergeSvc.retrieve().isSuccess()) {
    ATH_MSG_ERROR ( "Could not find PileUpMergeSvc" );
    return StatusCode::FAILURE;
  }
                          
  
  m_file = new TFile("clusterInfo.root", "RECREATE");
  m_XY	 = new TH2F("cluster_XY","2D Histo; along length ; along width", 20, -150,150,  // X axis
			                    20, -150, 150); // Y axis

  return StatusCode::SUCCESS;
}

// Finalize method:
StatusCode SCT_SmearedDigitizationTool::finalize()
{
  ATH_MSG_DEBUG ( "--- SCT_SmearedDigitizationTool : finalize()" );
  
  m_file->cd()			;  
  m_XY->Write()			;
  return StatusCode::SUCCESS	;
}

StatusCode SCT_SmearedDigitizationTool::prepareEvent(unsigned int) 
{

  ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: prepareEvent() ---" );
  
  m_siHitCollList.clear();
  m_thpcsi = new TimedHitCollection<SiHit>();
  
  return StatusCode::SUCCESS;
}


StatusCode SCT_SmearedDigitizationTool::processBunchXing(int bunchXing,
PileUpEventInfo::SubEvent::const_iterator bSubEvents,
PileUpEventInfo::SubEvent::const_iterator eSubEvents) 
{

  ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: processBunchXing() ---" );

  m_seen.push_back(std::make_pair(std::distance(bSubEvents,eSubEvents), bunchXing));
  PileUpEventInfo::SubEvent::const_iterator iEvt(bSubEvents);
  while (iEvt != eSubEvents) {
    StoreGateSvc& seStore(*iEvt->pSubEvtSG);
    PileUpTimeEventIndex thisEventIndex(PileUpTimeEventIndex(static_cast<int>(iEvt->time()),iEvt->index()));
    const SiHitCollection* seHitColl(NULL);
    if (!seStore.retrieve(seHitColl,m_inputObjectName).isSuccess()) {
      ATH_MSG_ERROR ( "SubEvent SiHitCollection not found in StoreGate " << seStore.name() );
      return StatusCode::FAILURE;
    }

    //Copy Hit Collection
    SiHitCollection* siHitColl(new SiHitCollection(m_inputObjectName));
    SiHitCollection::const_iterator i(seHitColl->begin());
    SiHitCollection::const_iterator e(seHitColl->end());
    // Read hits from this collection
    for (; i!=e; ++i) {
      const SiHit sihit(*i);
      siHitColl->Insert(sihit);
    }
    m_thpcsi->insert(thisEventIndex, siHitColl);
    //store these for deletion at the end of mergeEvent
    m_siHitCollList.push_back(siHitColl);
    ++iEvt;


  }
  return StatusCode::SUCCESS;
}


StatusCode SCT_SmearedDigitizationTool::processAllSubEvents() {

  ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: processAllSubEvents() ---" );

  InDet::SiClusterContainer* symSiContainer=0;
  
  m_sctClusterContainer = new InDet::SCT_ClusterContainer(m_sct_ID->wafer_hash_max());
    
  if(!m_sctClusterContainer) {
    ATH_MSG_FATAL( "[ --- ] Could not create SCT_ClusterContainer");
    return StatusCode::FAILURE;
  }
  
  // --------------------------------------
  // SCT_Cluster container registration 
  m_sctClusterContainer->cleanup();
  if ((evtStore()->record(m_sctClusterContainer, m_siClustersName)).isFailure())   {
    if ((evtStore()->retrieve(m_sctClusterContainer, m_siClustersName)).isFailure())   {
      ATH_MSG_FATAL("[ hitproc ] Error while registering SCT_Cluster container");
      return StatusCode::FAILURE;
    }
  }
  
  // symlink the SCT_ Container 
  // SCT_
  if ((evtStore()->symLink(m_sctClusterContainer,symSiContainer)).isFailure()) {
    ATH_MSG_FATAL( "[ --- ] SCT_ClusterContainer could not be symlinked to SiClusterContainter in StoreGate !" );
    return StatusCode::FAILURE;
  } else {
    ATH_MSG_INFO( "[ hitproc ] SCT_ClusterContainer symlinked to SiClusterContainer in StoreGate" );
  }
    
    
  if (retrieveTruth().isFailure()) {
    ATH_MSG_FATAL ( "retrieveTruth() failed!" );
    return StatusCode::FAILURE;
  }

  //  get the container(s)
  typedef PileUpMergeSvc::TimedList<SiHitCollection>::type TimedHitCollList;
  m_simHitColl = new SiHitCollection;

  TimedHitCollList hitCollList;
  unsigned int numberOfSimHits(0);
  if ( !(m_mergeSvc->retrieveSubEvtsData(m_inputObjectName, hitCollList, numberOfSimHits).isSuccess()) && hitCollList.size()==0 ) {
    ATH_MSG_ERROR ( "Could not fill TimedHitCollList" );
    return StatusCode::FAILURE;
  } else {
    ATH_MSG_DEBUG ( hitCollList.size() << " SiHitCollections with key " << m_inputObjectName << " found" );
  }
  
  // Define Hit Collection
  TimedHitCollection<SiHit> thpcsi(numberOfSimHits);
  
  //now merge all collections into one
  TimedHitCollList::iterator   iColl(hitCollList.begin());
  TimedHitCollList::iterator endColl(hitCollList.end()  );
  
  // loop on the hit collections
  while ( iColl != endColl ) {
    const SiHitCollection* p_collection(iColl->second);
    thpcsi.insert(iColl->first, p_collection);
    ATH_MSG_DEBUG ( "SiHitCollection found with " << p_collection->size() << " hits" );
    ++iColl;
  }
  m_thpcsi = &thpcsi;
  
  m_nTruthClusters=0;

  // Process the Hits straw by straw: get the iterator pairs for given straw
  if(this->digitize().isFailure()) {
    ATH_MSG_FATAL ( "digitize method failed!" );
    return StatusCode::FAILURE;
  }
  
  if(this->mergeEvent().isFailure()) {
    ATH_MSG_FATAL ( "merge method failed!" );
    return StatusCode::FAILURE;
  }
  
  if (createAndStoreRIOs().isFailure()) {
    ATH_MSG_FATAL ( "createAndStoreRIOs() failed!" );
    return StatusCode::FAILURE;
  }
  else ATH_MSG_DEBUG ( "createAndStoreRIOs() succeeded" );
  
  return StatusCode::SUCCESS;
  
}

StatusCode SCT_SmearedDigitizationTool::retrieveTruth(){
  
  m_prdTruthCollection = new PRD_MultiTruthCollection;    
  if ((evtStore()->contains<PRD_MultiTruthCollection>(m_prdTruthName))){
    if((evtStore()->retrieve(m_prdTruthCollection, m_prdTruthName)).isFailure()){
      ATH_MSG_FATAL("Could not retrieve collection " << m_prdTruthName);
      return StatusCode::FAILURE;
    }
  } else {
    if((evtStore()->record(m_prdTruthCollection, m_prdTruthName)).isFailure()){
      ATH_MSG_FATAL("Could not record collection " << m_prdTruthName);
      return StatusCode::FAILURE;
    }
  }
 
  return StatusCode::SUCCESS;
  
}

template<typename CLUSTER> 
StatusCode SCT_SmearedDigitizationTool::FillTruthMap(PRD_MultiTruthCollection * map, CLUSTER * cluster, TimedHitPtr<SiHit> hit) {

  ATH_MSG_DEBUG("Truth map filling with cluster " << *cluster << " and link = " << hit->particleLink() << " pointer of genParticle " << (hit->particleLink()).cptr() );
  if (hit->particleLink().isValid()){
    map->insert(std::make_pair(cluster->identify(), hit->particleLink()));
    m_nTruthClusters++;
    ATH_MSG_DEBUG("Truth map filled with cluster " << *cluster << " and link = " << hit->particleLink());
  } else ATH_MSG_DEBUG("Particle link NOT valid!! Truth map NOT filled with cluster" << cluster << " and link = " << hit->particleLink());
  
  return StatusCode::SUCCESS;
}

StatusCode SCT_SmearedDigitizationTool::mergeEvent() {
  return StatusCode::SUCCESS;
}



StatusCode SCT_SmearedDigitizationTool::digitize() {
  ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: in SCT_SmearedDigizationTool::digitize() ---" );

  TimedHitCollection<SiHit>::const_iterator i, e;
  
  m_sctClusterMap = new SCT_detElement_RIO_map;
    
  while (m_thpcsi->nextDetectorElement(i, e)) {
    
    while (i != e) {
      
      TimedHitPtr<SiHit> hit(*i++);
      if (not hit->particleLink().isValid()) continue;
     
      HepMcParticleLink HMPL = hit->particleLink();
      
      if ( HMPL.isValid()) {
  
      	const HepMC::GenParticle *genParticle = HMPL.cptr(); 

      	ATH_MSG_DEBUG( " Particle with PDG "<< genParticle->pdg_id() << " Status "<< genParticle->status()<<" mass "<< genParticle->momentum().m() <<" pt "<<genParticle->momentum().perp()<<" eta "<<genParticle->momentum().eta()<<" phi "<<genParticle->momentum().phi()  ); 
      }

      int barrelEC  = hit->getBarrelEndcap();
      int layerDisk = hit->getLayerDisk();
      int phiModule = hit->getPhiModule();
      int etaModule = hit->getEtaModule();
      int side	    = hit->getSide();

      const InDetDD::SiDetectorElement* hitSiDetElement =  m_manager_sct->getDetectorElement(barrelEC,layerDisk,phiModule,etaModule,side ); 

      ATH_MSG_DEBUG("SCT SiDetectorElement --> barrel_ec " << barrelEC << ", layer_disk " << layerDisk << ", phi_module " << phiModule << ", eta_module " << etaModule ); 
            
      if ( !hitSiDetElement) {
        ATH_MSG_ERROR( " could not get detector SiDetElement");
        continue;
      }
      
      if (not hitSiDetElement->isSCT()) continue;
           
      IdentifierHash waferID = m_sct_ID->wafer_hash(hitSiDetElement->identify());
     

      /*	
      	ATLAS uses a right-handed coordinate system with its origin at the nominal interaction point (IP) in the centre of the detector
	and the z-axis along the beam pipe. The x-axis points from the IP to the centre of the LHC ring, and the y-axis points
	upwards.  Cylindrical coordinates (r, phi) are used in the transverse plane, phi being the azimuthal angle around the z-axis.
      */



      //  { xDep = 0, xPhi = 1, xEta = 2}; see SiHit.h enum
      HepGeom::Point3D<double> localStartPosition = hit->localStartPosition();
      HepGeom::Point3D<double> localEndPosition   = hit->localEndPosition();
     
      ATH_MSG_DEBUG( " hit localStartPosition = " << localStartPosition << "  hit localEndPosition = " <<localEndPosition  ); 

      ATH_MSG_DEBUG( "trying to do from hit_local to global " );
      
      HepGeom::Point3D<double> start_hitToGlobal = (hitSiDetElement->transformHit()) * localStartPosition ;
      HepGeom::Point3D<double> end_hitToGlobal   = (hitSiDetElement->transformHit()) * localEndPosition ;

     ATH_MSG_DEBUG( " hit start_hitToGlobal  = " << start_hitToGlobal  << "  hit end_hitToGlobal = " << end_hitToGlobal  );


      localStartPosition = hitSiDetElement->hitLocalToLocal3D(localStartPosition);
      localEndPosition = hitSiDetElement->hitLocalToLocal3D(localEndPosition);
       
      ATH_MSG_DEBUG( " after hitLocalToLocal3D Transform. the localStartPosition = " << localStartPosition << "  the localEndPosition = " <<localEndPosition ) ; 

      ATH_MSG_DEBUG("trying to do from Rec_local to global " );

      HepGeom::Point3D<double> start_RecLocalToGlobal = hitSiDetElement->globalPosition( localStartPosition );
      HepGeom::Point3D<double> end_RecLocalToGlobal   = hitSiDetElement->globalPosition( localEndPosition );

      ATH_MSG_DEBUG( " after Rec_local to global Transform. the start_RecLocalToGlobal  = " << start_RecLocalToGlobal  << "  the end_RecLocalToGlobal  = " << end_RecLocalToGlobal ) ;


      double localEntryX = localStartPosition.x();   	// Phi
      double localEntryY = localStartPosition.y();	// Depth
      double localEntryZ = localStartPosition.z();	// -Eta
      double localExitX = localEndPosition.x();
      double localExitY = localEndPosition.y();
      double localExitZ = localEndPosition.z();
         
      // we only consider -/+ Depth  for the moment
      if (localEntryY * localExitY > 0 ){
        continue;
      }    
     
      // first input parameter should be Phi, second input parameter should be Eta
      //
      Amg::Vector2D localEntry(localEntryX,-localEntryZ);
      Amg::Vector2D localExit(localExitX,  -localExitZ);
    
      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: start position --- " << localEntry[Trk::locX] << ",  " << localEntry[Trk::locY] << " ");
      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: exit position --- "  << localExit[Trk::locX] << ",  " << localExit[Trk::locY] << " "  );
            
      InDetDD::SiCellId entryCellId = hitSiDetElement->cellIdOfPosition(localEntry);
      InDetDD::SiCellId exitCellId  = hitSiDetElement->cellIdOfPosition(localExit);
 
      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: entryCellId " << entryCellId << " --- exitCellId " << exitCellId );

      // entry / exit validity
      bool entryValid = entryCellId.isValid();
      bool exitValid  = exitCellId.isValid();

      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: entryValid? " << entryValid << " --- exitValid? " << exitValid );

      // Noemi has commented this for the moment
      //if (!entryValid or !exitValid) continue;
      
      // the sct positions and other needed stuff for the geometrical clustering
      std::vector<Identifier> rdoList;
      
      // the intersection id and cellId of it
      // http://acode-browser2.usatlas.bnl.gov/lxr-rel20/source/atlas/InnerDetector/InDetRecTools/SiClusterizationTool/src/SCT_ClusteringTool.cxx#0462
      // Amg::Vector2D localPos(clusterDim.centre.xPhi(),clusterDim.centre.xEta());

      Amg::Vector2D avePos = 0.5*(localEntry+localExit);   
  
      ATH_MSG_DEBUG(  " initial avePos " <<  avePos ) ; 


      // correct the average position in case it is needed 
      
      
      if ( fabs(localEntryY + localExitY) > 1e-4 ){

	continue ; 
        /* 
	std::cout << " now fabs(localEntryY+localExitY) > 1e-6, so localEntryY = " << localEntryY <<  "  localExitY= " << localExitY << std::endl;  
        
        // 
        const Trk::Surface& hitSiSurface = hitSiDetElement->surface(hitSiDetElement->identify());
        // intersect the surface if necessary
        Amg::Vector3D amgStartPos(localStartPosition.x(),localStartPosition.y(),localStartPosition.z());
        Amg::Vector3D amgEndPosition(localEndPosition.x(),localEndPosition.y(),localEndPosition.z());

        // get the direction 
        Amg::Vector3D amgDirection = (amgEndPosition-amgStartPos).unit();
                
        // get the stuff from surface frame into global 3D frame
        Amg::Vector3D amgPosition3D  = hitSiSurface.transform()*amgStartPos;
        
        Amg::Vector3D amgDirection3D = hitSiSurface.transform().linear()*amgDirection;
        // intersect
        auto sIntersection = hitSiSurface.straightLineIntersection(amgPosition3D, amgDirection3D, false, true);
        
        if (!sIntersection.valid) {
          ATH_MSG_WARNING("Intersection is not valid!");          
          continue;
        }
        // get back into local
        Amg::Vector3D avePositionLocal = hitSiSurface.transform().inverse() * sIntersection.position;
        
        // update the local position
        avePos = Amg::Vector2D(avePositionLocal.x(),avePositionLocal.y());
            
	std::cout << " updated avePos " <<  avePos << std::endl;
        */ 
      } 
     

      Identifier avePosId = hitSiDetElement->identifierOfPosition(avePos);
    
      InDetDD::SiCellId avePosCellId = hitSiDetElement->cellIdFromIdentifier(avePosId);

      bool avePosValid  = avePosCellId.isValid();
      
      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: averagePosition : " << avePos[Trk::locX] << "  " << avePos[Trk::locY]);
      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: avePosValid? " << avePosValid);

      if (!avePosValid) continue;     
      
      // const InDetDD::StripBoxDesign* design = dynamic_cast<const InDetDD::StripBoxDesign*>(&hitSiDetElement->design());
    
      const InDetDD::SCT_ModuleSideDesign* design	;
      bool isB = m_sct_ID->is_barrel( avePosId )  	;	

      if ( isB  ){
      	design = (static_cast<const InDetDD::StripBoxDesign*>( &hitSiDetElement->design() ));
      } else {
	design = (static_cast<const InDetDD::StripStereoAnnulusDesign*>(&hitSiDetElement->design()));
      }    


      int nRows 	= design->diodesInRow( 0 ) 		; 
      int nStrips 	= design->diodes()/nRows		; 
      
      // the entry index in phi/eta
      int entryPhiIndex = localEntryX<0. ? 0 : nStrips-1	;
      int entryEtaIndex = localEntryY<0. ? 0 : nRows-1		;
      if (entryValid) {
        entryPhiIndex = entryCellId.phiIndex();
        entryEtaIndex = entryCellId.etaIndex();
      }
      
      // the exit index in phi/eta
      int exitEtaIndex  =  localExitY<0. ? 0 : nRows-1		;
      int exitPhiIndex  =  localExitX<0. ? 0 : nStrips-1	;

      if (exitValid) {
        exitPhiIndex = exitCellId.phiIndex();
        exitEtaIndex = exitCellId.etaIndex();
      }
            
      double pitchX = hitSiDetElement->phiPitch();
      double pitchY = hitSiDetElement->etaPitch();
         
      
      double smearPosX = avePos[Trk::locX];
      double smearPosY = avePos[Trk::locY];
      
      //       double distX = fabs(fabs(localEntry[Trk::locX])-fabs(localExit[Trk::locX]));
      //       double distY = fabs(fabs(localEntry[Trk::locY])-fabs(localExit[Trk::locY]));
      
      //the particle crosses at least n scts (in x direction you have timesX, in y direction you have timesY)
      //       int elementX = floor(distX/pitchX)+1;
      //       int elementY = floor(distY/pitchY)+1;
      
      int elementX = fabs(entryPhiIndex-exitPhiIndex)+1;
      int elementY = fabs(entryEtaIndex-exitEtaIndex)+1;
      
      double distX = fabs(fabs(localEntry[Trk::locX])-fabs(localExit[Trk::locX]));
      int N = floor(distX/pitchX)+1;

      //apply cutoff
      if (elementX>1 and (float(N)*pitchX-distX)<0.5*pitchX) elementX--;
      
      if (CLHEP::RandFlat::shoot(m_randomEngine, 0., 1.0)>0.85) elementX++;
      
      // in the sct case you smear x and y accordingly to the sigma
      // Smear intersection
      // create the smear parameter    
      double sParX = 0.;
      double sParY = 0.;       
	
      if (isB) {

      	do {
        	sParX = CLHEP::RandGauss::shoot(m_randomEngine, 0., m_sigmaX);
        	ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: extracted gaussian value for X --- " << sParX);
      	} while (fabs(smearPosX+sParX)>(hitSiDetElement->width()/2.));
      	smearPosX += sParX;
      
      	do {
        	sParY = CLHEP::RandGauss::shoot(m_randomEngine, 0., m_sigmaY);
        	ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: extracted gaussian value for Y --- " << sParY);
      	} while (fabs(smearPosY+sParY)>(hitSiDetElement->length()/2.));
      	smearPosY += sParY;
      
      	ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: elementX --- " << elementX);
      	ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: elementY --- " << elementY);
                                                    
      	ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: sigma X --- " << m_sigmaX);
      	ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: sigma Y --- " << m_sigmaY);
      }


      if ( isB )     
      	m_XY->Fill( smearPosX,smearPosY,1); 

      Amg::Vector2D smearedPos(smearPosX,smearPosY);
      
      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: Intersection after smearing: " << smearedPos[Trk::locX] << "  " << smearedPos[Trk::locY]);
      
      Identifier smearedPosId = hitSiDetElement->identifierOfPosition(smearedPos);
      
      rdoList.push_back(smearedPosId);
      InDetDD::SiCellId currentCellId = hitSiDetElement->cellIdFromIdentifier(smearedPosId);
    
      if (!currentCellId.isValid()) continue;
    
      ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: Intersection Id = " << smearedPosId << " --- currentCellId = " << currentCellId );
                       
      //--> Create SCT_ Cluster

      double lengthX = elementX*pitchX;
      double lengthY = elementY*pitchY;
      
      InDet::SiWidth* siWidth = new InDet::SiWidth(Amg::Vector2D(elementX,elementY), Amg::Vector2D(lengthX, lengthY));  
		      
      AmgSymMatrix(2) covariance;
      covariance.setIdentity();
      covariance(Trk::locX,Trk::locX) = m_sigmaX*m_sigmaX;
      covariance(Trk::locY,Trk::locY) = m_sigmaY*m_sigmaY;
      Amg::MatrixX* clusterErr = new Amg::MatrixX(covariance);

      // create the cluster
      InDet::SCT_Cluster* sctCluster = new InDet::SCT_Cluster(smearedPosId,
      smearedPos,
      rdoList,
      *siWidth,
      hitSiDetElement,
      clusterErr);

   
      ATH_MSG_DEBUG(" trying to get the cluster global position in SCT_SmearedDigitizationTool.cxx  = "<< sctCluster->globalPosition()) ;


      ATH_MSG_DEBUG(" Cluster Local Position = (" <<  sctCluster->localPosition() <<"), " );

      m_sctClusterMap->insert(std::pair<IdentifierHash, const InDet::SCT_Cluster* >(waferID, sctCluster));
	
      if (FillTruthMap(m_prdTruthCollection, sctCluster, hit).isFailure()) {
        ATH_MSG_FATAL ( "FillTruthMap() for sct failed!" );
        return StatusCode::FAILURE;
      }  
    }
  }
  return StatusCode::SUCCESS;
}


StatusCode SCT_SmearedDigitizationTool::createAndStoreRIOs() 
{
  m_nClusters = 0;
      
  ATH_MSG_DEBUG( "--- SCT_SmearedDigitizationTool: in sct createAndStoreRIOs() ---" );
    
  SCT_detElement_RIO_map::iterator i = m_sctClusterMap->begin();
  SCT_detElement_RIO_map::iterator e = m_sctClusterMap->end();
    
  for ( ; i != e; i = m_sctClusterMap->upper_bound(i->first) ) {
      
    std::pair <SCT_detElement_RIO_map::iterator, SCT_detElement_RIO_map::iterator> range;
    range = m_sctClusterMap->equal_range(i->first);
    
    SCT_detElement_RIO_map::iterator firstDetElem;
    firstDetElem = range.first;
	  
    IdentifierHash waferID;
    waferID = firstDetElem->first;
    
    const InDetDD::SiDetectorElement* detElement = m_manager_sct->getDetectorElement(waferID);
    
    InDet::SCT_ClusterCollection *clusterCollection = new InDet::SCT_ClusterCollection(waferID);
    clusterCollection->setIdentifier(detElement->identify());
      
    for ( SCT_detElement_RIO_map::iterator iter = range.first; iter != range.second; ++iter ) {
      
      InDet::SCT_Cluster* sctCluster = const_cast<InDet::SCT_Cluster*>((*iter).second);
      sctCluster->setHashAndIndex(clusterCollection->identifyHash(),clusterCollection->size());
      clusterCollection->push_back(sctCluster);
      m_nClusters++;
    }
      
    if ( m_sctClusterContainer->addCollection( clusterCollection, waferID ).isFailure() ) {
      ATH_MSG_WARNING( "Could not add collection to Identifyable container !" );
    }
  } // end for

  std::cout << " m_sctClusterContainer size ... " << m_sctClusterContainer->size() << std::endl; 

  ATH_MSG_DEBUG("--- SCT_SmearedDigitizationTool: SCT_ClusterCollection with " << m_nClusters << " sct clusters");
  ATH_MSG_DEBUG("--- SCT_SmearedDigitizationTool: TruthClusterCollection with " << m_nTruthClusters << " clusters");      
  m_sctClusterMap->clear();
  
  return StatusCode::SUCCESS;
}
