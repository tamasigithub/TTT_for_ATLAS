# Run arguments file auto-generated on Tue Jan 22 16:18:00 2019 by:
# JobTransform: ESDtoAOD
# Version: $Id: trfExe.py 772406 2016-09-09 12:10:12Z mavogel $
# Import runArgs class
from PyJobTransforms.trfJobOptions import RunArguments
runArgs = RunArguments()
runArgs.trfSubstepName = 'ESDtoAOD' 

runArgs.digiSteeringConf = 'StandardInTimeOnlyTruth'
runArgs.conditionsTag = 'OFLCOND-MC15c-SDR-14-03'
runArgs.geometryVersion = 'ATLAS-P2-ITK-20-00-00'
runArgs.preInclude = ['InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py', 'InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py', 'InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py', '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_preInclude.py', 'InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py', 'InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py']
runArgs.postInclude = ['InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py', '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_postInclude.py']
runArgs.preExec = ['from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";']
runArgs.athenaopts = ['--preloadlib=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013.3.163/compiler/lib/intel64/libintlc.so.5:/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013.3.163/compiler/lib/intel64/libimf.so']
runArgs.DataRunNumber = 242000

# Explicitly added to process all events in this step
runArgs.maxEvents = -1

# Input data
runArgs.inputESDFile = ['./rec_outputs/SLHCtest72_2.ESD.pool.root']
runArgs.inputESDFileType = 'ESD'
runArgs.inputESDFileNentries = 10L
runArgs.ESDFileIO = 'output'

# Output data
runArgs.outputAODFile = './rec_outputs/SLHCtest72_2.AOD.pool.root'
runArgs.outputAODFileType = 'AOD'

# Extra runargs

# Extra runtime runargs

# Literal runargs snippets
