# Run arguments file auto-generated on Thu Jan 24 16:31:02 2019 by:
# JobTransform: HITtoRDO
# Version: $Id: trfExe.py 772406 2016-09-09 12:10:12Z mavogel $
# Import runArgs class
from PyJobTransforms.trfJobOptions import RunArguments
runArgs = RunArguments()
runArgs.trfSubstepName = 'HITtoRDO' 

runArgs.digiSteeringConf = 'StandardInTimeOnlyTruth'
runArgs.maxEvents = 10
runArgs.geometryVersion = 'ATLAS-P2-ITK-20-00-00'
runArgs.conditionsTag = 'OFLCOND-MC15c-SDR-14-03'
runArgs.preExec = ['from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";', 'from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout","PhysicsList"];']
runArgs.preInclude = ['InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py', 'InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py', 'InDetSLHC_Example/preInclude.SLHC.py', 'InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py']
runArgs.DataRunNumber = 242000
runArgs.postExec = ['pixeldigi.EnableSpecialPixels=False; CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];']
runArgs.postInclude = ['InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/postInclude.SLHC_Digitization_lowthresh.py']

# Input data
runArgs.inputHITSFile = ['/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/sim_full/HITS.Fullhh4b.pool.root']
runArgs.inputHITSFileType = 'HITS'
runArgs.inputHITSFileNentries = 10L
runArgs.HITSFileIO = 'input'

# Output data
runArgs.outputRDOFile = './RDO.Fullhh4b.pool.root'
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
