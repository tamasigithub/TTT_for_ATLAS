
prun --long --exec "run_onGrrid.sh %IN %MAXEVENTS %SKIPEVENTS" --extFile TripletTrackFinder_prunJO_Gridhh4b.py --athenaTag 20.20.10.7 --useAthenaPackages --outTarBall tarball-20-20-10-7.tar.gz --outDS user.tkar.hh4bsig5PU0_3/ --inDS mc16_13TeV.309527.PowhegPythia8EvtGen_AZNLO_CTEQ6L1_VBF_2HDM_H_m1000_hh_4b.merge.EVNT.e6415_e5984_tid14487381_00/ --outputs OUT.AOD.combinedhh4b.pool.root,TTTSiOnly.hh4b.root --nJobs=1700 --nEventsPerJob=100 --excludedSite ANALY_MPPMU

#prun --long --exec "run_onGrrid.sh %IN" --extFile TripletTrackFinder_prunJO_Gridhh4b.py --athenaTag 20.20.10.7 --useAthenaPackages --outTarBall tarball-20-20-10-7.tar.gz --outDS user.tkar.hh4bsig5_14/ --inDS mc16_13TeV.309527.PowhegPythia8EvtGen_AZNLO_CTEQ6L1_VBF_2HDM_H_m1000_hh_4b.merge.EVNT.e6415_e5984_tid12808859_00/ --outputs OUT.AOD.combinedhh4b.pool.root --nJobs=1250 --nEventsPerJob=100 --excludedSite ANALY_MPPMU 
