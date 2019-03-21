from AthenaCommon.AppMgr import theApp
# get the xaod stream - needs to be imported
if rec.OutputFileNameForRecoStep=="ESDtoAOD":
  from AthenaCommon.AlgSequence import AlgSequence
  topSequence = AlgSequence()
  from TripletTrackFinder.TripletTrackFinderConf import TripletParticleReader 

  TPReader = TripletParticleReader('TripletReader')
  #TPReader.InputFiles = '/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/WorkArea/run/rec_outputs/hh4b_opt/user.tkar.309527VBF_2HDM_H_m1000_hh4bRoot2_MYSTREAM/*00000*.root'
  TPReader.OverwriteFlag = True
  TPReader.TrackPcleContainerName = 'InDetTrackParticles'
  TPReader.TTTPcleContainerName = 'TTTParticles'
  TPReader.CombinedTPContainerName = 'InDetTTTParticles'
  TPReader.TTTtruthTPContainerName = 'TTTtruthParticles'
  TPReader.InputFileName = 'TTTSiOnly.hh4b.root'
  TPReader.InputTreeName = 'm_recTree'
  TPReader.InputTruthTreeName = 'm_truthTree'
  topSequence += TPReader

