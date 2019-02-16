# echo "cleanup WorkArea WorkArea-00-00-00 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtWorkAreatempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtWorkAreatempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=WorkArea -version=WorkArea-00-00-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7  $* >${cmtWorkAreatempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=WorkArea -version=WorkArea-00-00-00 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7  $* >${cmtWorkAreatempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtWorkAreatempfile}
  unset cmtWorkAreatempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtWorkAreatempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtWorkAreatempfile}
unset cmtWorkAreatempfile
return $cmtcleanupstatus

