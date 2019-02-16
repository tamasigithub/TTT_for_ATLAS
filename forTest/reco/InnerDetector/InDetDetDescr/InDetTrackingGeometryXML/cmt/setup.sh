# echo "setup InDetTrackingGeometryXML InDetTrackingGeometryXML-00-00-73 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtInDetTrackingGeometryXMLtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtInDetTrackingGeometryXMLtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=InDetTrackingGeometryXML -version=InDetTrackingGeometryXML-00-00-73 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtInDetTrackingGeometryXMLtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=InDetTrackingGeometryXML -version=InDetTrackingGeometryXML-00-00-73 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtInDetTrackingGeometryXMLtempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtInDetTrackingGeometryXMLtempfile}
  unset cmtInDetTrackingGeometryXMLtempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtInDetTrackingGeometryXMLtempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtInDetTrackingGeometryXMLtempfile}
unset cmtInDetTrackingGeometryXMLtempfile
return $cmtsetupstatus

