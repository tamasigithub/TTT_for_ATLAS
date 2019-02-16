# echo "setup VP1GeometrySystems VP1GeometrySystems-00-16-09 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/graphics/VP1/VP1Systems"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527
endif
source ${CMTROOT}/mgr/setup.csh
set cmtVP1GeometrySystemstempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtVP1GeometrySystemstempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=VP1GeometrySystems -version=VP1GeometrySystems-00-16-09 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/graphics/VP1/VP1Systems  -no_cleanup $* >${cmtVP1GeometrySystemstempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=VP1GeometrySystems -version=VP1GeometrySystems-00-16-09 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/graphics/VP1/VP1Systems  -no_cleanup $* >${cmtVP1GeometrySystemstempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtVP1GeometrySystemstempfile}
  unset cmtVP1GeometrySystemstempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtVP1GeometrySystemstempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtVP1GeometrySystemstempfile}
unset cmtVP1GeometrySystemstempfile
exit $cmtsetupstatus

