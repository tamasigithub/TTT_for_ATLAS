# echo "setup SiHitAnalysis SiHitAnalysis-00-00-02 in /nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetPerformance"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/CMT/v1r25p20160527; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtSiHitAnalysistempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtSiHitAnalysistempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=SiHitAnalysis -version=SiHitAnalysis-00-00-02 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetPerformance  -no_cleanup $* >${cmtSiHitAnalysistempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=SiHitAnalysis -version=SiHitAnalysis-00-00-02 -path=/nfs/dust/atlas/user/tkar/20.20.10.7/InnerDetector/InDetPerformance  -no_cleanup $* >${cmtSiHitAnalysistempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtSiHitAnalysistempfile}
  unset cmtSiHitAnalysistempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtSiHitAnalysistempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtSiHitAnalysistempfile}
unset cmtSiHitAnalysistempfile
return $cmtsetupstatus

