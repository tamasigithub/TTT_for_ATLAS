# Run arguments file auto-generated on Thu Jan 24 17:17:42 2019 by:
# JobTransform: HITtoRDO
# Version: $Id: trfExe.py 772406 2016-09-09 12:10:12Z mavogel $
# Import runArgs class
from PyJobTransforms.trfJobOptions import RunArguments
runArgs = RunArguments()
runArgs.trfSubstepName = 'HITtoRDO' 

runArgs.digiSteeringConf = 'StandardInTimeOnlyTruth'
runArgs.conditionsTag = 'OFLCOND-MC15c-SDR-14-03'
runArgs.runNumber = 309527
runArgs.DataRunNumber = 242000
runArgs.maxEvents = 10
runArgs.preInclude = ['InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py', 'InDetSLHC_Example/preInclude.SLHC.py', 'InDetSLHC_Example/preInclude.SiliconOnly.py']
runArgs.postInclude = ['PyJobTransforms/UseFrontier.py', 'InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/postInclude.SLHC_Digitization_SmearedPixel.py']
runArgs.preExec = ['rec.doTrigger.set_Value_and_Lock(False); from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags; SLHC_Flags.doGMX.set_Value_and_Lock(True)', 'from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout" , "PhysicsList"];digitizationFlags.experimentalDigi += ["doSmearedPixelDigi", "doSmearedSCT_Digi"]']
runArgs.geometryVersion = 'ATLAS-P2-ITK-20-00-00'
runArgs.postExec = ['CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];from AthenaCommon.CfgGetter import getPublicTool;pixeldigi = getPublicTool("PixelSmearedDigitizationTool"); sctdigi= getPublicTool("SCT_SmearedDigitizationTool"); sctdigi.SigmaX=0.015; sctdigi.SigmaY=0.015; ServiceMgr.MessageSvc.enableSuppression = False; topSequence = AlgSequence();topSequence.StreamRDO.ItemList += ["InDet::SiClusterContainer#PixelClusters", "InDet::SiClusterContainer#SCT_Clusters"] ; topSequence.StreamRDO.ItemList += ["PRD_MultiTruthCollection#PRD_MultiTruthSCT", "xAOD::TruthParticleContainer#*"] ']

# Input data
runArgs.inputHITSFile = ['/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/sim_SiOnly/HITS.SiOnlyhh4b.pool.root']
runArgs.inputHITSFileType = 'HITS'
runArgs.inputHITSFileNentries = 10L
runArgs.HITSFileIO = 'input'

# Output data
runArgs.outputRDOFile = './RDO.SiOnlyhh4b.pool.root'
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
