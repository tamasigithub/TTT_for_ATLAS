# echo "setup GmxLayouts GmxLayouts-r812826 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtGmxLayoutstempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtGmxLayoutstempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=GmxLayouts -version=GmxLayouts-r812826 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtGmxLayoutstempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=GmxLayouts -version=GmxLayouts-r812826 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtGmxLayoutstempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtGmxLayoutstempfile}
  unset cmtGmxLayoutstempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtGmxLayoutstempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtGmxLayoutstempfile}
unset cmtGmxLayoutstempfile
return $cmtsetupstatus

