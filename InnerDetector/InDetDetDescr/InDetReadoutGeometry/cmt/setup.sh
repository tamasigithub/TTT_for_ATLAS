# echo "setup InDetReadoutGeometry InDetReadoutGeometry-02-01-12-01 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtInDetReadoutGeometrytempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtInDetReadoutGeometrytempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtInDetReadoutGeometrytempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtInDetReadoutGeometrytempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtInDetReadoutGeometrytempfile}
  unset cmtInDetReadoutGeometrytempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtInDetReadoutGeometrytempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtInDetReadoutGeometrytempfile}
unset cmtInDetReadoutGeometrytempfile
return $cmtsetupstatus

