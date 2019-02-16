# echo "cleanup InDetTrackingGeometry InDetTrackingGeometry-02-05-16 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtInDetTrackingGeometrytempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtInDetTrackingGeometrytempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetTrackingGeometry -version=InDetTrackingGeometry-02-05-16 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetTrackingGeometrytempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetTrackingGeometry -version=InDetTrackingGeometry-02-05-16 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetTrackingGeometrytempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetTrackingGeometrytempfile}
  unset cmtInDetTrackingGeometrytempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtInDetTrackingGeometrytempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtInDetTrackingGeometrytempfile}
unset cmtInDetTrackingGeometrytempfile
exit $cmtcleanupstatus

