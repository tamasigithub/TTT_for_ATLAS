# echo "setup SCT_Digitization SCT_Digitization-02-00-14-54 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtSCT_Digitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtSCT_Digitizationtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SCT_Digitization -version=SCT_Digitization-02-00-14-54 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtSCT_Digitizationtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SCT_Digitization -version=SCT_Digitization-02-00-14-54 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtSCT_Digitizationtempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtSCT_Digitizationtempfile}
  unset cmtSCT_Digitizationtempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtSCT_Digitizationtempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtSCT_Digitizationtempfile}
unset cmtSCT_Digitizationtempfile
exit $cmtsetupstatus

