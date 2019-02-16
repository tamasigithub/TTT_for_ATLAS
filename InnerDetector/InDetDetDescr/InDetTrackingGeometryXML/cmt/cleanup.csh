# echo "cleanup InDetTrackingGeometryXML InDetTrackingGeometryXML-00-00-73 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtInDetTrackingGeometryXMLtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtInDetTrackingGeometryXMLtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetTrackingGeometryXML -version=InDetTrackingGeometryXML-00-00-73 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetTrackingGeometryXMLtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetTrackingGeometryXML -version=InDetTrackingGeometryXML-00-00-73 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetTrackingGeometryXMLtempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetTrackingGeometryXMLtempfile}
  unset cmtInDetTrackingGeometryXMLtempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtInDetTrackingGeometryXMLtempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtInDetTrackingGeometryXMLtempfile}
unset cmtInDetTrackingGeometryXMLtempfile
exit $cmtcleanupstatus

