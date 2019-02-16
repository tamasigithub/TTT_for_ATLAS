# echo "setup PixelCabling PixelCabling-00-01-20 in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtPixelCablingtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtPixelCablingtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=PixelCabling -version=PixelCabling-00-01-20 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtPixelCablingtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=PixelCabling -version=PixelCabling-00-01-20 -path=/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr  -no_cleanup $* >${cmtPixelCablingtempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtPixelCablingtempfile}
  unset cmtPixelCablingtempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtPixelCablingtempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtPixelCablingtempfile}
unset cmtPixelCablingtempfile
return $cmtsetupstatus

