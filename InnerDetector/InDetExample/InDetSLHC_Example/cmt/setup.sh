# echo "setup InDetSLHC_Example InDetSLHC_Example-00-02-94 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetExample"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtInDetSLHC_Exampletempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtInDetSLHC_Exampletempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=InDetSLHC_Example -version=InDetSLHC_Example-00-02-94 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetExample  -no_cleanup $* >${cmtInDetSLHC_Exampletempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=InDetSLHC_Example -version=InDetSLHC_Example-00-02-94 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetExample  -no_cleanup $* >${cmtInDetSLHC_Exampletempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtInDetSLHC_Exampletempfile}
  unset cmtInDetSLHC_Exampletempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtInDetSLHC_Exampletempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtInDetSLHC_Exampletempfile}
unset cmtInDetSLHC_Exampletempfile
return $cmtsetupstatus

