# echo "setup SiDigitization SiDigitization-04-10-01 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtSiDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtSiDigitizationtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SiDigitization -version=SiDigitization-04-10-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtSiDigitizationtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SiDigitization -version=SiDigitization-04-10-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtSiDigitizationtempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtSiDigitizationtempfile}
  unset cmtSiDigitizationtempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtSiDigitizationtempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtSiDigitizationtempfile}
unset cmtSiDigitizationtempfile
exit $cmtsetupstatus

