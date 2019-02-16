# Run arguments file auto-generated on Tue Jan 29 19:32:10 2019 by:
# JobTransform: ESDtoAOD
# Version: $Id: trfExe.py 772406 2016-09-09 12:10:12Z mavogel $
# Import runArgs class
from PyJobTransforms.trfJobOptions import RunArguments
runArgs = RunArguments()
runArgs.trfSubstepName = 'ESDtoAOD' 

runArgs.digiSteeringConf = 'StandardInTimeOnlyTruth'
runArgs.conditionsTag = 'OFLCOND-MC15c-SDR-14-03'
runArgs.maxEvents = 5
runArgs.preInclude = ['InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py', 'InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py', 'TripletTrackFinder/TripletReader_preInclude.py', 'InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py', 'InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py']
runArgs.postInclude = ['InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py', 'TripletTrackFinder/TripletReader_postInclude.py']
runArgs.preExec = ['from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";']
runArgs.geometryVersion = 'ATLAS-P2-ITK-20-00-00'
runArgs.DataRunNumber = 242000

# Input data
runArgs.inputESDFile = ['/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/rec_outputs/ESD.Fullhh4b_1.pool.root']
runArgs.inputESDFileType = 'ESD'
runArgs.inputESDFileNentries = 10L
runArgs.ESDFileIO = 'input'

# Output data
runArgs.outputAODFile = '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/rec_outputs/AOD.combined_1.pool.root'
runArgs.outputAODFileType = 'AOD'

# Extra runargs

# Extra runtime runargs

# Literal runargs snippets
