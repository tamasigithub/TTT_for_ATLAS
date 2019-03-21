###############################################################
# Job Option file
###############################################################
# get a handle to the ServiceManager
from AthenaCommon.AppMgr import ServiceMgr as svcMgr
# get a handle to the ApplicationManager
from AthenaCommon.AppMgr import theApp
#--------------------------------------------------------------
# Load POOL support - sets up reading of Pool files (e.g. xAODs)
#--------------------------------------------------------------
import AthenaPoolCnvSvc.ReadAthenaPool
#--------------------------------------------------------------
# Input options
#--------------------------------------------------------------
svcMgr.EventSelector.InputCollections=["RDO.SiOnlyhh4b.pool.root"]
#--------------------------------------------------------------
# Load Detector Description
#--------------------------------------------------------------
# this part just gets the flags ready for loading detector description
from AthenaCommon.AthenaCommonFlags import athenaCommonFlags
athenaCommonFlags.FilesInput = svcMgr.EventSelector.InputCollections
#athenaCommonFlags.FilesInput.set_Value_and_Lock(PoolAODInput)
from RecExConfig import AutoConfiguration
AutoConfiguration.ConfigureSimulationOrRealData()
AutoConfiguration.ConfigureGeo()
AutoConfiguration.ConfigureConditionsTag()
# retrieving the PixelClusterContainer only requires the pixel detector description
from AthenaCommon.DetFlags import DetFlags
DetFlags.detdescr.all_setOff()
DetFlags.detdescr.pixel_setOn()
DetFlags.detdescr.SCT_setOn()
# preincludes
include("InDetSLHC_Example/preInclude.SLHC.py")
include('InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py')
include('InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py')
# Now load the description: 
include("RecExCond/AllDet_detDescr.py")
svcMgr.MessageSvc.Format = "% F%50W%S%7W%R%T %0W%M"
# postincludes
include("InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py")
DetFlags.detdescr.TRT_setOff()
DetFlags.detdescr.AFP_setOff()
DetFlags.detdescr.ALFA_setOff()
DetFlags.detdescr.BCM_setOff()
DetFlags.detdescr.ZDC_setOff()
DetFlags.detdescr.Calo_setOff()
DetFlags.detdescr.Muon_setOff()
#--------------------------------------------------------------
# Private Application Configuration options
#--------------------------------------------------------------
# Full job is a list of algorithms
# Get handle to the default top-level algorithm sequence
from AthenaCommon.AlgSequence import AlgSequence
job = AlgSequence()
# Add top algorithms to be run
from TripletTrackFinder.TripletTrackFinderConf import ReadRDO
job += ReadRDO( "TripletTrackFinder" ) #1 alg named "TripletTrackFinder"
#--------------------------------------------------------------
# Set output level threshold (DEBUG, INFO, WARNING, ERROR, FATAL)
#--------------------------------------------------------------
job.TripletTrackFinder.OutputLevel = INFO
#job.TripletTrackFinder.OutputLevel = DEBUG 
#MessageSvc.defaultLimit = 9999999  # increase the message limit from 500 to all messages
#--------------------------------------------------------------
# Event related parameters
#--------------------------------------------------------------
# Number of events to be processed (default is 10)
theApp.EvtMax =10
# For convenience, get a reference to the ReadRDO Algorithm
# named "Readref" in the job
Readref = job.TripletTrackFinder
# Set a property
#Readref.SiClusterContainer = "PixelClusters"
Readref.SiClusterContainer = "SCT_Clusters"
Readref.Debug = False  
# Output a root file
svcMgr += CfgMgr.THistSvc()
svcMgr.THistSvc.Output += ["MYSTREAM DATAFILE='TTTSiOnly.hh4b.root' OPT='RECREATE'"]
#============================================================== 
