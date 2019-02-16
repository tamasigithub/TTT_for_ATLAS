# echo "setup Digitization Digitization-02-00-12-00 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtDigitizationtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=Digitization -version=Digitization-02-00-12-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation  -no_cleanup $* >${cmtDigitizationtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=Digitization -version=Digitization-02-00-12-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation  -no_cleanup $* >${cmtDigitizationtempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtDigitizationtempfile}
  unset cmtDigitizationtempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtDigitizationtempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtDigitizationtempfile}
unset cmtDigitizationtempfile
exit $cmtsetupstatus

