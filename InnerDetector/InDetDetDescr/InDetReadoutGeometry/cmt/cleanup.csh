# echo "cleanup InDetReadoutGeometry InDetReadoutGeometry-02-01-12-01 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDetDescr"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtInDetReadoutGeometrytempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtInDetReadoutGeometrytempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetReadoutGeometrytempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetDetDescr  $* >${cmtInDetReadoutGeometrytempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetReadoutGeometrytempfile}
  unset cmtInDetReadoutGeometrytempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtInDetReadoutGeometrytempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtInDetReadoutGeometrytempfile}
unset cmtInDetReadoutGeometrytempfile
exit $cmtcleanupstatus

