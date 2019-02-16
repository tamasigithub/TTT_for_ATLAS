from AthenaCommon.AppMgr import theApp
# get the xaod stream - needs to be imported
if rec.OutputFileNameForRecoStep=="ESDtoAOD":
  from AthenaCommon.AlgSequence import AlgSequence
  topSequence = AlgSequence()
  from TripletTrackFinder.TripletTrackFinderConf import TripletParticleReader 

  TPReader = TripletParticleReader('TripletReader')
  TPReader.InputFileName = '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/user.tkar/user.tkar.14778344.EXT0._000072.hh4b.root'
  TPReader.InputTreeName = 'm_recTree'
  #TPReader.TripletParticleCollection = 'TPCollection'
  topSequence += TPReader

