# echo "setup SiDigitization SiDigitization-04-10-01 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtSiDigitizationtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtSiDigitizationtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=SiDigitization -version=SiDigitization-04-10-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtSiDigitizationtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=SiDigitization -version=SiDigitization-04-10-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDigitization  -no_cleanup $* >${cmtSiDigitizationtempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtSiDigitizationtempfile}
  unset cmtSiDigitizationtempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtSiDigitizationtempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtSiDigitizationtempfile}
unset cmtSiDigitizationtempfile
return $cmtsetupstatus

