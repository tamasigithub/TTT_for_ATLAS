# echo "setup InDetReadoutGeometry InDetReadoutGeometry-02-01-12-01 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtInDetReadoutGeometrytempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtInDetReadoutGeometrytempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtInDetReadoutGeometrytempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=InDetReadoutGeometry -version=InDetReadoutGeometry-02-01-12-01 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtInDetReadoutGeometrytempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtInDetReadoutGeometrytempfile}
  unset cmtInDetReadoutGeometrytempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtInDetReadoutGeometrytempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtInDetReadoutGeometrytempfile}
unset cmtInDetReadoutGeometrytempfile
exit $cmtsetupstatus

