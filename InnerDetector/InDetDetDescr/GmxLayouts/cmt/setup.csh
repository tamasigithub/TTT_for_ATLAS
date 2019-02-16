# echo "setup GmxLayouts GmxLayouts-r812826 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtGmxLayoutstempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtGmxLayoutstempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=GmxLayouts -version=GmxLayouts-r812826 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtGmxLayoutstempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=GmxLayouts -version=GmxLayouts-r812826 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtGmxLayoutstempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtGmxLayoutstempfile}
  unset cmtGmxLayoutstempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtGmxLayoutstempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtGmxLayoutstempfile}
unset cmtGmxLayoutstempfile
exit $cmtsetupstatus

