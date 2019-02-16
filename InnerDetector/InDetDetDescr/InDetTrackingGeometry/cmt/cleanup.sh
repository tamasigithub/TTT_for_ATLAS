# echo "cleanup InDetTrackingGeometry InDetTrackingGeometry-02-05-16 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtInDetTrackingGeometrytempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtInDetTrackingGeometrytempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=InDetTrackingGeometry -version=InDetTrackingGeometry-02-05-16 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetTrackingGeometrytempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=InDetTrackingGeometry -version=InDetTrackingGeometry-02-05-16 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetTrackingGeometrytempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetTrackingGeometrytempfile}
  unset cmtInDetTrackingGeometrytempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtInDetTrackingGeometrytempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtInDetTrackingGeometrytempfile}
unset cmtInDetTrackingGeometrytempfile
return $cmtcleanupstatus

