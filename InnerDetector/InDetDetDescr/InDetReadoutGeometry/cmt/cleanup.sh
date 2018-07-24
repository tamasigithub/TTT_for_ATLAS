# echo "cleanup InDetReadoutGeometry InDetReadoutGeometry-02-01-12-01 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDetDescr"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtInDetReadoutGeometrytempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtInDetReadoutGeometrytempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetReadoutGeometrytempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetReadoutGeometrytempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetReadoutGeometrytempfile}
  unset cmtInDetReadoutGeometrytempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtInDetReadoutGeometrytempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtInDetReadoutGeometrytempfile}
unset cmtInDetReadoutGeometrytempfile
return $cmtcleanupstatus

