# echo "setup G4UserActions G4UserActions-00-01-26 in /nfs/dust/atlas/user/tkar/20.20.10.7/Simulation/G4Utilities"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtG4UserActionstempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtG4UserActionstempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=G4UserActions -version=G4UserActions-00-01-26 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/Simulation/G4Utilities  -no_cleanup $* >${cmtG4UserActionstempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=G4UserActions -version=G4UserActions-00-01-26 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/Simulation/G4Utilities  -no_cleanup $* >${cmtG4UserActionstempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtG4UserActionstempfile}
  unset cmtG4UserActionstempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtG4UserActionstempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtG4UserActionstempfile}
unset cmtG4UserActionstempfile
exit $cmtsetupstatus

