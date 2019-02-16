# echo "cleanup Digitization Digitization-02-00-12-00 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtDigitizationtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=Digitization -version=Digitization-02-00-12-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation  $* >${cmtDigitizationtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=Digitization -version=Digitization-02-00-12-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation  $* >${cmtDigitizationtempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtDigitizationtempfile}
  unset cmtDigitizationtempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtDigitizationtempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtDigitizationtempfile}
unset cmtDigitizationtempfile
return $cmtcleanupstatus

