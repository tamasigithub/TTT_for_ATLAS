# echo "cleanup PixelDigitization PixelDigitization-02-00-20-18 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtPixelDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtPixelDigitizationtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=PixelDigitization -version=PixelDigitization-02-00-20-18 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtPixelDigitizationtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=PixelDigitization -version=PixelDigitization-02-00-20-18 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtPixelDigitizationtempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtPixelDigitizationtempfile}
  unset cmtPixelDigitizationtempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtPixelDigitizationtempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtPixelDigitizationtempfile}
unset cmtPixelDigitizationtempfile
exit $cmtcleanupstatus

