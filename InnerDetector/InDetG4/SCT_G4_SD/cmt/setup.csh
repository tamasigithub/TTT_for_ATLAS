# echo "setup SCT_G4_SD SCT_G4_SD-00-08-00 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtSCT_G4_SDtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtSCT_G4_SDtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SCT_G4_SD -version=SCT_G4_SD-00-08-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4  -no_cleanup $* >${cmtSCT_G4_SDtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=SCT_G4_SD -version=SCT_G4_SD-00-08-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4  -no_cleanup $* >${cmtSCT_G4_SDtempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtSCT_G4_SDtempfile}
  unset cmtSCT_G4_SDtempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtSCT_G4_SDtempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtSCT_G4_SDtempfile}
unset cmtSCT_G4_SDtempfile
exit $cmtsetupstatus

