from AthenaCommon.AppMgr import theApp

# get the xaod stream - needs to be imported

if rec.OutputFileNameForRecoStep=="ESDtoAOD":
  from AthenaCommon.AlgSequence import AlgSequence
  topSequence = AlgSequence()
  # topSequence += TPReader
  #topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleContainer#'+'InDetTrackParticles']
  #topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleAuxContainer#'+'InDetTrackPaticlesAux.']
  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleContainer#'+'InDetTTTParticles']
  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleAuxContainer#'+'InDetTTTParticlesAux.']
  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleContainer#'+'TTTParticles']
  topSequence.StreamAOD.ItemList+=['xAOD::TrackParticleAuxContainer#'+'TTTParticlesAux.']
  svcMgr.StoreGateSvc.Dump=True
  print(topSequence.StreamAOD.ItemList)
