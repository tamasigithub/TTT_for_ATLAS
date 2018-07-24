///////////////////////////////////////////////////////////////////
// SCT_SmearedDigitizationTool.h
//   Header file for class SCT_SmearedDigitizationTool
///////////////////////////////////////////////////////////////////
// (c) ATLAS Detector software
///////////////////////////////////////////////////////////////////
// Top algorithm class for SCT fast smeared digitization
///////////////////////////////////////////////////////////////////

#ifndef FASTSIDIGITIZATION_SCTSMEAREDDIGITIZATIONTOOL_H
#define FASTSIDIGITIZATION_SCTSMEAREDDIGITIZATIONTOOL_H

#include "PileUpTools/PileUpToolBase.h"
#include "GaudiKernel/ToolHandle.h"
#include "GaudiKernel/ServiceHandle.h"
#include "GaudiKernel/AlgTool.h"
#include "InDetConditionsSummaryService/IInDetConditionsSvc.h"
#include "SiPropertiesSvc/ISiPropertiesSvc.h"
#include "AthenaKernel/IAtRndmGenSvc.h"
#include "AthenaBaseComps/AthAlgorithm.h"
#include "InDetSimData/InDetSimDataCollection.h"
#include "FastSiDigitization/ISCT_SmearedDigitizationTool.h"

#include "HitManagement/TimedHitCollection.h"
#include "InDetSimEvent/SiHit.h"
#include "InDetSimEvent/SiHitCollection.h"

#include "InDetPrepRawData/SCT_ClusterContainer.h"

#include "TrkTruthData/PRD_MultiTruthCollection.h"

#include "GaudiKernel/ITHistSvc.h"
#include "EventPrimitives/EventPrimitives.h"

#include "TH2F.h"
#include "TFile.h"


#include <tuple>
typedef std::tuple< Amg::Vector2D, InDet::SiWidth, Amg::MatrixX * > ClusterInfo;

class SCT_ID;

namespace InDetDD{class SiDetectorElement;}
namespace CLHEP {class HepRandomEngine;}

namespace InDet {
  class SCT_Cluster;
  class ISCT_ClusteringTool;
  class SiCluster;
}

namespace InDetDD
{
  class SCT_DetectorManager;
}

class SCT_SmearedDigitizationTool : virtual public PileUpToolBase, 
  virtual public ISCT_SmearedDigitizationTool
{

public:

  /** Constructor with parameters */
  SCT_SmearedDigitizationTool( const std::string& type,
			    const std::string& name,
			    const IInterface* parent );
  StatusCode initialize();
  StatusCode prepareEvent(unsigned int);
  StatusCode processBunchXing( int bunchXing,
			       PileUpEventInfo::SubEvent::const_iterator bSubEvents,
			       PileUpEventInfo::SubEvent::const_iterator eSubEvents ); 
  StatusCode processAllSubEvents();
  StatusCode mergeEvent();
  
  typedef std::multimap<IdentifierHash, const InDet::SCT_Cluster*> SCT_detElement_RIO_map;
     
  StatusCode digitize();
  StatusCode createAndStoreRIOs();
  StatusCode retrieveTruth();
  StatusCode finalize();

  template<typename CLUSTER> 
    StatusCode FillTruthMap(PRD_MultiTruthCollection*, CLUSTER*, TimedHitPtr<SiHit>); 
  
 private:
  TimedHitCollection<SiHit>* m_thpcsi;      
  ServiceHandle <IAtRndmGenSvc> m_rndmSvc;             //!< Random number service
  
  const InDetDD::SCT_DetectorManager* m_manager_sct;
  
  const SCT_ID* m_sct_ID;                             //!< Handle to the ID helper
  
  CLHEP::HepRandomEngine*    m_randomEngine;
  std::string                m_randomEngineName;         //!< Name of the random number stream
  
  InDet::SCT_ClusterContainer*  m_sctClusterContainer;               //!< the SCT_ClusterContainer
  
  ServiceHandle<PileUpMergeSvc> m_mergeSvc;      /**< PileUp Merge service */
    
  PRD_MultiTruthCollection* m_prdTruthCollection;
  std::string               m_prdTruthName;
                        
  TFile* m_file;

  TH2F*  m_XY;

  SiHitCollection* m_simHitColl;
  std::string      m_inputObjectName;     //! name of the sub event  hit collections. 
  
  std::vector<std::pair<unsigned int, int> > m_seen;
  std::list<SiHitCollection*> m_siHitCollList;
  
  SCT_detElement_RIO_map* m_sctClusterMap;
//       
  double m_sigmaX; // mm
  double m_sigmaY; // mm
  
  std::string                           m_siClustersName;
  int  m_nClusters;
  int  m_nTruthClusters;
  
  SCT_SmearedDigitizationTool();
  SCT_SmearedDigitizationTool(const SCT_SmearedDigitizationTool&);
  
  SCT_SmearedDigitizationTool& operator=(const SCT_SmearedDigitizationTool&);
   
   
};

#endif // FASTSIDIGITIZATION_SCTSMEAREDDIGITIZATIONTOOL_H
