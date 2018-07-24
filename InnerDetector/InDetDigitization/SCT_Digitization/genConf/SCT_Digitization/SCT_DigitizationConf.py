#Tue Jul 17 15:50:18 2018"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class SCT_Amp( ConfigurableAlgTool ) :
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
    'CrossFactor2sides' : 0.100000, # float
    'CrossFactorBack' : 0.0700000, # float
    'PeakTime' : 21.0000, # float
    'deltaT' : 1.00000, # float
    'Tmin' : -25.0000, # float
    'Tmax' : 150.000, # float
    'NbAverage' : 0, # int
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_Amp, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_Amp'
  pass # class SCT_Amp

class SCT_DetailedSurfaceChargesGenerator( ConfigurableAlgTool ) :
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
    'FixedTime' : -999.000, # float
    'SubtractTime' : -999.000, # float
    'SurfaceDriftTime' : 10.0000, # float
    'NumberOfCharges' : 1, # int
    'SmallStepLength' : 5.00000, # float
    'ChargeDriftModel' : 1, # int
    'EFieldModel' : 2, # int
    'DepletionVoltage' : 70.000000, # float
    'BiasVoltage' : 150.00000, # float
    'MagneticField' : -2.0000000, # float
    'SensorTemperature' : 273.15000, # float
    'TransportTimeStep' : 0.25000000, # float
    'TransportTimeMax' : 25.000000, # float
    'SiConditionsSvc' : ServiceHandle('SCT_SiliconConditionsSvc'), # GaudiHandle
    'SiPropertiesSvc' : ServiceHandle('SCT_SiPropertiesSvc'), # GaudiHandle
    'doDistortions' : False, # bool
    'SCTDistortionsTool' : PublicToolHandle('SCT_DistortionsTool'), # GaudiHandle
    'doHistoTrap' : False, # bool
    'doTrapping' : False, # bool
    'Fluence' : 0.0000000, # float
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'Fluence' : """ Fluence for charge trapping effect """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'SCTDistortionsTool' : """ Tool to retrieve SCT distortions """,
    'doHistoTrap' : """ Allow filling of histos for charge trapping effect """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'doTrapping' : """ Simulation of charge trapping effect """,
    'doDistortions' : """ Simulation of module distortions """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_DetailedSurfaceChargesGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_DetailedSurfaceChargesGenerator'
  pass # class SCT_DetailedSurfaceChargesGenerator

class SCT_Digitization( ConfigurableAlgorithm ) :
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
    'DigitizationTool' : PublicToolHandle('SCT_DigitizationTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'DigitizationTool' : """ SCT_DigitizationTool name """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_Digitization, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_Digitization'
  pass # class SCT_Digitization

class SCT_DigitizationTool( ConfigurableAlgTool ) :
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
    'FixedTime' : -999.000, # float
    'CosmicsRun' : False, # bool
    'UseComTime' : False, # bool
    'EnableHits' : True, # bool
    'OnlyHitElements' : False, # bool
    'BarrelOnly' : False, # bool
    'RandomDisabledCells' : False, # bool
    'CreateNoiseSDO' : False, # bool
    'WriteSCT1_RawData' : False, # bool
    'InputObjectName' : '', # str
    'OutputObjectName' : 'SCT_RDOs', # str
    'OutputSDOName' : 'SCT_SDO_Map', # str
    'RndmSvc' : ServiceHandle('AtRndmGenSvc'), # GaudiHandle
    'MergeSvc' : ServiceHandle('PileUpMergeSvc'), # GaudiHandle
    'FrontEnd' : PublicToolHandle('SCT_FrontEnd'), # GaudiHandle
    'SurfaceChargesGenerator' : PublicToolHandle('SCT_SurfaceChargesGenerator'), # GaudiHandle
    'HardScatterSplittingMode' : 0, # int
    'ParticleBarcodeVeto' : 2147483647, # int
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'ParticleBarcodeVeto' : """ Barcode of particle to ignore """,
    'FrontEnd' : """ Choice of using a development release """,
    'SurfaceChargesGenerator' : """ Choice of using a more detailed charge drift model """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'OutputObjectName' : """ Output Object name """,
    'OnlyHitElements' : """ Process only elements with hits """,
    'BarrelOnly' : """ Only Barrel layers """,
    'FixedTime' : """ Fixed time for Cosmics run selection """,
    'RndmSvc' : """ Random Number Service used in SCT & Pixel digitization """,
    'OutputSDOName' : """ Output SDO container name """,
    'InputObjectName' : """ Input Object name """,
    'CreateNoiseSDO' : """ Set create noise SDO flag """,
    'RandomDisabledCells' : """ Use Random disabled cells, default no """,
    'UseComTime' : """ Flag to set ComTime """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'MergeSvc' : """ Merge service used in Pixel & SCT digitization """,
    'CosmicsRun' : """ Cosmics run selection """,
    'WriteSCT1_RawData' : """ Write out SCT1_RawData rather than SCT3_RawData """,
    'EnableHits' : """ Enable hits """,
    'HardScatterSplittingMode' : """ Control pileup & signal splitting """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_DigitizationTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_DigitizationTool'
  pass # class SCT_DigitizationTool

class SCT_FrontEnd( ConfigurableAlgTool ) :
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
    'NoiseBarrel' : 1500.00, # float
    'NoiseBarrel3' : 1541.00, # float
    'NoiseInners' : 1090.00, # float
    'NoiseMiddles' : 1557.00, # float
    'NoiseShortMiddles' : 940.000, # float
    'NoiseOuters' : 1618.00, # float
    'NOBarrel' : 1.5000000e-05, # float
    'NOBarrel3' : 2.1000000e-05, # float
    'NOInners' : 5.0000000e-09, # float
    'NOMiddles' : 2.7000000e-05, # float
    'NOShortMiddles' : 2.0000000e-09, # float
    'NOOuters' : 3.5000000e-05, # float
    'NoiseOn' : True, # bool
    'GainRMS' : 0.0310000, # float
    'Ospread' : 0.000100000, # float
    'OffsetGainCorrelation' : 1.00000e-05, # float
    'Threshold' : 1.00000, # float
    'TimeOfThreshold' : 30.0000, # float
    'PulseAveragingFlag' : False, # bool
    'DataCompressionMode' : 1, # int
    'NoiseExpandedMode' : False, # bool
    'UseCalibData' : True, # bool
    'MaxStripsPerSide' : 768, # int
    'SCT_ReadCalibChipDataSvc' : ServiceHandle('SCT_ReadCalibChipDataSvc'), # GaudiHandle
    'SCT_Amp' : PublicToolHandle('SCT_Amp'), # GaudiHandle
  }
  _propertyDocDct = { 
    'NOShortMiddles' : """ NoiseOccupancyShortMiddles """,
    'MaxStripsPerSide' : """ For SLHC studies """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'NOOuters' : """ NoiseOccupancyOuters """,
    'PulseAveragingFlag' : """ Flag to set the Pulse Averaging """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'NoiseShortMiddles' : """ NoiseShortMiddles """,
    'NOBarrel3' : """ NoiseOccupancyBarrel3 """,
    'UseCalibData' : """ Flag to use Calib Data """,
    'NoiseBarrel3' : """ NoiseBarrel3 """,
    'OffsetGainCorrelation' : """ Gain/offset correlation for the strips """,
    'Ospread' : """ offset spread within the strips for a given Chip offset """,
    'NoiseOuters' : """ NoiseOuters """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'NoiseOn' : """ To know if noise is on or off when using calibration data """,
    'NOInners' : """ NoiseOccupancyInners """,
    'NoiseMiddles' : """ NoiseMiddles """,
    'TimeOfThreshold' : """ Threshold time """,
    'Threshold' : """ Threshold """,
    'NoiseBarrel' : """ NoiseBarrel """,
    'NoiseInners' : """ NoiseInners """,
    'GainRMS' : """ Gain spread parameter within the strips for a given Chip gain """,
    'DataCompressionMode' : """ Front End Data Compression Mode """,
    'NoiseExpandedMode' : """ Front End Noise Expanded Mode """,
    'NOMiddles' : """ NoiseOccupancyMiddles """,
    'NOBarrel' : """ NoiseOccupancyBarrel """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_FrontEnd, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_FrontEnd'
  pass # class SCT_FrontEnd

class SCT_FrontEndDev( ConfigurableAlgTool ) :
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
    'NoiseBarrel' : 1500.00, # float
    'NoiseBarrel3' : 1541.00, # float
    'NoiseInners' : 1090.00, # float
    'NoiseMiddles' : 1557.00, # float
    'NoiseShortMiddles' : 940.000, # float
    'NoiseOuters' : 1618.00, # float
    'NOBarrel' : 1.5000000e-05, # float
    'NOBarrel3' : 2.1000000e-05, # float
    'NOInners' : 5.0000000e-09, # float
    'NOMiddles' : 2.7000000e-05, # float
    'NOShortMiddles' : 2.0000000e-09, # float
    'NOOuters' : 3.5000000e-05, # float
    'NoiseOn' : True, # bool
    'GainRMS' : 0.0310000, # float
    'Ospread' : 0.000100000, # float
    'OffsetGainCorrelation' : 1.00000e-05, # float
    'Threshold' : 1.00000, # float
    'TimeOfThreshold' : 30.0000, # float
    'PulseAveragingFlag' : False, # bool
    'DataCompressionMode' : 1, # int
    'DataReadOutMode' : 0, # int
    'NoiseExpandedMode' : False, # bool
    'UseCalibData' : True, # bool
    'MaxStripsPerSide' : 768, # int
    'SCT_ReadCalibChipDataSvc' : ServiceHandle('SCT_ReadCalibChipDataSvc'), # GaudiHandle
    'SCT_Amp' : PublicToolHandle('SCT_Amp'), # GaudiHandle
  }
  _propertyDocDct = { 
    'NOShortMiddles' : """ NoiseOccupancyShortMiddles """,
    'MaxStripsPerSide' : """ For SLHC studies """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'NOOuters' : """ NoiseOccupancyOuters """,
    'PulseAveragingFlag' : """ Flag to set the Pulse Averaging """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'NoiseShortMiddles' : """ NoiseShortMiddles """,
    'NOBarrel3' : """ NoiseOccupancyBarrel3 """,
    'UseCalibData' : """ Flag to use Calib Data """,
    'NoiseBarrel3' : """ NoiseBarrel3 """,
    'OffsetGainCorrelation' : """ Gain/offset correlation for the strips """,
    'Ospread' : """ offset spread within the strips for a given Chip offset """,
    'NoiseOuters' : """ NoiseOuters """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'NoiseOn' : """ To know if noise is on or off when using calibration data """,
    'NOInners' : """ NoiseOccupancyInners """,
    'NoiseMiddles' : """ NoiseMiddles """,
    'TimeOfThreshold' : """ Threshold time """,
    'Threshold' : """ Threshold """,
    'NoiseBarrel' : """ NoiseBarrel """,
    'NoiseInners' : """ NoiseInners """,
    'GainRMS' : """ Gain spread parameter within the strips for a given Chip gain """,
    'DataReadOutMode' : """ Front End Data Read out mode Mode """,
    'DataCompressionMode' : """ Front End Data Compression Mode """,
    'NoiseExpandedMode' : """ Front End Noise Expanded Mode """,
    'NOMiddles' : """ NoiseOccupancyMiddles """,
    'NOBarrel' : """ NoiseOccupancyBarrel """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_FrontEndDev, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_FrontEndDev'
  pass # class SCT_FrontEndDev

class SCT_RandomDisabledCellGenerator( ConfigurableAlgTool ) :
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
    'TotalBadChannels' : 0.0100000, # float
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_RandomDisabledCellGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_RandomDisabledCellGenerator'
  pass # class SCT_RandomDisabledCellGenerator

class SCT_StripDiscriminator( ConfigurableAlgTool ) :
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
    'DiscrThresh' : 4100, # int
    'DiscrThreshVar' : 300, # int
    'IntimeThresh' : 5000, # int
    'TimeBCN' : 2, # int
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'IntimeThresh' : """ Discriminator in-time threshold """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'DiscrThreshVar' : """ Discriminator threshold sigma """,
    'DiscrThresh' : """ Discriminator threshold """,
    'TimeBCN' : """ Number of BCID """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_StripDiscriminator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_StripDiscriminator'
  pass # class SCT_StripDiscriminator

class SCT_SurfaceChargesGenerator( ConfigurableAlgTool ) :
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
    'FixedTime' : -999.000, # float
    'SubtractTime' : -999.000, # float
    'SurfaceDriftTime' : 10.0000, # float
    'NumberOfCharges' : 1, # int
    'SmallStepLength' : 5.00000, # float
    'SiConditionsSvc' : ServiceHandle('SCT_SiliconConditionsSvc'), # GaudiHandle
    'SiPropertiesSvc' : ServiceHandle('SCT_SiPropertiesSvc'), # GaudiHandle
    'doDistortions' : False, # bool
    'UseSiCondDB' : True, # bool
    'DepletionVoltage' : 70.0000, # float
    'BiasVoltage' : 150.000, # float
    'doTrapping' : False, # bool
    'doHistoTrap' : False, # bool
    'doRamo' : False, # bool
    'SCTDistortionsTool' : PublicToolHandle('SCT_DistortionsTool'), # GaudiHandle
    'SCT_RadDamageSummarySvc' : ServiceHandle('SCT_RadDamageSummarySvc'), # GaudiHandle
  }
  _propertyDocDct = { 
    'doRamo' : """ Ramo Potential for charge trapping effect """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UseSiCondDB' : """ Usage of SiConditions DB values can be disabled to use setable ones """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'SCTDistortionsTool' : """ Tool to retrieve SCT distortions """,
    'doHistoTrap' : """ Histogram the charge trapping effect """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'doTrapping' : """ Simulation of charge trapping effect """,
    'doDistortions' : """ Simulation of module distortions """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_SurfaceChargesGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_SurfaceChargesGenerator'
  pass # class SCT_SurfaceChargesGenerator

class SCT_TimeWalkGenerator( ConfigurableAlgTool ) :
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
    'UseComTimeFlag' : True, # bool
    'TimeJitter' : 0.0000000, # float
    'TimePerBCO' : 25.000000, # float
    'TimeZero' : 5.0000000, # float
  }
  _propertyDocDct = { 
    'TimePerBCO' : """ Time per BCO - should be 25ns """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'TimeZero' : """ Time zero...? """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'TimeJitter' : """ Time jitter """,
    'UseComTimeFlag' : """ Flag to set ComTime """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCT_TimeWalkGenerator, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Digitization'
  def getType( self ):
      return 'SCT_TimeWalkGenerator'
  pass # class SCT_TimeWalkGenerator
