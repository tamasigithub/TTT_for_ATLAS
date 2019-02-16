# echo "setup G4UserActions G4UserActions-00-01-26 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtG4UserActionstempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtG4UserActionstempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=G4UserActions -version=G4UserActions-00-01-26 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities  -no_cleanup $* >${cmtG4UserActionstempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=G4UserActions -version=G4UserActions-00-01-26 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities  -no_cleanup $* >${cmtG4UserActionstempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtG4UserActionstempfile}
  unset cmtG4UserActionstempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtG4UserActionstempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtG4UserActionstempfile}
unset cmtG4UserActionstempfile
return $cmtsetupstatus

