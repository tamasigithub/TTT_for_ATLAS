# echo "cleanup Digitization Digitization-02-00-12-00 in /nfs/dust/atlas/user/tkar/20.20.10.7/Simulation"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtDigitizationtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=Digitization -version=Digitization-02-00-12-00 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/Simulation  $* >${cmtDigitizationtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=Digitization -version=Digitization-02-00-12-00 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/Simulation  $* >${cmtDigitizationtempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtDigitizationtempfile}
  unset cmtDigitizationtempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtDigitizationtempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtDigitizationtempfile}
unset cmtDigitizationtempfile
exit $cmtcleanupstatus

