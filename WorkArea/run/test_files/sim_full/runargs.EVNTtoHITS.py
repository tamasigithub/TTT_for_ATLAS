# Run arguments file auto-generated on Thu Jan 24 15:20:10 2019 by:
# JobTransform: EVNTtoHITS
# Version: $Id: trfExe.py 772406 2016-09-09 12:10:12Z mavogel $
# Import runArgs class
from PyJobTransforms.trfJobOptions import RunArguments
runArgs = RunArguments()
runArgs.trfSubstepName = 'EVNTtoHITS' 

runArgs.conditionsTag = 'OFLCOND-MC15c-SDR-14-03'
runArgs.truthStrategy = 'MC15aPlus'
runArgs.maxEvents = 10
runArgs.geometryVersion = 'ATLAS-P2-ITK-20-00-00_VALIDATION'
runArgs.preInclude = ['InDetSLHC_Example/preInclude.SLHC.py', 'InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py']
runArgs.postInclude = ['PyJobTransforms/UseFrontier.py', 'InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/postInclude.SLHC_Setup.py']
runArgs.preExec = ['from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals"']
runArgs.DataRunNumber = 242000
runArgs.postExec = ['ServiceMgr.DetDescrCnvSvc.DoInitNeighbours = False; from AthenaCommon import CfgGetter;CfgGetter.getService("ISF_MC15aPlusTruthService").BeamPipeTruthStrategies+=["ISF_MCTruthStrategyGroupIDHadInt_MC15"];']

# Input data
runArgs.inputEVNTFile = ['/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/EVNT.12807745._000010.pool.root.1']
runArgs.inputEVNTFileType = 'EVNT'
runArgs.inputEVNTFileNentries = 10000L
runArgs.EVNTFileIO = 'input'

# Output data
runArgs.outputHITSFile = './HITS.Fullhh4b.pool.root'
runArgs.outputHITSFileType = 'HITS'

# Extra runargs

# Extra runtime runargs

# Literal runargs snippets
