#
#    Job options for running SiHitAnalysis package
#
from AthenaCommon.AlgSequence import AlgSequence
job = AlgSequence()
from SiHitAnalysis.SiHitAnalysisConf import SiHitAnalysis
job += SiHitAnalysis("SiHitAnalysis")

theApp.EvtMax = 100000
#
# POOL setup
#
import AthenaPoolCnvSvc.ReadAthenaPool
from PoolSvc.PoolSvcConf import PoolSvc
svcMgr += PoolSvc()
#
#    Next 4 lines needed to set up simulation identifiers correctly
#
from AthenaCommon.GlobalFlags import globalflags
globalflags.DetDescrVersion = 'ATLAS-P2-ITK-20-00-00'
from AtlasGeoModel import GeoModelInit
from AtlasGeoModel import SetGeometryVersion
#
#    Input file
#
from AthenaCommon.AthenaCommonFlags import athenaCommonFlags
athenaCommonFlags.FilesInput = [ "/afs/cern.ch/work/j/jwang/private/ATLAS-Upgrade/StripSim/Triplets_2020107_5Feb_ImproveDigi/run/OUT.HITS.100GeV.FixVz.pool.root" ]
from AthenaCommon.AppMgr      import ServiceMgr as svcMgr
svcMgr.EventSelector.InputCollections = athenaCommonFlags.FilesInput.get_Value()
#
#    Output file
#
svcMgr += CfgMgr.THistSvc()
svcMgr.THistSvc.Output += ["HIT_NTUPLE DATAFILE='SiHitAnalOutput.root' OPT='RECREATE'"]
