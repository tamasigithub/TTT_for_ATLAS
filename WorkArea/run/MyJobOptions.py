###############################################################
# Job Option file
###############################################################

#--------------------------------------------------------------
#  ATLAS default Application Configuration options
#--------------------------------------------------------------

#Use McEventSelector so we can run with AthenaMP
#import AthenaCommon.AtlasUnixGeneratorJob

#--------------------------------------------------------------
# Private Application Configuration options
#--------------------------------------------------------------

# Full job is a list of algorithms
from AthenaCommon.AlgSequence import AlgSequence
job = AlgSequence()

# Add top algorithms to be run
from TripletTrackFinder.TripletTrackFinderConf import ReadRDO
job += ReadRDO( "TripletTrackFinder" ) #1 alg named "TripletTrackFinder"

#--------------------------------------------------------------
# Set output level threshold (DEBUG, INFO, WARNING, ERROR, FATAL)
#--------------------------------------------------------------
job.TripletTrackFinder.OutputLevel = INFO

#--------------------------------------------------------------
# Event related parameters
#--------------------------------------------------------------
# Number of events to be processed (default is 10)
theApp.EvtMax = 1
#============================================================== 
