#include "GaudiKernel/DeclareFactoryEntries.h"
#include "TripletTrackFinder/ReadRDO.h"
#include "TripletTrackFinder/TripletParticleReader.h"

//enter all the algorithms used in this package
DECLARE_ALGORITHM_FACTORY( ReadRDO )
DECLARE_ALGORITHM_FACTORY( TripletParticleReader )

//enter all the algorithms used in this package
DECLARE_FACTORY_ENTRIES(TripletTrackFinder) {
DECLARE_ALGORITHM( ReadRDO )
DECLARE_ALGORITHM( TripletParticleReader )
}
