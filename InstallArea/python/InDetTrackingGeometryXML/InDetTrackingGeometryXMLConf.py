#Tue Jan 29 18:56:04 2019"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class InDet__BarrelBuilderXML( ConfigurableAlgTool ) :
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
    'InDetXMLReader' : ServiceHandle('InDet::XMLReaderSvc/InDetXMLReaderSvc'), # GaudiHandle
    'StaveBuilder' : PublicToolHandle('InDet::StaveBuilderXML/StaveBuilderXML'), # GaudiHandle
    'ModuleProvider' : PublicToolHandle('InDet::SiModuleProvider/SiModuleProvider'), # GaudiHandle
    'BarrelLayerBinsZ' : 100, # int
    'BarrelLayerBinsPhi' : 1, # int
    'CustomMaterial' : False, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__BarrelBuilderXML, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometryXML'
  def getType( self ):
      return 'InDet::BarrelBuilderXML'
  pass # class InDet__BarrelBuilderXML

class InDet__EndcapBuilderXML( ConfigurableAlgTool ) :
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
    'InDetXMLReader' : ServiceHandle('InDet::XMLReaderSvc/InDetXMLReaderSvc'), # GaudiHandle
    'ModuleProvider' : PublicToolHandle('InDet::SiModuleProvider/SiModuleProvider'), # GaudiHandle
    'EndcapLayerBinR' : 50, # int
    'EndcapLayerBinPhi' : 1, # int
    'CustomMaterial' : False, # bool
    'DiscEnvelope' : 0.100000, # float
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__EndcapBuilderXML, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometryXML'
  def getType( self ):
      return 'InDet::EndcapBuilderXML'
  pass # class InDet__EndcapBuilderXML

class InDet__GMXReaderSvc( ConfigurableService ) :
  __slots__ = { 
    'OutputLevel' : 7, # int
    'AuditServices' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditReInitialize' : False, # bool
    'AuditReStart' : False, # bool
    'dictionaryFileName' : 'MyFolder/IDTest.xml', # str
    'GMX_InputName' : 'ITkStrip.gmx', # str
    'createXMLDictionary' : True, # bool
    'addBCL' : False, # bool
    'addCMOS' : True, # bool
  }
  _propertyDocDct = { 
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__GMXReaderSvc, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometryXML'
  def getType( self ):
      return 'InDet::GMXReaderSvc'
  pass # class InDet__GMXReaderSvc

class InDet__LayerProviderXML( ConfigurableAlgTool ) :
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
    'Identification' : 'Pixel', # str
    'InDetXMLReader' : ServiceHandle('InDet::XMLReaderSvc/InDetXMLReaderSvc'), # GaudiHandle
    'PixelBarrelBuilder' : PublicToolHandle('InDet::BarrelBuilderXML/PixelsBarrelBuilder'), # GaudiHandle
    'SCTBarrelBuilder' : PublicToolHandle('InDet::BarrelBuilderXML/SCTBarrelBuilder'), # GaudiHandle
    'PixelEndcapBuilder' : PublicToolHandle('InDet::EndcapBuilderXML/PixelEndcapBuilder'), # GaudiHandle
    'SCTEndcapBuilder' : PublicToolHandle('InDet::EndcapBuilderXML/SCTEndcapBuilder'), # GaudiHandle
    'ModuleProvider' : PublicToolHandle('InDet::SiModuleProvider/SiModuleProvider'), # GaudiHandle
    'doPix' : True, # bool
    'doSCT' : True, # bool
    'startLayer' : 0, # int
    'endLayer' : -1, # int
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__LayerProviderXML, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometryXML'
  def getType( self ):
      return 'InDet::LayerProviderXML'
  pass # class InDet__LayerProviderXML

class InDet__SiModuleProvider( ConfigurableAlgTool ) :
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
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__SiModuleProvider, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometryXML'
  def getType( self ):
      return 'InDet::SiModuleProvider'
  pass # class InDet__SiModuleProvider

class InDet__StaveBuilderXML( ConfigurableAlgTool ) :
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
    'InDetXMLReader' : ServiceHandle('InDet::XMLReaderSvc/InDetXMLReaderSvc'), # GaudiHandle
    'ModuleProvider' : PublicToolHandle('InDet::SiModuleProvider/SiModuleProvider'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__StaveBuilderXML, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometryXML'
  def getType( self ):
      return 'InDet::StaveBuilderXML'
  pass # class InDet__StaveBuilderXML

class InDet__XMLReaderSvc( ConfigurableService ) :
  __slots__ = { 
    'OutputLevel' : 7, # int
    'AuditServices' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditReInitialize' : False, # bool
    'AuditReStart' : False, # bool
    'dictionaryFileName' : 'IDTest.xml', # str
    'XML_Materials' : 'Materials.xml', # str
    'XML_PixelModules' : 'PixelModules.xml', # str
    'XML_PixelStaves' : 'PixelStaves.xml', # str
    'XML_PixelBarrelLayers' : 'PixelBarrelLayers.xml', # str
    'XML_PixelEndcapLayers' : 'PixelEndcapLayers.xml', # str
    'XML_SCTModules' : 'SCTModules.xml', # str
    'XML_SCTStaves' : 'SCTStaves.xml', # str
    'XML_SCTBarrelLayers' : 'SCTBarrelLayers.xml', # str
    'XML_SCTEndcapLayers' : 'SCTEndcapLayers.xml', # str
    'doPix' : True, # bool
    'doSCT' : True, # bool
    'isGMX' : False, # bool
    'createXMLDictionary' : True, # bool
    'readXMLfromDB' : False, # bool
  }
  _propertyDocDct = { 
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(InDet__XMLReaderSvc, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'InDetTrackingGeometryXML'
  def getType( self ):
      return 'InDet::XMLReaderSvc'
  pass # class InDet__XMLReaderSvc
