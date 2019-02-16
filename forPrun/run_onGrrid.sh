#!/bin/sh
export DISPLAY=
RECO_DIR=./reco
#'/afs/cern.ch/work/t/tkar/testarea/20.20.10.1'
mkdir $RECO_DIR

first_arg=$1
this_dir=forPrun

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
echo "List reco:"
ls -lha reco/
echo "env"
env

echo "Starting stuff"

echo "Resetting the InstallArea to the current directory to avoid using hacks."
####cd ..
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
asetup 20.20.10.7,here
####cd ${this_dir}

echo starting Full simulation for standard geometry - no CMOS AMI=s3185
Sim_tf.py --conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' --truthStrategy 'MC15aPlus' --DataRunNumber '242000' --preInclude 'all:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py,InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' --postExec 'EVNTtoHITS:ServiceMgr.DetDescrCnvSvc.DoInitNeighbours = False; from AthenaCommon import CfgGetter;CfgGetter.getService("ISF_MC15aPlusTruthService").BeamPipeTruthStrategies+=["ISF_MCTruthStrategyGroupIDHadInt_MC15"];' --postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/postInclude.SLHC_Setup.py' --preExec 'all:from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals"' --geometryVersion 'default:ATLAS-P2-ITK-20-00-00_VALIDATION' \
--outputHITSFile=HITS.Fullhh4b.pool.root \
--maxEvents=100 \
--inputEVNTFile=${first_arg}

echo starting Full Digi for standard geometry - no CMOS AMI=r9877
Reco_tf.py \
--inputHITSFile HITS.Fullhh4b.pool.root \
--outputRDOFile RDO.Fullhh4b.pool.root \
--outputESDFile ESD.Fullhh4b.pool.root \
--maxEvents=100 \
--AMI=r9877

echo "Using hacked InstallArea for modified geometry."
cd ..
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
asetup 20.20.10.7,here
cd ${this_dir}

echo starting SiOnly simulation for modified geometry with CMOS triplets
Sim_tf.py \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--truthStrategy 'MC15aPlus' \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.SiliconOnly.py,InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' \
--postExec 'EVNTtoHITS:ServiceMgr.DetDescrCnvSvc.DoInitNeighbours = False; from AthenaCommon import CfgGetter;CfgGetter.getService("ISF_MC15aPlusTruthService").BeamPipeTruthStrategies+=["ISF_MCTruthStrategyGroupIDHadInt_MC15"];' \
--postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/postInclude.SLHC_Setup.py' \
--preExec 'all:from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals" ; from InDetSLHC_Example.SLHC_Setup_InclBrl_4 import SLHC_Setup_XMLReader; SLHC_Setup_XMLReader = SLHC_Setup_XMLReader(); SLHC_Setup_XMLReader.addCMOS = TRUE ' \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00_VALIDATION' \
--runNumber=309527 \
--DataRunNumber=242000 \
--outputHITSFile=HITS.SiOnlyhh4b.pool.root \
--maxEvents=100 \
--inputEVNTFile=${first_arg}

echo starting Fast Digi for modified geometry with CMOS
Reco_tf.py \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--digiSteeringConf 'StandardInTimeOnlyTruth' \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' 'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.SiliconOnly.py' 'default:InDetSLHC_Example/preInclude.SLHC.SiliconOnly.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry.py,InDetSLHC_Example/preInclude.RecoSmearedDigi_Pixel.py' \
--postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_SmearedPixel.py' \
--preExec 'all:rec.doTrigger.set_Value_and_Lock(False); from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags; SLHC_Flags.doGMX.set_Value_and_Lock(True)' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout" , "PhysicsList"];digitizationFlags.experimentalDigi += ["doSmearedPixelDigi", "doSmearedSCT_Digi"]' \
--postExec 'HITtoRDO:CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];from AthenaCommon.CfgGetter import getPublicTool;pixeldigi = getPublicTool("PixelSmearedDigitizationTool"); sctdigi= getPublicTool("SCT_SmearedDigitizationTool"); sctdigi.SigmaX=0.015; sctdigi.SigmaY=0.015; ServiceMgr.MessageSvc.enableSuppression = False; topSequence = AlgSequence();topSequence.StreamRDO.ItemList += ["InDet::SiClusterContainer#PixelClusters", "InDet::SiClusterContainer#SCT_Clusters"] ; topSequence.StreamRDO.ItemList += ["PRD_MultiTruthCollection#PRD_MultiTruthSCT", "xAOD::TruthParticleContainer#*"] ' \
--runNumber=309527 \
--DataRunNumber=242000 \
--maxEvents=100 \
--inputHITSFile HITS.SiOnlyhh4b.pool.root \
--outputRDOFile RDO.SiOnlyhh4b.pool.root 

echo starting to run Triplet Reconstruction
cd ${RECO_DIR}
tar xvfz ../tarball-20-20-10-1.tar.gz
cp ../TripletTrackFinder_prunJO_Gridhh4b.py .
ln -s ../RDO.SiOnlyhh4b.pool.root .

export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
asetup 20.20.10.1,here

echo "Interlude -- moving to .1"
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
echo "Running TTT"

athena.py TripletTrackFinder_prunJO_Gridhh4b.py
echo DONE SiOnly Sim,digi,reco!
echo RUNNING the MERGING STEP

cd ../

ln -s ${RECO_DIR}/TTTSiOnly.hh4b.root .

cd ..
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
asetup 20.20.10.7,here
cd ${this_dir}

echo "Interlude 2 -- moving to .7"
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
echo "Running merging"

Reco_tf.py \
--digiSteeringConf 'StandardInTimeOnlyTruth' \
--conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' \
--postInclude 'all:InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py' 'HITtoRDO:InDetSLHC_Example/postInclude.SLHC_Digitization_lowthresh.py' 'RAWtoESD:InDetSLHC_Example/postInclude.DigitalClustering.py,InDetSLHC_Example/postInclude.NoJetPtFilter.py' 'TripletTrackFinder/TripletReader_postInclude.py' \
--preExec 'all:from AthenaCommon.GlobalFlags import globalflags; globalflags.DataSource.set_Value_and_Lock("geant4");from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals";' 'HITtoRDO:from Digitization.DigitizationFlags import digitizationFlags; digitizationFlags.doInDetNoise.set_Value_and_Lock(False); digitizationFlags.overrideMetadata+=["SimLayout","PhysicsList"];' 'ESDtoDPD:rec.DPDMakerScripts.set_Value_and_Lock(["InDetPrepRawDataToxAOD/InDetDxAOD.py","PrimaryDPDMaker/PrimaryDPDMaker.py"]);' \
--preInclude 'all:InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py,InDetSLHC_Example/preInclude.SLHC_Calorimeter_mu0.py' 'HITtoRDO:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'default:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Reco.py,InDetSLHC_Example/SLHC_Setup_Reco_TrackingGeometry_GMX.py' 'RDOMergeAthenaMP:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py' 'POOLMergeAthenaMPAOD0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'POOLMergeAthenaMPDAODIDTRKVALID0:InDetSLHC_Example/preInclude.SLHC.NoTRT_NoBCM_NoDBM.Ana.py,InDetSLHC_Example/SLHC_Setup_Reco_Alpine.py' 'TripletTrackFinder/TripletReader_preInclude.py' \
--DataRunNumber '242000' \
--postExec 'HITtoRDO:pixeldigi.EnableSpecialPixels=False; CfgMgr.MessageSvc().setError+=["HepMcParticleLink"];' 'RAWtoESD:ToolSvc.InDetSCT_ClusteringTool.useRowInformation=True;' \
--geometryVersion 'default:ATLAS-P2-ITK-20-00-00' \
--maxEvents=100 \
--inputESDFile ESD.Fullhh4b.pool.root \
--outputAODFile OUT.AOD.combinedhh4b.pool.root 

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
echo "List reco:"
ls -lha reco/

