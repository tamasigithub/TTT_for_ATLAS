#Tue Jul 17 15:51:20 2018"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class PixelFastDigitization( ConfigurableAlgorithm ) :
  __slots__ = { 
    'OutputLevel' : 0, # int
    'Enable' : True, # bool
    'ErrorMax' : 1, # int
    'ErrorCounter' : 0, # int
    'AuditAlgorithms' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditReinitialize' : False, # bool
    'AuditRestart' : False, # bool
    'AuditExecute' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditBeginRun' : False, # bool
    'AuditEndRun' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'MonitorService' : 'MonitorSvc', # str
    'RegisterForContextService' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'DigitizationTool' : PrivateToolHandle('PixelFastDigitizationTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'DigitizationTool' : """ AthAlgTool which performs the Pixel digitization """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelFastDigitization, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'FastSiDigitization'
  def getType( self ):
      return 'PixelFastDigitization'
  pass # class PixelFastDigitization

class PixelFastDigitizationTool( ConfigurableAlgTool ) :
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
    'FirstXing' : -999, # int
    'LastXing' : 999, # int
    'RndmSvc' : ServiceHandle('AtRndmGenSvc'), # GaudiHandle
    'RndmEngine' : 'FastPixelDigitization', # str
    'ClusterMaker' : PublicToolHandle('InDet::ClusterMakerTool/FatrasClusterMaker'), # GaudiHandle
    'PixelUseClusterMaker' : True, # bool
    'PixelClusterContainerName' : 'PixelClusters', # str
    'MergeSvc' : ServiceHandle('PileUpMergeSvc'), # GaudiHandle
    'TruthNamePixel' : 'PRD_MultiTruthPixel', # str
    'gangedAmbiguitiesFinder' : PublicToolHandle('InDet::PixelGangedAmbiguitiesFinder'), # GaudiHandle
    'InputObjectName' : 'PixelHits', # str
    'PixelEmulateSurfaceCharge' : True, # bool
    'PixelSmearPathSigma' : 0.010000000, # float
    'PixelSmearLandau' : True, # bool
    'PixelMinimalPathLength' : 0.020000000, # float
    'PixelPathLengthTotConversion' : 125.00000, # float
    'PixelEmulateModuleDistortion' : True, # bool
    'PixelDistortionTool' : PublicToolHandle('PixelDistortionsTool/PixelDistortionsTool'), # GaudiHandle
    'PixelErrorPhi' : [  ], # list
    'PixelErrorEta' : [  ], # list
    'PixelErrorStrategy' : 2, # int
    'PixelClusterAmbiguitiesMapName' : 'PixelClusterAmbiguitiesMap', # str
    'HardScatterSplittingMode' : 0, # int
    'ParticleBarcodeVeto' : 2147483647, # int
    'DigitizationStepper' : PublicToolHandle('Trk::PlanarModuleStepper'), # GaudiHandle
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'ParticleBarcodeVeto' : """ Barcode of particle to ignore """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in Pixel digitization """,
    'InputObjectName' : """ Input Object name """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'MergeSvc' : """ Merge service """,
    'HardScatterSplittingMode' : """ Control pileup & signal splitting """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelFastDigitizationTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'FastSiDigitization'
  def getType( self ):
      return 'PixelFastDigitizationTool'
  pass # class PixelFastDigitizationTool

class SCT_FastDigitization( ConfigurableAlgorithm ) :
  __slots__ = { 
    'OutputLevel' : 0, # int
    'Enable' : True, # bool
    'ErrorMax' : 1, # int
    'ErrorCounter' : 0, # int
    'AuditAlgorithms' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditReinitialize' : False, # bool
    'AuditRestart' : False, # bool
    'AuditExecute' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditBeginRun' : False, # bool
    'AuditEndRun' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'MonitorService' : 'MonitorSvc', # str
    'RegisterForContextService' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'DigitizationTool' : PrivateToolHandle('SCT_FastDigitizationTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'DigitizationTool' : """ AthAlgTool which performs the SCT digitization """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_FastDigitization, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'FastSiDigitization'
  def getType( self ):
      return 'SCT_FastDigitization'
  pass # class SCT_FastDigitization

class SCT_FastDigitizationTool( ConfigurableAlgTool ) :
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
    'FirstXing' : -999, # int
    'LastXing' : 999, # int
    'InputObjectName' : 'SCT_Hits', # str
    'MergeSvc' : ServiceHandle('PileUpMergeSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtRndmGenSvc'), # GaudiHandle
    'RndmEngine' : 'FastSCT_Digitization', # str
    'ClusterMaker' : PublicToolHandle('InDet::ClusterMakerTool'), # GaudiHandle
    'SCT_ClusterContainerName' : 'SCT_Clusters', # list
    'TruthNameSCT' : 'PRD_MultiTruthSCT', # list
    'SCT_SmearPathSigma' : 0.010000000, # float
    'SCT_SmearLandau' : True, # bool
    'EmulateSurfaceCharge' : True, # bool
    'SCT_ScaleTanLorentzAngle' : 1.0000000, # float
    'SCT_AnalogClustering' : False, # bool
    'SCT_ErrorStrategy' : 2, # int
    'SCT_RotateEndcapClusters' : True, # bool
    'SCT_MinimalPathLength' : 0.12000000, # float
    'HardScatterSplittingMode' : 0, # int
    'ParticleBarcodeVeto' : 2147483647, # int
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random Number Engine used in SCT digitization """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'ParticleBarcodeVeto' : """ Barcode of particle to ignore """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'InputObjectName' : """ Input Object name """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'MergeSvc' : """ Merge service """,
    'HardScatterSplittingMode' : """ Control pileup & signal splitting """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_FastDigitizationTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'FastSiDigitization'
  def getType( self ):
      return 'SCT_FastDigitizationTool'
  pass # class SCT_FastDigitizationTool

class SCT_SmearedDigitizationTool( ConfigurableAlgTool ) :
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
    'FirstXing' : -999, # int
    'LastXing' : 999, # int
    'RndmSvc' : ServiceHandle('AtRndmGenSvc'), # GaudiHandle
    'RndmEngine' : 'SCT_SmearedDigitization', # str
    'InputObjectName' : 'SCT_Hits', # str
    'ClusterContainerName' : 'SCT_Clusters', # str
    'PRD_MultiTruthName' : 'PRD_MultiTruthSCT', # str
    'SigmaX' : 0.020000000, # float
    'SigmaY' : 0.60000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in SCT & SCT_ digitization """,
    'InputObjectName' : """ Input Object name """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_SmearedDigitizationTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'FastSiDigitization'
  def getType( self ):
      return 'SCT_SmearedDigitizationTool'
  pass # class SCT_SmearedDigitizationTool

class SiSmearedDigitization( ConfigurableAlgorithm ) :
  __slots__ = { 
    'OutputLevel' : 0, # int
    'Enable' : True, # bool
    'ErrorMax' : 1, # int
    'ErrorCounter' : 0, # int
    'AuditAlgorithms' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditReinitialize' : False, # bool
    'AuditRestart' : False, # bool
    'AuditExecute' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditBeginRun' : False, # bool
    'AuditEndRun' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'MonitorService' : 'MonitorSvc', # str
    'RegisterForContextService' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'SiSmearedDigitizationTool' : PrivateToolHandle('SiSmearedDigitizationTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'SiSmearedDigitizationTool' : """ AthAlgTool which performs the Pixel or SCT smearing """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SiSmearedDigitization, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'FastSiDigitization'
  def getType( self ):
      return 'SiSmearedDigitization'
  pass # class SiSmearedDigitization

class SiSmearedDigitizationTool( ConfigurableAlgTool ) :
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
    'FirstXing' : -999, # int
    'LastXing' : 999, # int
    'RndmSvc' : ServiceHandle('AtRndmGenSvc'), # GaudiHandle
    'RndmEngine' : 'SiSmearedDigitization', # str
    'InputObjectName' : 'PixelHits', # str
    'ClusterContainerName' : 'PixelClusters', # str
    'PRD_MultiTruthName' : 'PRD_MultiTruthPixel', # str
    'SigmaX' : 0.0050000000, # float
    'SigmaY' : 0.0050000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'InputObjectName' : """ Input Object name """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SiSmearedDigitizationTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'FastSiDigitization'
  def getType( self ):
      return 'SiSmearedDigitizationTool'
  pass # class SiSmearedDigitizationTool
