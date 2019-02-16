# echo "cleanup FastSiDigitization FastSiDigitization-00-01-12-02 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtFastSiDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtFastSiDigitizationtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=FastSiDigitization -version=FastSiDigitization-00-01-12-02 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtFastSiDigitizationtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=FastSiDigitization -version=FastSiDigitization-00-01-12-02 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtFastSiDigitizationtempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtFastSiDigitizationtempfile}
  unset cmtFastSiDigitizationtempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtFastSiDigitizationtempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtFastSiDigitizationtempfile}
unset cmtFastSiDigitizationtempfile
return $cmtcleanupstatus

