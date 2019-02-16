# Run arguments file auto-generated on Wed Jan 30 16:57:50 2019 by:
# JobTransform: RAWtoESD
# Version: $Id: trfExe.py 772406 2016-09-09 12:10:12Z mavogel $
# Import runArgs class
from PyJobTransforms.trfJobOptions import RunArguments
runArgs = RunArguments()
runArgs.trfSubstepName = 'RAWtoESD' 

runArgs.digiSteeringConf = 'StandardInTimeOnlyTruth'
runArgs.conditionsTag = 'OFLCOND-MC15c-SDR-14-03'
runArgs.maxEvents = 100
runArgs.geometryVersion = 'ATLAS-P2-ITK-20-00-00'
runArgs.preInclude = ['InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py', 'InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py', 'InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py', 'InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py']
runArgs.postInclude = ['InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/postInclude.DigitalClustering.py', 'InDetSLHC_Example/postInclude.NoJetPtFilter.py']
runArgs.preExec = ['from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";']
runArgs.DataRunNumber = 242000
runArgs.postExec = ['ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;']

# Input data
runArgs.inputRDOFile = ['RDO.Fullhh4b.pool.root']
runArgs.inputRDOFileType = 'RDO'
runArgs.inputRDOFileNentries = 100L
runArgs.RDOFileIO = 'input'

# Output data
runArgs.outputESDFile = 'ESD.Fullhh4b.pool.root'
runArgs.outputESDFileType = 'ESD'

# Extra runargs

# Extra runtime runargs

# Literal runargs snippets
