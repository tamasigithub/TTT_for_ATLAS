export INPILEUPLOW1=user.tkar.119995.FullMBHits_EXT0/
export INPILEUPHIGH1=user.tkar.119996.FullMBHits_EXT0/
export INPILEUPLOW2=user.tkar.119995.MBHits3_EXT0/
export INPILEUPHIGH2=user.tkar.119996.MBHits3_EXT0/

prun --long --exec "run_onGrrid.sh %IN %INPILEUPLOW1 %INPILEUPHIGH1 %INPILEUPLOW2 %INPILEUPHIGH2 %MAXEVENTS %SKIPEVENTS" --extFile TripletTrackFinder_prunJO_Gridhh4b.py --athenaTag 20.20.10.7 --useAthenaPackages --outTarBall tarball-20-20-10-7.tar.gz --outDS user.tkar.hh4bsig5PU200_29/ --inDS mc16_13TeV.309527.PowhegPythia8EvtGen_AZNLO_CTEQ6L1_VBF_2HDM_H_m1000_hh_4b.merge.EVNT.e6415_e5984_tid14487381_00/ --secondaryDSs INPILEUPLOW1:1:$INPILEUPLOW1,INPILEUPHIGH1:1:$INPILEUPHIGH1,INPILEUPLOW2:1:$INPILEUPLOW2,INPILEUPHIGH2:1:$INPILEUPHIGH2 --outputs OUT.AOD.combinedhh4b.pool.root --nJobs=1 --nEventsPerJob=10 --memory 4000 --site AUTO
#--site ANALY_FZK_UCORE,ANALY_SiGNET,ANALY_DESY-HH,ANALY_SiGNET_DIRECT,ANALY_MANC_GPU_TEST,AUTO

#prun --long --exec "run_onGrrid.sh %IN" --extFile TripletTrackFinder_prunJO_Gridhh4b.py --athenaTag 20.20.10.7 --useAthenaPackages --outTarBall tarball-20-20-10-7.tar.gz --outDS user.tkar.hh4bsig5_14/ --inDS mc16_13TeV.309527.PowhegPythia8EvtGen_AZNLO_CTEQ6L1_VBF_2HDM_H_m1000_hh_4b.merge.EVNT.e6415_e5984_tid12808859_00/ --outputs OUT.AOD.combinedhh4b.pool.root --nJobs=1250 --nEventsPerJob=100 --excludedSite ANALY_MPPMU 
