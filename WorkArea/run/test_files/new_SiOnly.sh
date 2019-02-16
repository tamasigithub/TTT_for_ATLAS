# fast digi for pileup 200 r=9871
Reco_tf.py \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--digiSteeringConf 'StandardInTimeOnlyTruth' \
--numberOfHighPtMinBias '0.725172' \
--preExec 'all:rec.doTrigger.set_Value_and_Lock(False); userRunLumiOverride={"run":242020, "startmu":190.0, "endmu":210.0, "stepmu":1.0, "startlb":1, "timestamp":1412020000}; from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags; SLHC_Flags.doGMX.set_Value_and_Lock(True)' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout" , "PhysicsList"];digitizationFlags.experimentalDigi += ["doSmearedPixelDigi", "doSmearedSCT_Digi"]' \
--numberOfLowPtMinBias '209.2692' \
--inputLowPtMinbiasHitsFile /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/user.tkar/Lowpt.15326819.EXT0._009957.HITS_InclBrl4.pool.root \
--inputHighPtMinbiasHitsFile /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files/user.tkar/user.tkar.15404978.EXT0._053734.HITS_InclBrl4.pool.root \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' \
'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.SiliconOnly.py' \
'default:InDetSLHC_Example/preInclude.SLHC.SiliconOnly.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry.py,InDetSLHC_Example/preInclude.RecoSmearedDigi_Pixel.py' \
--postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_SmearedPixel.py' \
--postExec 'HITtoRDO:CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];from AthenaCommon.CfgGetter import getPublicTool;pixeldigi = getPublicTool("PixelSmearedDigitizationTool"); sctdigi= getPublicTool("SCT_SmearedDigitizationTool"); sctdigi.SigmaX=0.015; sctdigi.SigmaY=0.015; ServiceMgr.MessageSvc.enableSuppression = False; topSequence = AlgSequence();topSequence.StreamRDO.ItemList += ["InDet::SiClusterContainer#PixelClusters", "InDet::SiClusterContainer#SCT_Clusters"] ; topSequence.StreamRDO.ItemList += ["PRD_MultiTruthCollection#PRD_MultiTruthSCT", "xAOD::TruthParticleContainer#*"] ; print(topSequence) ;' \
--runNumber=309527 \
--DataRunNumber=242020 \
--inputHITSFile ./sim_SiOnly/HITS.SiOnlyhh4b.pool.root \
--maxEvents 3 \
--jobNumber '1' \
--outputRDOFile ./digi_SiOnly/RDO1.SiOnlyhh4b.pool.root

#'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.SiliconOnly.py,Digitization/ForceUseOfPileUpTools.py,SimulationJobOptions/preInclude.PileUpBunchTrains2012Config1_DigitConfig.py,RunDependentSimData/configLumi_muRange.py' \
