# echo "cleanup PixelDigitization PixelDigitization-02-00-20-18 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtPixelDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtPixelDigitizationtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=PixelDigitization -version=PixelDigitization-02-00-20-18 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtPixelDigitizationtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=PixelDigitization -version=PixelDigitization-02-00-20-18 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtPixelDigitizationtempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtPixelDigitizationtempfile}
  unset cmtPixelDigitizationtempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtPixelDigitizationtempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtPixelDigitizationtempfile}
unset cmtPixelDigitizationtempfile
return $cmtcleanupstatus

