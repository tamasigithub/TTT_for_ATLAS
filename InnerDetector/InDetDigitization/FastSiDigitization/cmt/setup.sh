# echo "setup FastSiDigitization FastSiDigitization-00-01-12-02 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtFastSiDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtFastSiDigitizationtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=FastSiDigitization -version=FastSiDigitization-00-01-12-02 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtFastSiDigitizationtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=FastSiDigitization -version=FastSiDigitization-00-01-12-02 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtFastSiDigitizationtempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtFastSiDigitizationtempfile}
  unset cmtFastSiDigitizationtempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtFastSiDigitizationtempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtFastSiDigitizationtempfile}
unset cmtFastSiDigitizationtempfile
return $cmtsetupstatus

