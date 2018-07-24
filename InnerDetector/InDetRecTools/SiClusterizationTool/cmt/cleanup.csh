# echo "cleanup SiClusterizationTool SiClusterizationTool-04-00-33-54 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetRecTools"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtSiClusterizationTooltempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtSiClusterizationTooltempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=SiClusterizationTool -version=SiClusterizationTool-04-00-33-54 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetRecTools  $* >${cmtSiClusterizationTooltempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=SiClusterizationTool -version=SiClusterizationTool-04-00-33-54 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetRecTools  $* >${cmtSiClusterizationTooltempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtSiClusterizationTooltempfile}
  unset cmtSiClusterizationTooltempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtSiClusterizationTooltempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtSiClusterizationTooltempfile}
unset cmtSiClusterizationTooltempfile
exit $cmtcleanupstatus

