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
#svcMgr.EventSelector.InputCollections        = ["/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/WorkArea/run/digi_files/OUT.RDO.Gen50GeVSingleMu.23May.root"]
svcMgr.EventSelector.InputCollections        = ["./OUT.RDO.12807745._000010.pool.root"]
#svcMgr.EventSelector.InputCollections        = ["/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/user.tkar/user.tkar.14778344.EXT0._000200.RDO.hh4b.root"]
#svcMgr.EventSelector.InputCollections        = ["/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/group.det-slhc/group.det-slhc.14485178.EXT0._001137.RDO.minbias.root"]
#svcMgr.EventSelector.InputCollections        = ["/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/WorkArea/run/batchDIGI_files/OUT.RDO.Gen1-6GeVSinglepi.root"]
#/eos/user/t/tkar/group.det-slhc.119996.highPtminBias.June.Digitized.V1_EXT0.194404981/group.det-slhc.14485198.EXT0._000001.RDO.minbias.root"]
#OUT.RDO.Gen2-5GeVSinglemu.root"]
#OUT.minbias.RDO.14323172.EXT0._278537.root"]
#/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/WorkArea/run/batchDIGI_files/OUT.RDO.Gen100GeVSinglemu.root"]
#/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/WorkArea/run/digi_files/OUT.RDO.Gen5GeVSingleMu.29May.root"]
#/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/WorkArea/run/digi_files/OUT.RDO.Gen5GeVSingleMu.29May.root"]
#OUT.smear28March.multiparticle.Muon_20GeV.pool.root"]
#OUT.smear10April.multiparticle.VarPt.pool.root"]
#OUT.smear28March.multiparticle.Muon_20GeV.pool.root"]
#OUT.28Feb.OneMuon_100GeV.RDO_InclBrl4.pool.root"]
#OUT.V2.smear18Feb.SingleMu20GeV_InclBrl4.root"]
#OUT.12Jan.smear_mu100GeV_InclBrl4.root
#/afs/cern.ch/work/j/jwang/public/ToTamasi/OUT.20Jan.smear_mu100GeV_InclBrl4.root
#svcMgr.EventSelector.InputCollections        = [ "/afs/cern.ch/work/j/jwang/public/ToNick/OUT.smear_pixel_mu100GeV_InclBrl4.root" ]

#--------------------------------------------------------------
# Load Detector Description
#--------------------------------------------------------------

# this part just gets the flags ready for loading detector description
from AthenaCommon.AthenaCommonFlags import athenaCommonFlags
athenaCommonFlags.FilesInput = svcMgr.EventSelector.InputCollections
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
theApp.EvtMax =100

# For convenience, get a reference to the ReadRDO Algorithm
# named "Readref" in the job
Readref = job.TripletTrackFinder

# Set a property
#Readref.SiClusterContainer = "PixelClusters"
Readref.SiClusterContainer = "SCT_Clusters"
Readref.Debug = False  

write_xAOD = True
if write_xAOD:
	from OutputStreamAthenaPool.MultipleStreamManager import MSMgr
	xaodStream = MSMgr.NewPoolRootStream( "StreamXAOD", "test.xAOD.out.root" )
	xaodStream.AddItem("xAOD::TrackParticleContainer#InDetTrackParticles")
	xaodStream.AddItem("xAOD::TrackParticleAuxContainer#InDetTrackParticlesAux.")
#excludedAuxData = "-caloExtension.-cellAssociation.-clusterAssociation.-trackParameterCovarianceMatrices.-parameterX.-parameterY.-parameterZ.-parameterPX.-parameterPY.-parameterPZ.-parameterPosition"
# Add generic event information
#xaodStream.AddItem("xAOD::EventInfo#*")
#xaodStream.AddItem("xAOD::EventAuxInfo#")
# Add track particles collection and traclets
#xaodStream.AddItem("xAOD::TrackParticleAuxContainer#InDetTrackParticlesAux."+excludedAuxData)
#http://acode-browser.usatlas.bnl.gov/lxr/source/athena/InnerDetector/InDetEventCnv/InDetPrepRawDataToxAOD/share/SCTxAOD.py
#http://acode-browser.usatlas.bnl.gov/lxr/source/athena/Reconstruction/Jet/JetRec/share/simpleJetRecJobO.py
#AddItem and AddMetaDataItem methods accept either string or list of strings
#xaodStream.AddItem( ["xAOD::JetContainer#*","xAOD::JetAuxContainer#*"] ) #see below for syntax
#xaodStream.AddMetaDataItem( ["xAOD::TriggerMenuContainer#*","xAOD::TriggerMenuAuxContainer#*"] ) 
#... will keep trigger menu info, but you *must* add the corresponding metadata tool ... see below ...
#https://twiki.cern.ch/twiki/bin/viewauth/AtlasProtected/AthAnalysisBase#How_to_create_an_output_xAOD
# Output a root file
svcMgr += CfgMgr.THistSvc()
#svcMgr.THistSvc.Output += ["MYSTREAM DATAFILE='./rec_outputs/SingleParticles_Oct042k18/Sept27RecTree50GeVSinglemutest.root' OPT='RECREATE'"]
svcMgr.THistSvc.Output += ["MYSTREAM DATAFILE='./rec_outputs/testRecOUT.12807745._000010.hh4b.root' OPT='RECREATE'"]
#svcMgr.THistSvc.Output += ["MYSTREAM DATAFILE='./rec_outputs/SingleParticles1-6GeV/RecTree1-6GeVpi.root' OPT='RECREATE'"]
#============================================================== 
