# echo "cleanup SCT_Digitization SCT_Digitization-02-00-14-54 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtSCT_Digitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtSCT_Digitizationtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=SCT_Digitization -version=SCT_Digitization-02-00-14-54 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtSCT_Digitizationtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=SCT_Digitization -version=SCT_Digitization-02-00-14-54 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  $* >${cmtSCT_Digitizationtempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtSCT_Digitizationtempfile}
  unset cmtSCT_Digitizationtempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtSCT_Digitizationtempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtSCT_Digitizationtempfile}
unset cmtSCT_Digitizationtempfile
return $cmtcleanupstatus

