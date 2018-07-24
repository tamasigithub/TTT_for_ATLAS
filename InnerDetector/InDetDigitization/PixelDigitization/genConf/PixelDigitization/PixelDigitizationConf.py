#Tue Jul 17 15:51:57 2018"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class BichselSimTool( ConfigurableAlgTool ) :
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
    'DeltaRayCut' : 117.00000, # float
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(BichselSimTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'BichselSimTool'
  pass # class BichselSimTool

class CalibSvc( ConfigurableService ) :
  __slots__ = { 
    'OutputLevel' : 7, # int
    'AuditServices' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditReInitialize' : False, # bool
    'AuditReStart' : False, # bool
    'PixelCalibSvc' : ServiceHandle('PixelCalibSvc'), # GaudiHandle
    'UsePixMapCondDB' : True, # bool
    'UseCalibCondDB' : True, # bool
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'UseCalibCondDB' : """ Use calibration conditions DB """,
    'UsePixMapCondDB' : """ Use pixel map conditions DB """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(CalibSvc, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'CalibSvc'
  pass # class CalibSvc

class ChargeCollProbSvc( ConfigurableService ) :
  __slots__ = { 
    'OutputLevel' : 7, # int
    'AuditServices' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditReInitialize' : False, # bool
    'AuditReStart' : False, # bool
    'CCProbMapFileFEI3' : '3DFEI3-3E-problist-1um_v1.txt', # str
    'CCProbMapFileFEI4' : '3DFEI4-2E-problist-1um_v0.txt', # str
  }
  _propertyDocDct = { 
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(ChargeCollProbSvc, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'ChargeCollProbSvc'
  pass # class ChargeCollProbSvc

class DBMChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'numberOfSteps' : 50, # int
    'numberOfCharges' : 10, # int
    'diffusionConstant' : 0.0026500000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'numberOfSteps' : """ Geant4:number of steps for DBM """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'diffusionConstant' : """ Geant4:Diffusion Constant for DBM """,
    'numberOfCharges' : """ Geant4:number of charges for DBM """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(DBMChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'DBMChargeTool'
  pass # class DBMChargeTool

class Ibl3DBichselChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'ChargeCollProbSvc' : ServiceHandle('ChargeCollProbSvc'), # GaudiHandle
    'numberOfSteps' : 50, # int
    'doBichsel' : False, # bool
    'doBichselBetaGammaCut' : 0.10000000, # float
    'doDeltaRay' : False, # bool
    'BichselSimTool' : PublicToolHandle('BichselSimTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'doBichselBetaGammaCut' : """ minimum beta-gamma for particle to be re-simulated through Bichsel Model """,
    'numberOfSteps' : """ Number of steps for Ibl3D module """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'BichselSimTool' : """ tool that implements Bichsel model """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'doBichsel' : """ re-do charge deposition following Bichsel model """,
    'doDeltaRay' : """ whether we simulate delta-ray using Bichsel model """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(Ibl3DBichselChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'Ibl3DBichselChargeTool'
  pass # class Ibl3DBichselChargeTool

class Ibl3DChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'ChargeCollProbSvc' : ServiceHandle('ChargeCollProbSvc'), # GaudiHandle
    'numberOfSteps' : 50, # int
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'numberOfSteps' : """ Number of steps for Ibl3D module """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(Ibl3DChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'Ibl3DChargeTool'
  pass # class Ibl3DChargeTool

class IblPlanarBichselChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'numberOfSteps' : 50, # int
    'numberOfCharges' : 10, # int
    'diffusionConstant' : 0.0070000000, # float
    'doBichsel' : False, # bool
    'doBichselBetaGammaCut' : 0.10000000, # float
    'doDeltaRay' : False, # bool
    'BichselSimTool' : PublicToolHandle('BichselSimTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'doBichselBetaGammaCut' : """ minimum beta-gamma for particle to be re-simulated through Bichsel Model """,
    'numberOfSteps' : """ Geant4:number of steps for IblPlanar """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'BichselSimTool' : """ tool that implements Bichsel model """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'diffusionConstant' : """ Geant4:Diffusion Constant for IblPlanar """,
    'numberOfCharges' : """ Geant4:number of charges for IblPlanar """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'doBichsel' : """ re-do charge deposition following Bichsel model """,
    'doDeltaRay' : """ whether we simulate delta-ray using Bichsel model """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(IblPlanarBichselChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'IblPlanarBichselChargeTool'
  pass # class IblPlanarBichselChargeTool

class IblPlanarChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'numberOfSteps' : 50, # int
    'numberOfCharges' : 10, # int
    'diffusionConstant' : 0.0070000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'numberOfSteps' : """ Geant4:number of steps for IblPlanar """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'diffusionConstant' : """ Geant4:Diffusion Constant for IblPlanar """,
    'numberOfCharges' : """ Geant4:number of charges for IblPlanar """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(IblPlanarChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'IblPlanarChargeTool'
  pass # class IblPlanarChargeTool

class PixelBarrelBichselChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'numberOfSteps' : 50, # int
    'numberOfCharges' : 10, # int
    'diffusionConstant' : 0.0070000000, # float
    'doBichsel' : False, # bool
    'doBichselBetaGammaCut' : 0.10000000, # float
    'doDeltaRay' : False, # bool
    'BichselSimTool' : PublicToolHandle('BichselSimTool'), # GaudiHandle
    'OutputFileName' : 'EnergyDeposition.root', # str
    'doHITPlots' : False, # bool
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'doBichselBetaGammaCut' : """ minimum beta-gamma for particle to be re-simulated through Bichsel Model """,
    'numberOfSteps' : """ Geant4:number of steps for PixelBarrel """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'BichselSimTool' : """ tool that implements Bichsel model """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'doHITPlots' : """ whether we make hit plots """,
    'diffusionConstant' : """ Geant4:Diffusion Constant for PixelBarrel """,
    'numberOfCharges' : """ Geant4:number of charges for PixelBarrel """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'OutputFileName' : """ name of output file for customized study during digitization """,
    'doBichsel' : """ re-do charge deposition following Bichsel model """,
    'doDeltaRay' : """ whether we simulate delta-ray using Bichsel model """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelBarrelBichselChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelBarrelBichselChargeTool'
  pass # class PixelBarrelBichselChargeTool

class PixelBarrelChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'numberOfSteps' : 50, # int
    'numberOfCharges' : 10, # int
    'diffusionConstant' : 0.0070000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'numberOfSteps' : """ Geant4:number of steps for PixelBarrel """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'diffusionConstant' : """ Geant4:Diffusion Constant for PixelBarrel """,
    'numberOfCharges' : """ Geant4:number of charges for PixelBarrel """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelBarrelChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelBarrelChargeTool'
  pass # class PixelBarrelChargeTool

class PixelCellDiscriminator( ConfigurableAlgTool ) :
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
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'CalibSvc' : ServiceHandle('CalibSvc'), # GaudiHandle
    'TimeSvc' : ServiceHandle('TimeSvc'), # GaudiHandle
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in Pixel digitization """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelCellDiscriminator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelCellDiscriminator'
  pass # class PixelCellDiscriminator

class PixelChargeSmearer( ConfigurableAlgTool ) :
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
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'ThermalNoise' : 0.0000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in Pixel digitization """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ThermalNoise' : """ Thermal noise amplitude """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelChargeSmearer, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelChargeSmearer'
  pass # class PixelChargeSmearer

class PixelDigitization( ConfigurableAlgorithm ) :
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
    'DigitizationTool' : PublicToolHandle('PixelDigitizationTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'DigitizationTool' : """ PixelDigitizationTool Name """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelDigitization, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelDigitization'
  pass # class PixelDigitization

class PixelDigitizationTool( ConfigurableAlgTool ) :
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
    'PixelNoisyCellGenerator' : PublicToolHandle('PixelNoisyCellGenerator'), # GaudiHandle
    'PixelCellDiscriminator' : PublicToolHandle('PixelCellDiscriminator'), # GaudiHandle
    'PixelChargeSmearer' : PublicToolHandle('PixelChargeSmearer'), # GaudiHandle
    'PixelDiodeCrossTalkGenerator' : PublicToolHandle('PixelDiodeCrossTalkGenerator'), # GaudiHandle
    'PixelGangedMerger' : PublicToolHandle('PixelGangedMerger'), # GaudiHandle
    'PixelRandomDisabledCellGenerator' : PublicToolHandle('PixelRandomDisabledCellGenerator'), # GaudiHandle
    'SpecialPixelGenerator' : PublicToolHandle('SpecialPixelGenerator'), # GaudiHandle
    'SurfaceChargesTool' : PublicToolHandle('SurfaceChargesTool'), # GaudiHandle
    'PixelCablingSvc' : ServiceHandle('PixelCablingSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtRndmGenSvc'), # GaudiHandle
    'MergeSvc' : ServiceHandle('PileUpMergeSvc'), # GaudiHandle
    'TimeSvc' : ServiceHandle('TimeSvc'), # GaudiHandle
    'CalibSvc' : ServiceHandle('CalibSvc'), # GaudiHandle
    'OfflineCalibSvc' : ServiceHandle('PixelOfflineCalibSvc'), # GaudiHandle
    'InputObjectName' : 'PixelHits', # str
    'CreateNoiseSDO' : False, # bool
    'SpecialPixelMapKey' : 'SpecialPixelMap', # str
    'SpecialPixelMapSvc' : ServiceHandle('SpecialPixelMapSvc'), # GaudiHandle
    'ManagerName' : 'Pixel', # str
    'RDOCollName' : 'PixelRDOs', # str
    'SDOCollName' : 'PixelSDO_Map', # str
    'EventIOV' : 1, # int
    'IOVFlag' : 0, # int
    'LVL1Latency' : [  ], # list
    'ToTMinCut' : [  ], # list
    'ApplyDupli' : [  ], # list
    'LowTOTduplication' : [  ], # list
    'RndmEngine' : 'PixelDigitization', # str
    'CosmicsRun' : False, # bool
    'UseComTime' : False, # bool
    'EnableHits' : True, # bool
    'EnableNoise' : True, # bool
    'EnableSpecialPixels' : True, # bool
    'OnlyHitElements' : False, # bool
    'RDOforSPM' : False, # bool
    'HardScatterSplittingMode' : 0, # int
    'ParticleBarcodeVeto' : 2147483647, # int
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'LVL1Latency' : """ LVL1 latency (max possible ToT) """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'PixelNoisyCellGenerator' : """ PixelNoisyCellGenerator """,
    'ParticleBarcodeVeto' : """ Barcode of particle to ignore """,
    'ManagerName' : """ Pixel manager name """,
    'LowTOTduplication' : """ ToT value below which the hit is duplicated """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'ToTMinCut' : """ Minimum ToT cut (online cut) """,
    'CalibSvc' : """ Calib Svc """,
    'OnlyHitElements' : """ Process only elements with hits """,
    'ApplyDupli' : """ Duplicate low ToT hits """,
    'EventIOV' : """ Number of events per IOV """,
    'RndmSvc' : """ Random number service used in Pixel Digitization """,
    'SpecialPixelMapKey' : """ Special Pixel Map Key """,
    'RDOCollName' : """ RDO collection name """,
    'IOVFlag' : """ IOV flag - how to simulate the validity period """,
    'SurfaceChargesTool' : """ Surface charges tool """,
    'CreateNoiseSDO' : """ Set create noise SDO flag """,
    'InputObjectName' : """ Input Object name """,
    'PixelCellDiscriminator' : """ PixelCellDiscriminator """,
    'SDOCollName' : """ SDO collection name """,
    'UseComTime' : """ Use ComTime for timing """,
    'PixelCablingSvc' : """ Pixel Cabling Service """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'MergeSvc' : """ Merge service used in Pixel digitization """,
    'RDOforSPM' : """ Create RDOs for special pixels """,
    'EnableSpecialPixels' : """ Enable special pixels """,
    'PixelGangedMerger' : """ PixelGangedMerger """,
    'PixelChargeSmearer' : """ PixelChargeSmearer """,
    'TimeSvc' : """ Time Svc """,
    'CosmicsRun' : """ Cosmics run """,
    'EnableNoise' : """ Enable noise generation """,
    'EnableHits' : """ Enable hits """,
    'SpecialPixelGenerator' : """ Special pixel generator """,
    'PixelRandomDisabledCellGenerator' : """ PixelRandomDisabledCellGenerator """,
    'PixelDiodeCrossTalkGenerator' : """ PixelDiodeCrossTalkGenerator """,
    'HardScatterSplittingMode' : """ Control pileup & signal splitting """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelDigitizationTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelDigitizationTool'
  pass # class PixelDigitizationTool

class PixelDiodeCrossTalkGenerator( ConfigurableAlgTool ) :
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
    'DiodeCrossTalk' : 0.060000000, # float
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'DiodeCrossTalk' : """ Diode cross talk factor """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelDiodeCrossTalkGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelDiodeCrossTalkGenerator'
  pass # class PixelDiodeCrossTalkGenerator

class PixelECBichselChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'numberOfSteps' : 50, # int
    'numberOfCharges' : 10, # int
    'diffusionConstant' : 0.0070000000, # float
    'doBichsel' : False, # bool
    'doBichselBetaGammaCut' : 0.10000000, # float
    'BichselSimTool' : PublicToolHandle('BichselSimTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'doBichselBetaGammaCut' : """ minimum beta-gamma for particle to be re-simulated through Bichsel Model """,
    'numberOfSteps' : """ Geant4:number of steps for PixelEC """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'BichselSimTool' : """ tool that implements Bichsel model """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'diffusionConstant' : """ Geant4:Diffusion Constant for PixelEC """,
    'numberOfCharges' : """ Geant4:number of charges for PixelEC """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'doBichsel' : """ re-do charge deposition following Bichsel model """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelECBichselChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelECBichselChargeTool'
  pass # class PixelECBichselChargeTool

class PixelECChargeTool( ConfigurableAlgTool ) :
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
    'SiPropertiesSvc' : ServiceHandle('PixelSiPropertiesSvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'DisableDistortions' : False, # bool
    'numberOfSteps' : 50, # int
    'numberOfCharges' : 10, # int
    'diffusionConstant' : 0.0070000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'numberOfSteps' : """ Geant4:number of steps for PixelEC """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'DisableDistortions' : """ Disable simulation of module distortions """,
    'diffusionConstant' : """ Geant4:Diffusion Constant for PixelEC """,
    'numberOfCharges' : """ Geant4:number of charges for PixelEC """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'SiPropertiesSvc' : """ SiPropertiesSvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelECChargeTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelECChargeTool'
  pass # class PixelECChargeTool

class PixelGangedMerger( ConfigurableAlgTool ) :
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
      super(PixelGangedMerger, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelGangedMerger'
  pass # class PixelGangedMerger

class PixelLightDigitizationTool( ConfigurableAlgTool ) :
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
    'TimeSvc' : ServiceHandle('TimeSvc'), # GaudiHandle
    'InputObjectName' : '', # str
    'TimeSvc' : ServiceHandle('TimeSvc'), # GaudiHandle
    'UseLorentzAngle' : True, # bool
    'SmearingMode' : True, # bool
    'SmearingSigma' : 0.10000000, # float
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'PathCutOff' : 0.0000000, # float
    'ManagerName' : 'Pixel', # str
    'RDOCollName' : 'PixelRDOs', # str
    'SDOCollName' : 'PixelSDO_Map', # str
    'DigitizationStepper' : PublicToolHandle('Trk::PlanarModuleStepper'), # GaudiHandle
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'ManagerName' : """ Pixel manager name """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'RDOCollName' : """ RDO collection name """,
    'UseLorentzAngle' : """ Enable Lorentz angle in digi """,
    'InputObjectName' : """ Input Object name """,
    'SDOCollName' : """ SDO collection name """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'TimeSvc' : """ Time Svc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelLightDigitizationTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelLightDigitizationTool'
  pass # class PixelLightDigitizationTool

class PixelNoisyCellGenerator( ConfigurableAlgTool ) :
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
    'NoiseShape' : [  ], # list
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'MergeCharge' : False, # bool
    'SpmNoiseOccu' : 1.0000000e-05, # float
    'RndNoiseProb' : 5.0000000e-08, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'NoiseShape' : """ Vector containing noise ToT shape """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'MergeCharge' : """  """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'SpmNoiseOccu' : """ Special Pixels map gen: probability for a noisy pixel in SPM """,
    'RndNoiseProb' : """ Random noisy pixels, amplitude from calib. - NOT special pixels! """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelNoisyCellGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelNoisyCellGenerator'
  pass # class PixelNoisyCellGenerator

class PixelRandomDisabledCellGenerator( ConfigurableAlgTool ) :
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
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'TotalBadChannels' : 0.0090000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'RndmSvc' : """ Random Number Service used in Pixel digitization """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(PixelRandomDisabledCellGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'PixelRandomDisabledCellGenerator'
  pass # class PixelRandomDisabledCellGenerator

class SpecialPixelGenerator( ConfigurableAlgTool ) :
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
    'SpmNoiseProb' : 1.0000000e-05, # float
    'SpmNoBumpProb' : 0.00050000000, # float
    'SpmDisableProb' : 2.0000000e-05, # float
    'SpmBadTOTProb' : 0.00050000000, # float
    'SpecialPixelMapSvc' : ServiceHandle('SpecialPixelMapSvc'), # GaudiHandle
    'UsePixCondSum' : True, # bool
    'PixelConditionsSummarySvc' : ServiceHandle('PixelConditionsSummarySvc'), # GaudiHandle
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'CalibSvc' : ServiceHandle('CalibSvc'), # GaudiHandle
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'SpmBadTOTProb' : """ Special Pixels map gen: probability for corrupted TOT """,
    'CalibSvc' : """ Calib Svc """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'SpmNoBumpProb' : """ Special Pixels map gen: probability for pixel with out bump """,
    'SpmNoiseProb' : """ Special Pixels map gen: probability for a noisy pixel """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'SpmDisableProb' : """ Special Pixels map gen: probability for a disabled pixel """,
    'UsePixCondSum' : """ Use PixelConditionsSummarySvc """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SpecialPixelGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'SpecialPixelGenerator'
  pass # class SpecialPixelGenerator

class SurfaceChargesTool( ConfigurableAlgTool ) :
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
    'PixelBarrelChargeTool' : PublicToolHandle('PixelBarrelChargeTool'), # GaudiHandle
    'PixelECChargeTool' : PublicToolHandle('PixelECChargeTool'), # GaudiHandle
    'IblPlanarChargeTool' : PublicToolHandle('IblPlanarChargeTool'), # GaudiHandle
    'Ibl3DChargeTool' : PublicToolHandle('Ibl3DChargeTool'), # GaudiHandle
    'DBMChargeTool' : PublicToolHandle('DBMChargeTool'), # GaudiHandle
    'doITk' : False, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'PixelBarrelChargeTool' : """ PixelBarrelChargeTool """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'PixelECChargeTool' : """ PixelECChargeTool """,
    'Ibl3DChargeTool' : """ Ibl3DChargeTool """,
    'IblPlanarChargeTool' : """ IblPlanarChargeTool """,
    'DBMChargeTool' : """ DBMChargeTool """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'doITk' : """ Phase-II upgrade ITk flag """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SurfaceChargesTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'SurfaceChargesTool'
  pass # class SurfaceChargesTool

class TimeSvc( ConfigurableService ) :
  __slots__ = { 
    'OutputLevel' : 7, # int
    'AuditServices' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditReInitialize' : False, # bool
    'AuditReStart' : False, # bool
    'RndmSvc' : ServiceHandle('AtDSFMTGenSvc'), # GaudiHandle
    'RndmEngine' : 'PixelDigitization', # str
    'TimePerBCO' : 25.000000, # float
    'TimeBCN' : 5.0000000, # float
    'TimeJitter' : 0.0000000, # float
    'TimeZero' : 30.000000, # float
  }
  _propertyDocDct = { 
    'RndmEngine' : """ Random engine name """,
    'TimePerBCO' : """ Time per BCO - should be 25ns """,
    'TimeZero' : """ Time zero...? """,
    'RndmSvc' : """ Random Number Service used in Pixel digitization """,
    'TimeJitter' : """ Time jitter """,
    'TimeBCN' : """ Number of BCID """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TimeSvc, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'PixelDigitization'
  def getType( self ):
      return 'TimeSvc'
  pass # class TimeSvc
