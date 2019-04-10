#!/bin/sh
export DISPLAY=

#first_arg=$1

#INPILEUPLOW1=$1
#INPILEUPHIGH1=$2
MAXEVENTS=$3
INPILEUPLOW2=$1
INPILEUPHIGH2=$2

#MAXEVENTS=$6
#SKIPEVENTS=$7

this_dir=forTest

#tar xvfz tarball-20-20-10-7.tar.gz

echo "Start of the world"
echo "List current directory"
ls -lha
echo "List previous directory"
ls -lha ..
echo "Test area: $TestArea"
echo "List of testarea:"
ls -lha $TestArea
echo "Full current path:"
pwd
echo "env"
env

echo "Starting stuff"

echo "Resetting the InstallArea to the current directory to avoid using hacks."
####cd ..
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
asetup 20.20.10.7,here
####cd ${this_dir}

#echo starting Full simulation for standard geometry - no CMOS AMI=s3185
#Sim_tf.py --conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' --truthStrategy 'MC15aPlus' --DataRunNumber '242000' --preInclude 'all:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py,InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' --postExec 'EVNTtoHITS:ServiceMgr.DetDescrCnvSvc.DoInitNeighbours = False; from AthenaCommon import CfgGetter;CfgGetter.getService("ISF_MC15aPlusTruthService").BeamPipeTruthStrategies+=["ISF_MCTruthStrategyGroupIDHadInt_MC15"];' --postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/postInclude.SLHC_Setup.py' --preExec 'all:from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals"' --geometryVersion 'default:ATLAS-P2-ITK-20-00-00_VALIDATION' \
#--outputHITSFile=HITS.Fullhh4b.pool.root \
#--maxEvents=$MAXEVENTS \
#--skipEvents=$SKIPEVENTS \
#--inputEVNTFile=${first_arg}
#
echo starting Full Digi for standard geometry - no CMOS AMI=r9877
#--AMI=r9877 # (without pileup)
#--AMI=r9871 # (pileup = 200) 
#--numberOfHighPtMinBias '0.725172' \
#--numberOfLowPtMinBias '209.2692' \
#Reco_tf.py \
#--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
#--digiSteeringConf 'StandardInTimeOnlyTruth' \
#--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
#--inputLowPtMinbiasHitsFile $INPILEUPLOW1 \
#--inputHighPtMinbiasHitsFile $INPILEUPHIGH1 \
#--numberOfHighPtMinBias '0.097251' \
#--numberOfLowPtMinBias '9.2692' \
#--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py,InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu200.py' 'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py,Digitization/ForceUseOfPileUpTools.py,SimulationJobOptions/preInclude.PileUpBunchTrains2012Config1_DigitConfig.py,RunDependentSimData/configLumi_muRange.py' 'default:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py' 'RDOMergeAthenaMP:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'POOLMergeAthenaMPAOD0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'POOLMergeAthenaMPDAODIDTRKVALID0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' \
#--postInclude 'all:InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_lowthresh.py' 'RAWtoESD:InDetSLHC_Example/postInclude.DigitalClustering.py,InDetSLHC_Example/postInclude.NoJetPtFilter.py' \
#--postExec 'HITtoRDO:pixeldigi.EnableSpecialPixels=False; CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];' 'RAWtoESD:ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;' \
#--preExec 'all:from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4"); userRunLumiOverride={"run":242006, "startmu":1.0, "endmu":19.0, "stepmu":1.0, "startlb":1, "timestamp":1412006000};from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout","PhysicsList"];' 'ESDtoDPD:rec.DPDMakerScripts.set_Value_and_Lock(["InDetPrepRawDataToxAOD/InDetDxAOD.py","PrimaryDPDMaker/PrimaryDPDMaker.py"]);' \
#--runNumber=309527 \
#--DataRunNumber=242000 \
#--maxEvents=$MAXEVENTS \
#--jobNumber '1' \
#--inputHITSFile HITS.Fullhh4b.pool.root \
#--outputRDOFile RDO10.Fullhh4b.pool.root \
#--outputESDFile ESD10.Fullhh4b.pool.root

echo "Using hacked InstallArea for modified geometry."
cd ..
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
asetup 20.20.10.7,here
cd ${this_dir}

#echo starting SiOnly simulation for modified geometry with CMOS triplets
#Sim_tf.py \
#--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
#--truthStrategy 'MC15aPlus' \
#--preInclude 'all:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.SiliconOnly.py,InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' \
#--postExec 'EVNTtoHITS:ServiceMgr.DetDescrCnvSvc.DoInitNeighbours = False; from AthenaCommon import CfgGetter;CfgGetter.getService("ISF_MC15aPlusTruthService").BeamPipeTruthStrategies+=["ISF_MCTruthStrategyGroupIDHadInt_MC15"];' \
#--postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/postInclude.SLHC_Setup.py' \
#--preExec 'all:from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals" ; from InDetSLHC_Example.SLHC_Setup_InclBrl_4 import SLHC_Setup_XMLReader; SLHC_Setup_XMLReader = SLHC_Setup_XMLReader(); SLHC_Setup_XMLReader.addCMOS = TRUE ' \
#--geometryVersion 'default:ATLAS-P2-ITK-20-00-00_VALIDATION' \
#--runNumber=309527 \
#--DataRunNumber=242000 \
#--outputHITSFile=HITS.SiOnlyhh4b.pool.root \
#--maxEvents=$MAXEVENTS \
#--skipEvents=$SKIPEVENTS \
#--inputEVNTFile=${first_arg}
#
#--numberOfHighPtMinBias '0.097251' \
#--numberOfLowPtMinBias '9.2692' \
#--numberOfHighPtMinBias '0.725172' \
#--numberOfLowPtMinBias '209.2692' \
#--numberOfHighPtMinBias '0.241724' \
#--numberOfLowPtMinBias '69.7564' \
#--preExec 'all:rec.doTrigger.set_Value_and_Lock(False); userRunLumiOverride={"run":242000, "startmu":190.0, "endmu":210.0, "stepmu":1.0, "startlb":1, "timestamp":1412020000}; from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags; SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout" , "PhysicsList"];digitizationFlags.experimentalDigi += ["doSmearedPixelDigi", "doSmearedSCT_Digi"]' \
#--postExec 'HITtoRDO:CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];from AthenaCommon.CfgGetter import getPublicTool;pixeldigi = getPublicTool("PixelSmearedDigitizationTool"); sctdigi= getPublicTool("SCT_SmearedDigitizationTool"); sctdigi.SigmaX=0.015; sctdigi.SigmaY=0.015; ServiceMgr.MessageSvc.enableSuppression = False; topSequence = AlgSequence();topSequence.StreamRDO.ItemList += ["InDet::SiClusterContainer#PixelClusters", "InDet::SiClusterContainer#SCT_Clusters"] ; topSequence.StreamRDO.ItemList += ["PRD_MultiTruthCollection#PRD_MultiTruthSCT", "xAOD::TruthParticleContainer#*"];from PerfMonComps.PerfMonFlags import jobproperties as pmon_properties; pmon_properties.PerfMonFlags.doSemiDetailedMonitoringFullPrint=True ; from AthenaCommon.Constants import VERBOSE,DEBUG,INFO,WARNING,ERROR ; ServiceMgr.MessageSvc.OutputLevel = VERBOSE ' \
echo starting Fast Digi for modified geometry with CMOS
Reco_tf.py \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--digiSteeringConf 'StandardInTimeOnlyTruth' \
--inputLowPtMinbiasHitsFile $INPILEUPLOW2 \
--inputHighPtMinbiasHitsFile $INPILEUPHIGH2 \
--numberOfHighPtMinBias '0.241724' \
--numberOfLowPtMinBias '69.7564' \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' \
'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.SiliconOnly.py,Digitization/ForceUseOfPileUpTools.py,SimulationJobOptions/preInclude.PileUpBunchTrains2012Config1_DigitConfig.py,RunDependentSimData/configLumi_muRange.py' \
'default:InDetSLHC_Example/preInclude.SLHC.SiliconOnly.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry.py,InDetSLHC_Example/preInclude.RecoSmearedDigi_Pixel.py' \
--postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_SmearedPixel.py' \
--preExec 'all:rec.doTrigger.set_Value_and_Lock(False); userRunLumiOverride={"run":242000, "startmu":49.0, "endmu":70.0, "stepmu":1.0, "startlb":1, "timestamp":1412020000}; from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags; SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout" , "PhysicsList"];digitizationFlags.experimentalDigi += ["doSmearedPixelDigi", "doSmearedSCT_Digi"]' \
--postExec 'HITtoRDO:CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];from AthenaCommon.CfgGetter import getPublicTool;pixeldigi = getPublicTool("PixelSmearedDigitizationTool"); sctdigi= getPublicTool("SCT_SmearedDigitizationTool"); sctdigi.SigmaX=0.015; sctdigi.SigmaY=0.015; ServiceMgr.MessageSvc.enableSuppression = False; topSequence = AlgSequence();topSequence.StreamRDO.ItemList += ["InDet::SiClusterContainer#PixelClusters", "InDet::SiClusterContainer#SCT_Clusters"] ; topSequence.StreamRDO.ItemList += ["PRD_MultiTruthCollection#PRD_MultiTruthSCT", "xAOD::TruthParticleContainer#*"];from PerfMonComps.PerfMonFlags import jobproperties as pmon_properties; pmon_properties.PerfMonFlags.doSemiDetailedMonitoringFullPrint=True ; from AthenaCommon.Constants import VERBOSE,DEBUG,INFO,WARNING,ERROR ; ServiceMgr.MessageSvc.OutputLevel = VERBOSE ' \
--runNumber=309527 \
--DataRunNumber=242000 \
--maxEvents=$MAXEVENTS \
--jobNumber '2' \
--inputHITSFile HITS.SiOnlyhh4b.pool.root \
--outputRDOFile RDO60.SiOnlyhh4b.pool.root 

echo starting to run Triplet Reconstruction
echo "Running TTT"

athena.py TripletTrackFinder_prunJO_Gridhh4b_forPU.py
echo DONE SiOnly Sim,digi,reco!
echo RUNNING the MERGING STEP

Reco_tf.py \
--digiSteeringConf 'StandardInTimeOnlyTruth' \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--postInclude 'all:InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_lowthresh.py' 'RAWtoESD:InDetSLHC_Example/postInclude.DigitalClustering.py,InDetSLHC_Example/postInclude.NoJetPtFilter.py' 'TripletTrackFinder/TripletReader_postInclude.py' \
--preExec 'all:from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout","PhysicsList"];' 'ESDtoDPD:rec.DPDMakerScripts.set_Value_and_Lock(["InDetPrepRawDataToxAOD/InDetDxAOD.py","PrimaryDPDMaker/PrimaryDPDMaker.py"]);' \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py,InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py' 'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'default:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py' 'RDOMergeAthenaMP:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'POOLMergeAthenaMPAOD0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'POOLMergeAthenaMPDAODIDTRKVALID0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'TripletTrackFinder/TripletReader_preInclude.py' \
--DataRunNumber '242000' \
--postExec 'HITtoRDO:pixeldigi.EnableSpecialPixels=False; CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];' 'RAWtoESD:ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;' \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
--maxEvents=$MAXEVENTS \
--inputESDFile ESD60.Fullhh4b.pool.root \
--outputAODFile OUT60.AOD.combinedhh4b.pool.root 

echo "End of the world"
echo "List current directory"
ls -lha
echo "List previous directory"
ls -lha ..
echo "Test area: $TestArea"
echo "List of testarea:"
ls -lha $TestArea
echo "Full current path:"
pwd
echo "env"
env
