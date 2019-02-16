#!/bin/sh
INPUT_DIR='/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files'
cd /afs/cern.ch/work/t/tkar/testarea/TripletTrackFinder/
export AtlasSetup=/afs/cern.ch/atlas/software/dist/AtlasSetup
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
echo Boom
asetup 20.20.10.7,here
cd ./WorkArea/run/
#--inputRDOFile ${INPUT_DIR}/digi_full/RDO.Fullhh4b.pool.root \
Reco_tf.py \
--inputESDFile ${INPUT_DIR}/rec_outputs/ESD.Fullhh4b.pool.root \
--outputAODFile ${INPUT_DIR}/rec_outputs/AOD2.combined.pool.root \
--digiSteeringConf 'StandardInTimeOnlyTruth' \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--postInclude 'all:InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_lowthresh.py' 'RAWtoESD:InDetSLHC_Example/postInclude.DigitalClustering.py,InDetSLHC_Example/postInclude.NoJetPtFilter.py' '/afs/cern.ch/work/t/tkar/testarea/TripletTrackFinder/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_postInclude.py' \
--preExec 'all:from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout","PhysicsList"];' 'ESDtoDPD:rec.DPDMakerScripts.set_Value_and_Lock(["InDetPrepRawDataToxAOD/InDetDxAOD.py","PrimaryDPDMaker/PrimaryDPDMaker.py"]);' \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py,InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py' 'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'default:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py' 'RDOMergeAthenaMP:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'POOLMergeAthenaMPAOD0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'POOLMergeAthenaMPDAODIDTRKVALID0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' '/afs/cern.ch/work/t/tkar/testarea/TripletTrackFinder/InnerDetector/InDetRecAlgs/TripletTrackFinder/share/TripletReader_preInclude.py' \
--DataRunNumber '242000' \
--postExec 'HITtoRDO:pixeldigi.EnableSpecialPixels=False; CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];' 'RAWtoESD:ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;' \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
--maxEvents 10
#Reco_tf.py \
#--inputESDFile ${INPUT_DIR}/rec_outputs/ESD.Fullhh4b.pool.root \
#--outputAODFile ${INPUT_DIR}/SLHCFull.AOD.pool.root \
#--maxEvents 10 \
#--AMI=r9877
