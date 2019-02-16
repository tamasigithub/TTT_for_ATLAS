#Tue Jan 29 18:58:13 2019"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class PixelCablingSvc( ConfigurableService ) :
  __slots__ = { 
    'OutputLevel' : 7, # int
    'AuditServices' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditReInitialize' : False, # bool
    'AuditReStart' : False, # bool
    'MappingType' : 'COOL', # str
    'MappingFile' : 'Pixels_Atlas_IdMapping_2016.dat', # str
    'Bandwidth' : 0, # int
    'Coral_Connectionstring' : 'oracle://ATLAS_COOLPROD/ATLAS_COOLONL_PIXEL', # str
    'DictionaryTag' : 'PIXEL', # str
    'ConnectivityTag' : 'PIT-ALL-V39', # str
    'KeyFEI4' : '/PIXEL/HitDiscCnfg', # str
    'Key' : '/PIXEL/ReadoutSpeed', # str
    'KeyCabling' : '/PIXEL/CablingMap', # str
    'DumpMapToFile' : False, # bool
  }
  _propertyDocDct = { 
    'Key' : """ Key=/PIXEL/ReadoutSpeed """,
    'KeyCabling' : """ Key=/PIXEL/CablingMap """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelCablingSvc, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelCabling'
  def getType( self ):
      return 'PixelCablingSvc'
  pass # class PixelCablingSvc

class PixelFillCablingData( ConfigurableAlgTool ) :
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
      super(PixelFillCablingData, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelCabling'
  def getType( self ):
      return 'PixelFillCablingData'
  pass # class PixelFillCablingData

class PixelFillCablingData_Final( ConfigurableAlgTool ) :
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
      super(PixelFillCablingData_Final, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelCabling'
  def getType( self ):
      return 'PixelFillCablingData_Final'
  pass # class PixelFillCablingData_Final
