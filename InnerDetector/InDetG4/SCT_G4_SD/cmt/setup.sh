# echo "setup SCT_G4_SD SCT_G4_SD-00-08-00 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtSCT_G4_SDtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtSCT_G4_SDtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=SCT_G4_SD -version=SCT_G4_SD-00-08-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4  -no_cleanup $* >${cmtSCT_G4_SDtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=SCT_G4_SD -version=SCT_G4_SD-00-08-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4  -no_cleanup $* >${cmtSCT_G4_SDtempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtSCT_G4_SDtempfile}
  unset cmtSCT_G4_SDtempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtSCT_G4_SDtempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtSCT_G4_SDtempfile}
unset cmtSCT_G4_SDtempfile
return $cmtsetupstatus

