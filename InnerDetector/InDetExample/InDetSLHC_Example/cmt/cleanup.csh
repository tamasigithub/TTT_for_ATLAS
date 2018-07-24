# echo "cleanup InDetSLHC_Example InDetSLHC_Example-00-02-94 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetExample"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtInDetSLHC_Exampletempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtInDetSLHC_Exampletempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetSLHC_Example -version=InDetSLHC_Example-00-02-94 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetExample  $* >${cmtInDetSLHC_Exampletempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetSLHC_Example -version=InDetSLHC_Example-00-02-94 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetExample  $* >${cmtInDetSLHC_Exampletempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetSLHC_Exampletempfile}
  unset cmtInDetSLHC_Exampletempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtInDetSLHC_Exampletempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtInDetSLHC_Exampletempfile}
unset cmtInDetSLHC_Exampletempfile
exit $cmtcleanupstatus

