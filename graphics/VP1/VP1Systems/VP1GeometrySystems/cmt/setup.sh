# echo "setup VP1GeometrySystems VP1GeometrySystems-00-16-09 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/graphics/VP1/VP1Systems"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtVP1GeometrySystemstempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtVP1GeometrySystemstempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=VP1GeometrySystems -version=VP1GeometrySystems-00-16-09 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/graphics/VP1/VP1Systems  -no_cleanup $* >${cmtVP1GeometrySystemstempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=VP1GeometrySystems -version=VP1GeometrySystems-00-16-09 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/graphics/VP1/VP1Systems  -no_cleanup $* >${cmtVP1GeometrySystemstempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtVP1GeometrySystemstempfile}
  unset cmtVP1GeometrySystemstempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtVP1GeometrySystemstempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtVP1GeometrySystemstempfile}
unset cmtVP1GeometrySystemstempfile
return $cmtsetupstatus

