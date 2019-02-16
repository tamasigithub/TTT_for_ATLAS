from AthenaCommon.AppMgr import theApp

# get the xaod stream - needs to be imported

if rec.OutputFileNameForRecoStep=="ESDtoAOD":
  from AthenaCommon.AlgSequence import AlgSequence
  topSequence = AlgSequence()
  # topSequence += TPReader
  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleContainer#'+'TPCollection']
  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleAuxContainer#'+'TPCollectionAux.']
  svcMgr.StoreGateSvc.Dump=True
  print(topSequence.StreamAOD.ItemList)
#  topSequence.StreamAOD.AddItem('xAOD::TrackParticleContainer#/'+'TPCollection')
#  topSequence.StreamAOD.AddItem('xAOD::TrackParticleAuxContainer#/'+'TPCollectionAux.')
#  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleContainer#/'+str(TPReader.TripletParticleCollection)]
#  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleAuxContainer#/'+str(TPReader.TripletParticleCollection)]
#xaodStream.AddItem('xAODTrackParticleCollection/'+str(TPReader.TripletParticleCollection))
