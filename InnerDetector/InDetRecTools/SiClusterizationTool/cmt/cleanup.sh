# echo "cleanup SiClusterizationTool SiClusterizationTool-04-00-33-54 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetRecTools"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtSiClusterizationTooltempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtSiClusterizationTooltempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=SiClusterizationTool -version=SiClusterizationTool-04-00-33-54 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetRecTools  $* >${cmtSiClusterizationTooltempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=SiClusterizationTool -version=SiClusterizationTool-04-00-33-54 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetRecTools  $* >${cmtSiClusterizationTooltempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtSiClusterizationTooltempfile}
  unset cmtSiClusterizationTooltempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtSiClusterizationTooltempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtSiClusterizationTooltempfile}
unset cmtSiClusterizationTooltempfile
return $cmtcleanupstatus

