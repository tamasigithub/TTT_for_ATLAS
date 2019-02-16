# echo "setup SiHitAnalysis SiHitAnalysis-00-00-02 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtSiHitAnalysistempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtSiHitAnalysistempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SiHitAnalysis -version=SiHitAnalysis-00-00-02 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance  -no_cleanup $* >${cmtSiHitAnalysistempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SiHitAnalysis -version=SiHitAnalysis-00-00-02 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance  -no_cleanup $* >${cmtSiHitAnalysistempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtSiHitAnalysistempfile}
  unset cmtSiHitAnalysistempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtSiHitAnalysistempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtSiHitAnalysistempfile}
unset cmtSiHitAnalysistempfile
exit $cmtsetupstatus

