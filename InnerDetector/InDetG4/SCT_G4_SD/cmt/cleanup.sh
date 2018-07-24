# echo "cleanup SCT_G4_SD SCT_G4_SD-00-08-00 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetG4"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtSCT_G4_SDtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtSCT_G4_SDtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=SCT_G4_SD -version=SCT_G4_SD-00-08-00 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetG4  $* >${cmtSCT_G4_SDtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=SCT_G4_SD -version=SCT_G4_SD-00-08-00 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetG4  $* >${cmtSCT_G4_SDtempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtSCT_G4_SDtempfile}
  unset cmtSCT_G4_SDtempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtSCT_G4_SDtempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtSCT_G4_SDtempfile}
unset cmtSCT_G4_SDtempfile
return $cmtcleanupstatus

