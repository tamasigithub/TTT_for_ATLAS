#Tue Jul 17 15:50:54 2018"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class InDet__ClusterMakerTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'UsePixelCalibCondDB' : True, # bool
    'PixelCalibSvc' : ServiceHandle('PixelCalibSvc'), # GaudiHandle
    'PixelOfflineCalibSvc' : ServiceHandle('PixelOfflineCalibSvc'), # GaudiHandle
    'CorrectLorentzShift' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'UsePixelCalibCondDB' : """ Compute deposited charge in Pixels """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__ClusterMakerTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::ClusterMakerTool'
  pass # class InDet__ClusterMakerTool

class InDet__MergedPixelsTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'globalPosAlg' : PublicToolHandle('InDet::ClusterMakerTool'), # GaudiHandle
    'posStrategy' : 0, # int
    'errorStrategy' : 1, # int
    'acceptDiagonalClusters' : 1, # int
    'splitClusters' : 0, # int
    'UsePixelModuleMap' : True, # bool
    'UseSpecialPixelMap' : True, # bool
    'PixelConditionsSummarySvc' : ServiceHandle('PixelConditionsSummarySvc'), # GaudiHandle
    'EmulateSplitting' : False, # bool
    'MinimalSplitSize' : 1, # int
    'MaximalSplitSize' : 1000, # int
    'MinimalSplitProbability' : 0.0000000, # float
    'SplitProbTool' : PublicToolHandle(''), # GaudiHandle
    'ClusterSplitter' : PublicToolHandle(''), # GaudiHandle
    'DoIBLSplitting' : False, # bool
    'SplitClusterAmbiguityMap' : 'SplitClusterAmbiguityMap', # str
    'DoMergeBrokenClusters' : False, # bool
    'DoRemoveClustersWithToTequalSize' : False, # bool
    'DoCheckSizeBeforeMerging' : False, # bool
    'BeamSpread' : 200.00000, # float
    'LossProbability' : 0.0010000000, # float
    'MinPixelEfficiency' : 0.90000000, # float
    'ToTMinCut' : [ 0 , 0 , 0 , 0 , 0 , 0 , 0 ], # list
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'ToTMinCut' : """ Minimum ToT cut [IBL, b-layer, L1, L2, Endcap, DBM, ITk extra """,
    'UsePixelModuleMap' : """ Use bad modules map """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'UseSpecialPixelMap' : """ Use bad pixel map """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__MergedPixelsTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::MergedPixelsTool'
  pass # class InDet__MergedPixelsTool

class InDet__NnClusterizationFactory( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'CoolFolder' : '/PIXEL/PixelClustering/PixelClusNNCalib', # str
    'LayerInfoHistogram' : 'LayersInfo', # str
    'LayerPrefix' : 'Layer', # str
    'LayerWeightIndicator' : '_weights', # str
    'LayerThresholdIndicator' : '_thresholds', # str
    'NetworkToHistoTool' : PublicToolHandle('Trk::NeuralNetworkToHistoTool/NeuralNetworkToHistoTool'), # GaudiHandle
    'PixelCalibSvc' : ServiceHandle('PixelCalibSvc'), # GaudiHandle
    'LoadNoTrackNetwork' : True, # bool
    'LoadWithTrackNetwork' : False, # bool
    'useToT' : True, # bool
    'addIBL' : False, # bool
    'doRunI' : False, # bool
    'useRecenteringNNWithoutTracks' : False, # bool
    'useRecenteringNNWithTracks' : False, # bool
    'correctLorShiftBarrelWithoutTracks' : 0.0000000, # float
    'correctLorShiftBarrelWithTracks' : 0.0000000, # float
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__NnClusterizationFactory, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::NnClusterizationFactory'
  pass # class InDet__NnClusterizationFactory

class InDet__NnPixelClusterSplitProbTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'NnClusterizationFactory' : PublicToolHandle('InDet::NnClusterizationFactory/NnClusterizationFactory'), # GaudiHandle
    'BeamCondSv' : ServiceHandle('BeamCondSvc'), # GaudiHandle
    'PriorMultiplicityContent' : [ 2793337.00000000 , 82056.00000000 , 19944.00000000 ], # list
    'useBeamSpotInfo' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__NnPixelClusterSplitProbTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::NnPixelClusterSplitProbTool'
  pass # class InDet__NnPixelClusterSplitProbTool

class InDet__NnPixelClusterSplitter( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'NnClusterizationFactory' : PublicToolHandle('InDet::NnClusterizationFactory/NnClusterizationFactory'), # GaudiHandle
    'BeamCondSv' : ServiceHandle('BeamCondSvc'), # GaudiHandle
    'ThresholdSplittingIntoTwoClusters' : 0.95000000, # float
    'ThresholdSplittingIntoThreeClusters' : 0.90000000, # float
    'SplitOnlyOnBLayer' : True, # bool
    'useBeamSpotInfo' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__NnPixelClusterSplitter, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::NnPixelClusterSplitter'
  pass # class InDet__NnPixelClusterSplitter

class InDet__PixelGangedAmbiguitiesFinder( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'InternalSolving' : False, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'InternalSolving' : """ Standalone resolution of ganged pixel ambiguities """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__PixelGangedAmbiguitiesFinder, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::PixelGangedAmbiguitiesFinder'
  pass # class InDet__PixelGangedAmbiguitiesFinder

class InDet__SCT_ClusteringTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'globalPosAlg' : PublicToolHandle('InDet::ClusterMakerTool'), # GaudiHandle
    'errorStrategy' : 1, # int
    'checkBadChannels' : True, # bool
    'conditionsService' : ServiceHandle('SCT_ConditionsSummarySvc'), # GaudiHandle
    'timeBins' : '', # str
    'majority01X' : False, # bool
    'innermostBarrelX1X' : False, # bool
    'innertwoBarrelX1X' : False, # bool
    'useRowInformation' : False, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__SCT_ClusteringTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::SCT_ClusteringTool'
  pass # class InDet__SCT_ClusteringTool

class InDet__TotPixelClusterSplitter( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'PixelCalibSvc' : ServiceHandle('PixelCalibSvc'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__TotPixelClusterSplitter, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::TotPixelClusterSplitter'
  pass # class InDet__TotPixelClusterSplitter

class InDet__TruthClusterizationFactory( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'IncidentService' : ServiceHandle('IncidentSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in BichselSimTool """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__TruthClusterizationFactory, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::TruthClusterizationFactory'
  pass # class InDet__TruthClusterizationFactory

class InDet__TruthPixelClusterSplitProbTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'NnClusterizationFactory' : PublicToolHandle('InDet::NnClusterizationFactory/TruthClusterizationFactory'), # GaudiHandle
    'BeamCondSv' : ServiceHandle('BeamCondSvc'), # GaudiHandle
    'PriorMultiplicityContent' : [ 2793337.00000000 , 82056.00000000 , 19944.00000000 ], # list
    'useBeamSpotInfo' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__TruthPixelClusterSplitProbTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::TruthPixelClusterSplitProbTool'
  pass # class InDet__TruthPixelClusterSplitProbTool

class InDet__TruthPixelClusterSplitter( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'NnClusterizationFactory' : PublicToolHandle('InDet::NnClusterizationFactory/TruthClusterizationFactory'), # GaudiHandle
    'BeamCondSv' : ServiceHandle('BeamCondSvc'), # GaudiHandle
    'ThresholdSplittingIntoTwoClusters' : 0.95000000, # float
    'ThresholdSplittingIntoThreeClusters' : 0.90000000, # float
    'SplitOnlyOnBLayer' : True, # bool
    'useBeamSpotInfo' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__TruthPixelClusterSplitter, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SiClusterizationTool'
  def getType( self ):
      return 'InDet::TruthPixelClusterSplitter'
  pass # class InDet__TruthPixelClusterSplitter
