#Tue Jan 29 18:57:40 2019"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class InDet__BeamPipeBuilder( ConfigurableAlgTool ) :
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
    'BeamPipeFromGeoModel' : True, # bool
    'BeamPipeManager' : 'BeamPipe', # str
    'BeamPipeEnvelope' : 1.0000000, # float
    'BeamPipeOffsetX' : 0.0000000, # float
    'BeamPipeOffsetY' : 0.0000000, # float
    'BeamPipeRadius' : 33.100000, # float
    'BeamPipeHalflength' : 2700.0000, # float
    'BeamPipeThickness' : 1.0000000, # float
    'BeamPipeX0' : 352.80000, # float
    'BeamPipeAverageA' : 9.0120000, # float
    'BeamPipeAverageZ' : 4.0000000, # float
    'BeamPipeAverageRho' : 0.0018480000, # float
    'BeamPipeMaterialBinsZ' : 1, # int
    'Identification' : 'BeamPipe', # str
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__BeamPipeBuilder, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometry'
  def getType( self ):
      return 'InDet::BeamPipeBuilder'
  pass # class InDet__BeamPipeBuilder

class InDet__RobustTrackingGeometryBuilder( ConfigurableAlgTool ) :
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
    'BeamPipeBuilder' : PublicToolHandle('InDet::BeamPipeBuilder/AtlasBeamPipeBuilder'), # GaudiHandle
    'LayerBuilders' : PublicToolHandleArray([]), # GaudiHandleArray
    'LayerBinningType' : [  ], # list
    'ColorCodes' : [  ], # list
    'EnvelopeDefinitionSvc' : ServiceHandle('AtlasEnvelopeDefSvc'), # GaudiHandle
    'VolumeEnclosureCylinderRadii' : [  ], # list
    'VolumeEnclosureDiscPositions' : [  ], # list
    'TrackingVolumeCreator' : PublicToolHandle('Trk::CylinderVolumeCreator/CylinderVolumeCreator'), # GaudiHandle
    'LayerArrayCreator' : PublicToolHandle('Trk::LayerArrayCreator/LayerArrayCreator'), # GaudiHandle
    'EnvelopeCover' : 2.0000000, # float
    'BuildBoundaryLayers' : True, # bool
    'ReplaceAllJointBoundaries' : True, # bool
    'OutwardsFraction' : 0.75000000, # float
    'IndexStaticLayers' : True, # bool
    'VolumeNamespace' : 'InDet::', # str
    'ExitVolumeName' : 'InDet::Containers::InnerDetector', # str
    'isSLHC' : False, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__RobustTrackingGeometryBuilder, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometry'
  def getType( self ):
      return 'InDet::RobustTrackingGeometryBuilder'
  pass # class InDet__RobustTrackingGeometryBuilder

class InDet__SiLayerBuilder( ConfigurableAlgTool ) :
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
    'PixelCase' : True, # bool
    'SiDetManagerLocation' : 'Pixel', # str
    'SetLayerAssociation' : True, # bool
    'BarrelAdditionalLayerRadii' : [  ], # list
    'BarrelAdditionalLayerType' : [  ], # list
    'BarrelLayerBinsZ' : 100, # int
    'BarrelLayerBinsPhi' : 1, # int
    'BarrelEnvelope' : 0.10000000, # float
    'BarrelEdbTolerance' : 0.050000000, # float
    'EndcapRingLayout' : False, # bool
    'EndcapAdditionalLayerPositionsZ' : [  ], # list
    'EndcapAdditionalLayerType' : [  ], # list
    'EndcapLayerBinsR' : 100, # int
    'EndcapLayerBinsPhi' : 1, # int
    'EndcapEnvelope' : 0.10000000, # float
    'EndcapComplexRingBinning' : True, # bool
    'Identification' : 'Pixel', # str
    'SplitMode' : 0, # int
    'SplitTolerance' : 10.000000, # float
    'GeometryValidation' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__SiLayerBuilder, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometry'
  def getType( self ):
      return 'InDet::SiLayerBuilder'
  pass # class InDet__SiLayerBuilder

class InDet__StagedTrackingGeometryBuilder( ConfigurableAlgTool ) :
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
    'LayerBuilders' : PublicToolHandleArray([]), # GaudiHandleArray
    'LayerBinningTypeCenter' : [  ], # list
    'LayerBinningTypeEndcap' : [  ], # list
    'ColorCodes' : [  ], # list
    'EnvelopeDefinitionSvc' : ServiceHandle('AtlasEnvelopeDefSvc'), # GaudiHandle
    'VolumeEnclosureCylinderRadii' : [  ], # list
    'VolumeEnclosureDiscPositions' : [  ], # list
    'TrackingVolumeCreator' : PublicToolHandle('Trk::CylinderVolumeCreator/CylinderVolumeCreator'), # GaudiHandle
    'LayerArrayCreator' : PublicToolHandle('Trk::LayerArrayCreator/LayerArrayCreator'), # GaudiHandle
    'EnvelopeCover' : 2.0000000, # float
    'BuildBoundaryLayers' : True, # bool
    'ReplaceAllJointBoundaries' : True, # bool
    'IndexStaticLayers' : True, # bool
    'CheckForRingLayout' : False, # bool
    'VolumeNamespace' : 'InDet::', # str
    'ExitVolumeName' : 'InDet::Containers::InnerDetector', # str
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__StagedTrackingGeometryBuilder, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometry'
  def getType( self ):
      return 'InDet::StagedTrackingGeometryBuilder'
  pass # class InDet__StagedTrackingGeometryBuilder

class InDet__TRT_LayerBuilder( ConfigurableAlgTool ) :
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
    'TRT_DetManagerLocation' : 'TRT', # str
    'LayerThickness' : 0.10000000, # float
    'BarrelLayerBinsZ' : 25, # int
    'BarrelLayerBinsPhi' : 1, # int
    'EndcapLayerBinsR' : 25, # int
    'EndcapLayerBinsPhi' : 1, # int
    'ModelLayersOnly' : True, # bool
    'ModelBarrelLayers' : 7, # int
    'ModelEndcapLayers' : 14, # int
    'EndcapConly' : False, # bool
    'RegisterStraws' : False, # bool
    'BarrelSectorAtPi' : 16, # int
    'Identification' : 'TRT', # str
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__TRT_LayerBuilder, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometry'
  def getType( self ):
      return 'InDet::TRT_LayerBuilder'
  pass # class InDet__TRT_LayerBuilder
