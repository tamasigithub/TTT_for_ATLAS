#Reco_tf.py \
#--inputHITSFile /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/user.tkar/user.tkar.15675845.EXT0._000072.HITS.pool.root \
#--outputRDOFile ./rec_outputs/SLHCtest72.RDO.pool.root \
#--outputESDFile ./rec_outputs/SLHCtest72.ESD.pool.root \
#--outputAODFile ./rec_outputs/SLHCtest72.AOD.pool.root \
#--digiSteeringConf 'StandardInTimeOnlyTruth' \
#--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
#--postInclude 'all:InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_lowthresh.py' 'RAWtoESD:InDetSLHC_Example/postInclude.DigitalClustering.py,InDetSLHC_Example/postInclude.NoJetPtFilter.py' '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_postInclude.py' \
#--preExec 'all:from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout","PhysicsList"];' 'ESDtoDPD:rec.DPDMakerScripts.set_Value_and_Lock(["InDetPrepRawDataToxAOD/InDetDxAOD.py","PrimaryDPDMaker/PrimaryDPDMaker.py"]);' \
#--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py,InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py' 'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'default:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py' 'RDOMergeAthenaMP:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'POOLMergeAthenaMPAOD0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'POOLMergeAthenaMPDAODIDTRKVALID0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' \
#--DataRunNumber '242000' \
#--postExec 'HITtoRDO:pixeldigi.EnableSpecialPixels=False; CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];' 'RAWtoESD:ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;' \
#--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
#--maxEvents 10

#official+hack with pre and post include(does not work)
##--inputHITSFile /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/user.tkar/user.tkar.15675845.EXT0._000072.HITS.pool.root \
##--inputRDOFile ./OUT.RDO.12807745._000010.pool.root \
#Reco_tf.py \
#--inputRDOFile ./rec_outputs/SLHCtest72.RDO.pool.root \
#--outputESDFile ./rec_outputs/OUT.12807745._000010.ESD.pool.root \
#--outputAODFile ./rec_outputs/OUT.12807745._000010.AOD.pool.root \
#--digiSteeringConf 'StandardInTimeOnlyTruth' \
#--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
#--postInclude 'all:InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'RAWtoESD:InDetSLHC_Example/postInclude.DigitalClustering.py,InDetSLHC_Example/postInclude.NoJetPtFilter.py' '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_postInclude.py' \
#--preExec 'all:from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'RAWtoESD:from InDetRecExample.InDetJobProperties import InDetFlags;InDetFlags.doPixelPRDFormation.set_Value_and_Lock(False);InDetFlags.doSCT_PRDFormation.set_Value_and_Lock(False);InDetFlags.pixelClusterSplittingType="AnalogClus";InDetFlags.doTIDE_Ambi.set_Value_and_Lock(False); InDetFlags.useInDetDynamicCuts=False;' 'ESDtoDPD:rec.DPDMakerScripts.set_Value_and_Lock(["InDetPrepRawDataToxAOD/InDetDxAOD.py","PrimaryDPDMaker/PrimaryDPDMaker.py"]);' \
#--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py,InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py' 'default:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py' 'RDOMergeAthenaMP:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'POOLMergeAthenaMPAOD0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'POOLMergeAthenaMPDAODIDTRKVALID0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_preInclude.py' \
#--postExec 'RAWtoESD:ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;' \
#--DataRunNumber '242000' \
#--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
#--maxEvents 10

#official+hack with pre and post include(does not work)
#--inputRDOFile ./OUT.RDO.12807745._000010.pool.root \ this file does not contain pixelRDOs 
Reco_tf.py \
--inputRDOFile ./rec_outputs/SLHCtest72.RDO.pool.root \
--outputESDFile ./rec_outputs/SLHCtest72_2.ESD.pool.root \
--outputAODFile ./rec_outputs/SLHCtest72_2.AOD.pool.root \
--digiSteeringConf 'StandardInTimeOnlyTruth' \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--postInclude 'all:InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_lowthresh.py' 'RAWtoESD:InDetSLHC_Example/postInclude.DigitalClustering.py,InDetSLHC_Example/postInclude.NoJetPtFilter.py' '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_postInclude.py' \
--preExec 'all:from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout","PhysicsList"];' 'ESDtoDPD:rec.DPDMakerScripts.set_Value_and_Lock(["InDetPrepRawDataToxAOD/InDetDxAOD.py","PrimaryDPDMaker/PrimaryDPDMaker.py"]);' \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py,InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py' 'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'default:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py' 'RDOMergeAthenaMP:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'POOLMergeAthenaMPAOD0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'POOLMergeAthenaMPDAODIDTRKVALID0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' '/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_preInclude.py' \
--DataRunNumber '242000' \
--postExec 'HITtoRDO:pixeldigi.EnableSpecialPixels=False; CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];' 'RAWtoESD:ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;' \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
--maxEvents 10
#official reconstruction (unchanged)
#Reco_tf.py \
#--inputRDOFile ./OUT.RDO.12807745._000010.pool.root \
#--outputESDFile ./rec_outputs/OUT.12807745._000010.ESD.pool.root \
#--outputAODFile ./rec_outputs/OUT.12807745._000010.AOD.pool.root \
#--maxEvents 20 \
#--AMI=r9877
