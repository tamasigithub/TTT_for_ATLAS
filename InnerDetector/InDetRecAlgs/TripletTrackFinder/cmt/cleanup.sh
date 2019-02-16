# echo "cleanup TripletTrackFinder TripletTrackFinder-00-00-01 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTripletTrackFindertempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtTripletTrackFindertempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TripletTrackFinder -version=TripletTrackFinder-00-00-01 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs  $* >${cmtTripletTrackFindertempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TripletTrackFinder -version=TripletTrackFinder-00-00-01 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs  $* >${cmtTripletTrackFindertempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtTripletTrackFindertempfile}
  unset cmtTripletTrackFindertempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtTripletTrackFindertempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtTripletTrackFindertempfile}
unset cmtTripletTrackFindertempfile
return $cmtcleanupstatus

