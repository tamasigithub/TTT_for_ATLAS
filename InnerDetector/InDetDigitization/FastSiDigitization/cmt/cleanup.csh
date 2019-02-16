# echo "cleanup FastSiDigitization FastSiDigitization-00-01-12-02 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtFastSiDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtFastSiDigitizationtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=FastSiDigitization -version=FastSiDigitization-00-01-12-02 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtFastSiDigitizationtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=FastSiDigitization -version=FastSiDigitization-00-01-12-02 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtFastSiDigitizationtempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtFastSiDigitizationtempfile}
  unset cmtFastSiDigitizationtempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtFastSiDigitizationtempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtFastSiDigitizationtempfile}
unset cmtFastSiDigitizationtempfile
exit $cmtcleanupstatus

