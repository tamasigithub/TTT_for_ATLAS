# Run arguments file auto-generated on Thu Feb  7 13:38:57 2019 by:
# JobTransform: HITtoRDO
# Version: $Id: trfExe.py 772406 2016-09-09 12:10:12Z mavogel $
# Import runArgs class
from PyJobTransforms.trfJobOptions import RunArguments
runArgs = RunArguments()
runArgs.trfSubstepName = 'HITtoRDO' 

runArgs.DataRunNumber = 242020
runArgs.digiSteeringConf = 'StandardInTimeOnlyTruth'
runArgs.conditionsTag = 'OFLCOND-MC15c-SDR-14-03'
runArgs.runNumber = 309527
runArgs.numberOfHighPtMinBias = 0.725172
runArgs.jobNumber = 1
runArgs.maxEvents = 3
runArgs.preInclude = ['InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py', 'InDetSLHC_Example/preInclude.SLHC.py', 'InDetSLHC_Example/preInclude.SiliconOnly.py']
runArgs.postInclude = ['PyJobTransforms/UseFrontier.py', 'InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/postInclude.SLHC_Digitization_SmearedPixel.py']
runArgs.preExec = ['rec.doTrigger.set_Value_and_Lock(False); userRunLumiOverride={"run":242020, "startmu":190.0, "endmu":210.0, "stepmu":1.0, "startlb":1, "timestamp":1412020000}; from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags; SLHC_Flags.doGMX.set_Value_and_Lock(True)', 'from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout" , "PhysicsList"];digitizationFlags.experimentalDigi += ["doSmearedPixelDigi", "doSmearedSCT_Digi"]']
runArgs.geometryVersion = 'ATLAS-P2-ITK-20-00-00'
runArgs.numberOfLowPtMinBias = 209.2692
runArgs.postExec = ['CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];from AthenaCommon.CfgGetter import getPublicTool;pixeldigi = getPublicTool("PixelSmearedDigitizationTool"); sctdigi= getPublicTool("SCT_SmearedDigitizationTool"); sctdigi.SigmaX=0.015; sctdigi.SigmaY=0.015; ServiceMgr.MessageSvc.enableSuppression = False; topSequence = AlgSequence();topSequence.StreamRDO.ItemList += ["InDet::SiClusterContainer#PixelClusters", "InDet::SiClusterContainer#SCT_Clusters"] ; topSequence.StreamRDO.ItemList += ["PRD_MultiTruthCollection#PRD_MultiTruthSCT", "xAOD::TruthParticleContainer#*"] ']

# Input data
runArgs.inputHITSFile = ['./sim_SiOnly/HITS.SiOnlyhh4b.pool.root']
runArgs.inputHITSFileType = 'HITS'
runArgs.inputHITSFileNentries = 10L
runArgs.HITSFileIO = 'input'
runArgs.inputLowPtMinbiasHitsFile = ['/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/user.tkar/Lowpt.15326819.EXT0._009957.HITS_InclBrl4.pool.root']
runArgs.inputLowPtMinbiasHitsFileType = 'LowPtMinbiasHits'
runArgs.LowPtMinbiasHitsFileIO = 'input'
runArgs.inputHighPtMinbiasHitsFile = ['/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/user.tkar/user.tkar.15404978.EXT0._053734.HITS_InclBrl4.pool.root']
runArgs.inputHighPtMinbiasHitsFileType = 'HighPtMinbiasHits'
runArgs.HighPtMinbiasHitsFileIO = 'input'

# Output data
runArgs.outputRDOFile = './digi_SiOnly/RDO1.SiOnlyhh4b.pool.root'
runArgs.outputRDOFileType = 'RDO'

# Extra runargs

# Extra runtime runargs
try:
    runArgs.LowPtMinbiasHitsFile = runArgs.inputLowPtMinbiasHitsFile
except AttributeError:
    print "WARNING - AttributeError for LowPtMinbiasHitsFile"
try:
    runArgs.beamGasHitsFile = runArgs.inputBeamGasHitsFile
except AttributeError:
    print "WARNING - AttributeError for beamGasHitsFile"
try:
    runArgs.cavernHitsFile = runArgs.inputCavernHitsFile
except AttributeError:
    print "WARNING - AttributeError for cavernHitsFile"
try:
    runArgs.HighPtMinbiasHitsFile = runArgs.inputHighPtMinbiasHitsFile
except AttributeError:
    print "WARNING - AttributeError for HighPtMinbiasHitsFile"
try:
    runArgs.beamHaloHitsFile = runArgs.inputBeamHaloHitsFile
except AttributeError:
    print "WARNING - AttributeError for beamHaloHitsFile"

# Literal runargs snippets
