#!/bin/sh
export DISPLAY=
INPUT_DIR='/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files'
RECO_DIR='/afs/cern.ch/work/t/tkar/testarea/20.20.10.1'
first_arg=$1
echo yehhh
cd /afs/cern.ch/work/t/tkar/public/CMOS-Triplet-SimDigi/
echo Yabadabadoo
export AtlasSetup=/afs/cern.ch/atlas/software/dist/AtlasSetup
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
echo Boom
asetup 20.20.10.7,here
echo starting SiOnly simulation for modified geometry with CMOS triplets
cd ./WorkArea/run/
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
--outputHITSFile=${INPUT_DIR}/sim_SiOnly/HITS.SiOnlyhh4b.pool.root \
--maxEvents=10 \
--inputEVNTFile=${INPUT_DIR}/${first_arg}
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
--maxEvents 10 \
--inputHITSFile ${INPUT_DIR}/sim_SiOnly/HITS.SiOnlyhh4b.pool.root \
--outputRDOFile ${INPUT_DIR}/digi_SiOnly/RDO.SiOnlyhh4b.pool.root 
echo starting to run Triplet Reconstruction
cd ${RECO_DIR}
export AtlasSetup=/afs/cern.ch/atlas/software/dist/AtlasSetup
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
asetup 20.20.10.1,here
cd ${RECO_DIR}/WorkArea/run/
athena.py TripletTrackFinder_JobOptions.py
echo DONE!
