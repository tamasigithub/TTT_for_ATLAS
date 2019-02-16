#!/bin/sh
export DISPLAY=
INPUT_DIR='/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/WorkArea/run/test_files'
first_arg=$1
echo yehhh
cd /afs/cern.ch/work/t/tkar/testarea/20.20.10.7
echo Yabadabadoo
export AtlasSetup=/afs/cern.ch/atlas/software/dist/AtlasSetup
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh
echo Boom
asetup 20.20.10.7,here
echo starting Full simulation for standard geometry - no CMOS AMI=s3185
cd ${INPUT_DIR}/sim_full/
Sim_tf.py --conditionsTag 'default:OFLCOND-MC15c-SDR-14-03' --truthStrategy 'MC15aPlus' --DataRunNumber '242000' --preInclude 'all:InDetSLHC_Example/preInclude.SLHC.py,InDetSLHC_Example/preInclude.NoTRT_NoBCM_NoDBM.py,InDetSLHC_Example/preInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/preInclude.SLHC_Setup_Strip_GMX.py' --postExec 'EVNTtoHITS:ServiceMgr.DetDescrCnvSvc.DoInitNeighbours = False; from AthenaCommon import CfgGetter;CfgGetter.getService("ISF_MC15aPlusTruthService").BeamPipeTruthStrategies+=["ISF_MCTruthStrategyGroupIDHadInt_MC15"];' --postInclude 'all:PyJobTransforms/UseFrontier.py,InDetSLHC_Example/postInclude.SLHC_Setup_InclBrl_4.py,InDetSLHC_Example/postInclude.SLHC_Setup.py' --preExec 'all:from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags;SLHC_Flags.doGMX.set_Value_and_Lock(True);SLHC_Flags.LayoutOption="InclinedDuals"' --geometryVersion 'default:ATLAS-P2-ITK-20-00-00_VALIDATION' \
--outputHITSFile=./HITS.Fullhh4b.pool.root \
--maxEvents=10 \
--inputEVNTFile=${INPUT_DIR}/${first_arg}
echo starting Full Digi for standard geometry - no CMOS AMI=r9877
cd ${INPUT_DIR}/digi_full/
Reco_tf.py \
--inputHITSFile ${INPUT_DIR}/sim_full/HITS.Fullhh4b.pool.root \
--outputRDOFile ./RDO.Fullhh4b.pool.root \
--maxEvents 10 \
--AMI=r9877
echo DONE!
