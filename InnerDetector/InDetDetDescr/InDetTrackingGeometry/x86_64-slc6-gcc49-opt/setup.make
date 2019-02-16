----------> uses
# use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#     use PlatformPolicy PlatformPolicy-* External (no_version_directory)
#       use GaudiPolicy *  (no_version_directory)
#         use LCG_Settings *  (no_version_directory)
#         use Python * LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=2.7.9.p1)
#           use LCG_Configuration v*  (no_version_directory)
#           use LCG_Settings v*  (no_version_directory)
#         use tcmalloc * LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=2.4)
#           use LCG_Configuration v*  (no_version_directory)
#           use LCG_Settings v*  (no_version_directory)
#           use libunwind v* LCG_Interfaces (no_version_directory) (native_version=5c2cade)
#             use LCG_Configuration v*  (no_version_directory)
#             use LCG_Settings v*  (no_version_directory)
#         use Reflex v* LCG_Interfaces (no_auto_imports) (no_version_directory)
#       use AtlasCommonPolicy AtlasCommonPolicy-*  (no_version_directory)
#         use LCG_Platforms *  (no_version_directory)
#         use AtlasDoxygen AtlasDoxygen-* Tools (no_version_directory) (native_version=)
#           use LCG_Settings *  (no_version_directory)
#           use LCG_Configuration *  (no_version_directory)
#             use LCG_Platforms *  (no_version_directory)
#     use Mac105_Compat Mac105_Compat-* External (no_version_directory) (native_version=1.0.0)
#       use AtlasExternalArea AtlasExternalArea-* External (no_version_directory)
#         use LCG_Settings v*  (no_version_directory)
#         use PlatformPolicy PlatformPolicy-* External (no_version_directory)
#       use PlatformPolicy PlatformPolicy-* External (no_version_directory)
#   use AtlasCxxPolicy AtlasCxxPolicy-*  (no_version_directory)
#     use GaudiPolicy v*  (no_auto_imports) (no_version_directory)
#     use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#     use AtlasCompilers AtlasCompilers-* External (no_version_directory)
#       use LCG_Platforms *  (no_version_directory)
#     use CheckerGccPlugins CheckerGccPlugins-* External (no_version_directory) (native_version=CheckerGccPlugins-00-01-84)
#       use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#       use AtlasCompilers AtlasCompilers-* External (no_version_directory)
#   use AtlasCommonPolicy AtlasCommonPolicy-*  (no_version_directory)
#   use GaudiPolicy v*  (no_auto_imports) (no_version_directory)
#   use CodeCheck CodeCheck-* Tools (no_version_directory)
#   use AtlasDoxygen AtlasDoxygen-* Tools (no_version_directory) (native_version=)
# use AthenaBaseComps AthenaBaseComps-* Control (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use ExternalPolicy ExternalPolicy-00-* External (no_version_directory)
#     use GaudiKernel v*  (no_version_directory)
#       use GaudiPolicy *  (no_version_directory)
#       use GaudiPluginService *  (no_version_directory)
#         use GaudiPolicy *  (no_version_directory)
#       use Reflex * LCG_Interfaces (no_version_directory)
#         use LCG_Configuration v*  (no_version_directory)
#         use LCG_Settings v*  (no_version_directory)
#         use ROOT v* LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=6.04.18)
#       use Boost * LCG_Interfaces (no_version_directory) (native_version=1.59.0_python2.7)
#         use LCG_Configuration v*  (no_version_directory)
#         use LCG_Settings v*  (no_version_directory)
#         use Python v* LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=2.7.9.p1)
#   use AtlasROOT AtlasROOT-* External (no_version_directory)
#     use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#     use ROOT v* LCG_Interfaces (no_version_directory) (native_version=6.04.18)
#       use LCG_Configuration v*  (no_version_directory)
#       use LCG_Settings v*  (no_version_directory)
#       use GCCXML v* LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=0.9.0_20131026)
#         use LCG_Configuration v*  (no_version_directory)
#         use LCG_Settings v*  (no_version_directory)
#       use Python v* LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=2.7.9.p1)
#       use xrootd v* LCG_Interfaces (no_version_directory) (native_version=4.2.3)
#         use LCG_Configuration v*  (no_version_directory)
#         use LCG_Settings v*  (no_version_directory)
#   use AthenaKernel AthenaKernel-* Control (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use uuid v* LCG_Interfaces (no_version_directory) (native_version=dummy)
#       use LCG_Configuration v*  (no_version_directory)
#       use LCG_Settings v*  (no_version_directory)
#     use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use DataModelRoot DataModelRoot-* Control (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use AtlasROOT AtlasROOT-* External (no_version_directory)
#       use AtlasReflex AtlasReflex-* External (no_version_directory)
#         use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#         use AtlasRELAX AtlasRELAX-* External (no_auto_imports) (no_version_directory)
#           use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#           use RELAX v* LCG_Interfaces (no_version_directory) (native_version=RELAX-root6)
#             use LCG_Configuration v*  (no_version_directory)
#             use LCG_Settings v*  (no_version_directory)
#         use AtlasROOT AtlasROOT-* External (no_version_directory)
#     use CxxUtils CxxUtils-* Control (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use AtlasBoost AtlasBoost-* External (no_version_directory)
#         use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#         use Boost v* LCG_Interfaces (no_version_directory) (native_version=1.59.0_python2.7)
#     use AtlasBoost AtlasBoost-* External (no_version_directory)
#     use Scripts Scripts-* Tools (no_auto_imports) (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use StoreGate StoreGate-* Control (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use CxxUtils CxxUtils-* Control (no_version_directory)
#     use AthenaKernel AthenaKernel-* Control (no_version_directory)
#     use SGTools SGTools-* Control (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use CxxUtils CxxUtils-* Control (no_version_directory)
#       use AthenaKernel AthenaKernel-* Control (no_version_directory)
#       use AtlasBoost AtlasBoost-* External (no_version_directory)
#       use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use AtlasBoost AtlasBoost-* External (no_version_directory)
#     use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use AthAllocators AthAllocators-* Control (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use GaudiInterface GaudiInterface-* External (no_version_directory)
#       use AtlasBoost AtlasBoost-* External (no_version_directory)
#     use AthContainersInterfaces AthContainersInterfaces-* Control (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use SGTools SGTools-* Control (no_version_directory)
#       use CxxUtils CxxUtils-* Control (no_version_directory)
#       use AtlasBoost AtlasBoost-* External (no_version_directory)
#   use SGTools SGTools-* Control (no_version_directory)
#   use CxxUtils CxxUtils-* Control (no_version_directory)
# use GaudiInterface GaudiInterface-* External (no_version_directory)
# use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use AtlasEigen AtlasEigen-* External (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use PyCmt PyCmt-* Tools (no_auto_imports) (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use AtlasPython AtlasPython-* External (no_auto_imports) (no_version_directory)
#         use ExternalPolicy ExternalPolicy-00-* External (no_version_directory)
#         use Python v* LCG_Interfaces (no_version_directory) (native_version=2.7.9.p1)
#   use EventPrimitives EventPrimitives-* Event (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use AtlasEigen AtlasEigen-* External (no_version_directory)
#     use AtlasCLHEP AtlasCLHEP-* External (no_version_directory) (native_version=2.2.0.4)
#       use ExternalPolicy ExternalPolicy-00-* External (no_version_directory)
#       use CLHEP v* LCG_Interfaces (no_version_directory) (native_version=2.2.0.4)
#         use LCG_Configuration v*  (no_version_directory)
#         use LCG_Settings v*  (no_version_directory)
#   use AtlasCLHEP AtlasCLHEP-* External (no_version_directory) (native_version=2.2.0.4)
#   use CxxUtils CxxUtils-* Control (no_version_directory)
# use TrkDetDescrInterfaces TrkDetDescrInterfaces-* Tracking/TrkDetDescr (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use AthenaKernel AthenaKernel-* Control (no_version_directory)
#   use GaudiInterface GaudiInterface-* External (no_version_directory)
#   use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#   use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use AthContainers AthContainers-* Control (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use AthenaKernel AthenaKernel-* Control (no_version_directory)
#       use SGTools SGTools-* Control (no_version_directory)
#       use CxxUtils CxxUtils-* Control (no_version_directory)
#       use AthContainersInterfaces AthContainersInterfaces-* Control (no_version_directory)
#       use AthLinks AthLinks-* Control (no_version_directory)
#         use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#         use AthenaKernel AthenaKernel-* Control (no_version_directory)
#         use SGTools SGTools-* Control (no_version_directory)
#         use CxxUtils CxxUtils-* Control (no_version_directory)
#         use AtlasBoost AtlasBoost-* External (no_version_directory)
#         use GaudiInterface GaudiInterface-* External (no_version_directory)
#         use AtlasReflex AtlasReflex-* External (no_version_directory)
#       use AtlasBoost AtlasBoost-* External (no_version_directory)
#       use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use SGTools SGTools-* Control (no_version_directory)
#     use Identifier Identifier-* DetectorDescription (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use AtlasCxxPolicy AtlasCxxPolicy-*  (no_version_directory)
#       use AtlasBoost AtlasBoost-* External (no_version_directory)
#     use TrkDetDescrUtils TrkDetDescrUtils-* Tracking/TrkDetDescr (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use CLIDSvc CLIDSvc-* Control (no_version_directory)
#         use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#         use SGTools SGTools-* Control (no_version_directory)
#         use AtlasPython AtlasPython-* External (no_auto_imports) (no_version_directory)
#       use GaudiInterface GaudiInterface-* External (no_version_directory)
#       use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#       use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#         use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#         use GaudiInterface GaudiInterface-* External (no_version_directory)
#         use EventPrimitives EventPrimitives-* Event (no_version_directory)
#         use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#     use TrkDetElementBase TrkDetElementBase-* Tracking/TrkDetDescr (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use Identifier Identifier-* DetectorDescription (no_version_directory)
#       use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#       use GeoModelKernel GeoModelKernel-* DetectorDescription/GeoModel (no_version_directory)
#         use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#         use AtlasCxxPolicy AtlasCxxPolicy-*  (no_version_directory)
#         use AtlasCLHEP AtlasCLHEP-* External (no_version_directory) (native_version=2.2.0.4)
#       use EventPrimitives EventPrimitives-* Event (no_version_directory)
#     use TrkParametersBase TrkParametersBase-* Tracking/TrkEvent (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use GaudiInterface GaudiInterface-* External (no_version_directory)
#       use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#       use EventPrimitives EventPrimitives-* Event (no_version_directory)
#       use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#     use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#     use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#     use EventPrimitives EventPrimitives-* Event (no_version_directory)
#   use TrkVolumes TrkVolumes-* Tracking/TrkDetDescr (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use CLIDSvc CLIDSvc-* Control (no_version_directory)
#     use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use TrkDetDescrUtils TrkDetDescrUtils-* Tracking/TrkDetDescr (no_version_directory)
#     use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#     use TrkGeometrySurfaces TrkGeometrySurfaces-* Tracking/TrkDetDescr (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
#       use TrkDetDescrUtils TrkDetDescrUtils-* Tracking/TrkDetDescr (no_version_directory)
#       use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#       use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#       use TrkParametersBase TrkParametersBase-* Tracking/TrkEvent (no_version_directory)
#       use EventPrimitives EventPrimitives-* Event (no_version_directory)
#     use TrkParameters TrkParameters-* Tracking/TrkEvent (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use TrkParametersBase TrkParametersBase-* Tracking/TrkEvent (no_version_directory)
#       use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
#     use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
#     use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#   use TrkGeometry TrkGeometry-* Tracking/TrkDetDescr (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use AthenaBaseComps AthenaBaseComps-* Control (no_version_directory)
#     use AthenaKernel AthenaKernel-* Control (no_version_directory)
#     use CLIDSvc CLIDSvc-* Control (no_version_directory)
#     use DataModel DataModel-* Control (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use SGTools SGTools-* Control (no_version_directory)
#       use AthAllocators AthAllocators-* Control (no_version_directory)
#       use AthLinks AthLinks-* Control (no_version_directory)
#       use AthContainers AthContainers-* Control (no_version_directory)
#       use CxxUtils CxxUtils-* Control (no_version_directory)
#     use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#     use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#     use TrkParameters TrkParameters-* Tracking/TrkEvent (no_version_directory)
#     use TrkNeutralParameters TrkNeutralParameters-* Tracking/TrkEvent (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use TrkParametersBase TrkParametersBase-* Tracking/TrkEvent (no_version_directory)
#       use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
#     use TrkDetDescrUtils TrkDetDescrUtils-* Tracking/TrkDetDescr (no_version_directory)
#     use TrkGeometrySurfaces TrkGeometrySurfaces-* Tracking/TrkDetDescr (no_version_directory)
#     use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
#     use TrkVolumes TrkVolumes-* Tracking/TrkDetDescr (no_version_directory)
#   use TrkDetDescrUtils TrkDetDescrUtils-* Tracking/TrkDetDescr (no_version_directory)
#   use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#   use TrkMaterialOnTrack TrkMaterialOnTrack-* Tracking/TrkEvent (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#   use TrkParameters TrkParameters-* Tracking/TrkEvent (no_version_directory)
# use TrkDetDescrUtils TrkDetDescrUtils-* Tracking/TrkDetDescr (no_version_directory)
# use TrkGeometry TrkGeometry-* Tracking/TrkDetDescr (no_version_directory)
# use AtlasROOT AtlasROOT-* External (no_version_directory)
# use AtlasBoost AtlasBoost-* External (no_version_directory)
# use StoreGate StoreGate-* Control (no_version_directory)
# use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
# use TrkVolumes TrkVolumes-* Tracking/TrkDetDescr (no_version_directory)
# use TrkDetDescrGeoModelCnv TrkDetDescrGeoModelCnv-* Tracking/TrkDetDescr (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use TrkGeometry TrkGeometry-* Tracking/TrkDetDescr (no_version_directory)
#   use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
# use GeoModelKernel GeoModelKernel-* DetectorDescription/GeoModel (no_version_directory)
# use InDetReadoutGeometry InDetReadoutGeometry-* InnerDetector/InDetDetDescr (no_version_directory)
#   use SGTools SGTools-* Control (no_version_directory)
#   use StoreGate StoreGate-* Control (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use AtlasCLHEP AtlasCLHEP-* External (no_version_directory) (native_version=2.2.0.4)
#   use GaudiInterface GaudiInterface-* External (no_version_directory)
#   use AthenaKernel AthenaKernel-* Control (no_version_directory)
#   use CLIDSvc CLIDSvc-* Control (no_version_directory)
#   use Identifier Identifier-* DetectorDescription (no_version_directory)
#   use AtlasDetDescr AtlasDetDescr-* DetectorDescription (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use AtlasReflex AtlasReflex-* External (no_version_directory)
#     use Identifier Identifier-* DetectorDescription (no_version_directory)
#     use IdDict IdDict-* DetectorDescription (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use Identifier Identifier-* DetectorDescription (no_version_directory)
#     use CLIDSvc CLIDSvc-* Control (no_version_directory)
#   use GeoModelKernel GeoModelKernel-* DetectorDescription/GeoModel (no_version_directory)
#   use InDetIdentifier InDetIdentifier-* InnerDetector/InDetDetDescr (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use AtlasDetDescr AtlasDetDescr-* DetectorDescription (no_version_directory)
#     use Identifier Identifier-* DetectorDescription (no_version_directory)
#     use IdDict IdDict-* DetectorDescription (no_version_directory)
#     use CLIDSvc CLIDSvc-* Control (no_version_directory)
#   use InDetCondServices InDetCondServices-* InnerDetector/InDetConditions (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use GaudiInterface GaudiInterface-* External (no_version_directory)
#     use AthenaKernel AthenaKernel-* Control (no_version_directory)
#     use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#   use TrkDetElementBase TrkDetElementBase-* Tracking/TrkDetDescr (no_version_directory)
#   use TrkSurfaces TrkSurfaces-* Tracking/TrkDetDescr (no_version_directory)
#   use TrkEventPrimitives TrkEventPrimitives-* Tracking/TrkEvent (no_version_directory)
#   use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
# use BeamPipeGeoModel BeamPipeGeoModel-* AtlasGeometryCommon (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use GeoModelKernel GeoModelKernel-* DetectorDescription/GeoModel (no_version_directory)
#   use GeoModelUtilities GeoModelUtilities-* DetectorDescription/GeoModel (no_version_directory)
#     use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#     use GeoModelKernel GeoModelKernel-* DetectorDescription/GeoModel (no_version_directory)
#     use AthenaBaseComps AthenaBaseComps-* Control (no_version_directory)
#     use AtlasCLHEP AtlasCLHEP-* External (no_version_directory) (native_version=2.2.0.4)
#     use CLIDSvc CLIDSvc-* Control (no_version_directory)
#     use RDBAccessSvc RDBAccessSvc-* Database/AthenaPOOL (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use GaudiInterface GaudiInterface-* External (no_version_directory)
#       use AtlasCORAL AtlasCORAL-* External (no_version_directory)
#         use ExternalPolicy ExternalPolicy-00-* External (no_version_directory)
#         use CORAL v* LCG_Interfaces (no_version_directory) (native_version=3_1_0)
#           use LCG_Configuration v*  (no_version_directory)
#           use LCG_Settings v*  (no_version_directory)
#           use Boost v* LCG_Interfaces (no_version_directory) (native_version=1.59.0_python2.7)
#         use AtlasReflex AtlasReflex-00-* External (no_auto_imports) (no_version_directory)
#       use AtlasBoost AtlasBoost-* External (no_version_directory)
#     use GeoModelInterfaces GeoModelInterfaces-* DetectorDescription/GeoModel (no_version_directory)
#       use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#       use AthenaKernel AthenaKernel-* Control (no_version_directory)
#       use CLIDSvc CLIDSvc-* Control (no_version_directory)
#       use GaudiInterface GaudiInterface-* External (no_version_directory)
#   use RDBAccessSvc RDBAccessSvc-* Database/AthenaPOOL (no_version_directory)
#   use CLIDSvc CLIDSvc-* Control (no_version_directory)
# use SubDetectorEnvelopes SubDetectorEnvelopes-* AtlasGeometryCommon (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use GaudiInterface GaudiInterface-* External (no_version_directory)
#   use AtlasDetDescr AtlasDetDescr-* DetectorDescription (no_version_directory)
# use InDetIdentifier InDetIdentifier-* InnerDetector/InDetDetDescr (no_version_directory)
# use InDetTrackingGeometryUtils InDetTrackingGeometryUtils-* InnerDetector/InDetDetDescr (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use GeoPrimitives GeoPrimitives-* DetectorDescription (no_version_directory)
#   use TrkDetDescrUtils TrkDetDescrUtils-* Tracking/TrkDetDescr (no_version_directory)
#   use TrkGeometry TrkGeometry-* Tracking/TrkDetDescr (no_version_directory)
#   use InDetIdentifier InDetIdentifier-* InnerDetector/InDetDetDescr (no_version_directory)
# use GaudiKernel v*  (no_auto_imports) (no_version_directory)
# use GaudiCoreSvc *  (no_auto_imports) (no_version_directory)
#   use GaudiKernel *  (no_version_directory)
#   use Boost * LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=1.59.0_python2.7)
#   use ROOT * LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=6.04.18)
# use CLIDComps * Control (no_auto_imports) (no_version_directory)
#   use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#
# Selection :
use CMT v1r25p20160527 (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10)
use CodeCheck CodeCheck-01-02-03 Tools (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use LCG_Platforms v1  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use AtlasCompilers AtlasCompilers-00-00-25 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/DetCommon/20.20.10)
use LCG_Configuration v1  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use LCG_Settings v1  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use CLHEP CLHEP-00-75-00-02 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/DetCommon/20.20.10)
use RELAX v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f) (no_auto_imports)
use uuid v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use AtlasDoxygen AtlasDoxygen-00-04-10 Tools (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/DetCommon/20.20.10)
use AtlasCommonPolicy AtlasCommonPolicy-00-00-55  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/DetCommon/20.20.10)
use xrootd v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use GCCXML v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f) (no_auto_imports)
use libunwind v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f) (no_auto_imports)
use tcmalloc v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f) (no_auto_imports)
use Python v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f) (no_auto_imports)
use Boost Boost-00-75-00-01 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/DetCommon/20.20.10)
use CORAL v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use ROOT v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use Reflex v1 LCG_Interfaces (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f)
use GaudiPolicy GaudiPolicy-15-05-00  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/GAUDI/v26r2p3-lcg81f)
use GaudiPluginService GaudiPluginService-02-02-00  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/GAUDI/v26r2p3-lcg81f)
use GaudiKernel GaudiKernel-31-05-04  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/GAUDI/v26r2p3-lcg81f)
use GaudiCoreSvc GaudiCoreSvc-03-04-00  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/GAUDI/v26r2p3-lcg81f) (no_auto_imports)
use PlatformPolicy PlatformPolicy-00-00-20 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasExternalArea AtlasExternalArea-00-00-27 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use Mac105_Compat Mac105_Compat-00-00-01 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use ExternalPolicy ExternalPolicy-00-01-71 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasCLHEP AtlasCLHEP-00-00-11-01 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasPython AtlasPython-00-01-07 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10) (no_auto_imports)
use AtlasRELAX AtlasRELAX-00-01-00 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10) (no_auto_imports)
use AtlasROOT AtlasROOT-02-03-23 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasReflex AtlasReflex-00-03-10 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasCORAL AtlasCORAL-00-00-10 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use GaudiInterface GaudiInterface-01-03-04 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use CheckerGccPlugins CheckerGccPlugins-00-01-85 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasCxxPolicy AtlasCxxPolicy-00-00-77  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasPolicy AtlasPolicy-01-08-46-04  (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use CLIDComps CLIDComps-00-06-18-03 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10) (no_auto_imports)
use GeoModelKernel GeoModelKernel-00-00-85 DetectorDescription/GeoModel (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use PyCmt PyCmt-00-00-47 Tools (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10) (no_auto_imports)
use AtlasEigen AtlasEigen-00-00-07 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use EventPrimitives EventPrimitives-00-00-45 Event (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use Scripts Scripts-00-01-88 Tools (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10) (no_auto_imports)
use AtlasBoost AtlasBoost-00-00-11 External (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use RDBAccessSvc RDBAccessSvc-00-09-09-02 Database/AthenaPOOL (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use Identifier Identifier-00-09-32 DetectorDescription (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use IdDict IdDict-00-08-20 DetectorDescription (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AthAllocators AthAllocators-00-01-06 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use CxxUtils CxxUtils-00-01-56 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use GeoPrimitives GeoPrimitives-00-00-33-05 DetectorDescription (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkDetElementBase TrkDetElementBase-01-00-02 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkEventPrimitives TrkEventPrimitives-01-00-16 Tracking/TrkEvent (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkMaterialOnTrack TrkMaterialOnTrack-01-01-12 Tracking/TrkEvent (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkParametersBase TrkParametersBase-01-02-25 Tracking/TrkEvent (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use DataModelRoot DataModelRoot-00-00-20 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AthenaKernel AthenaKernel-00-56-19-03 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use InDetCondServices InDetCondServices-01-00-01 InnerDetector/InDetConditions (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasProduction/20.20.10.7)
use SGTools SGTools-00-24-09-03 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use CLIDSvc CLIDSvc-00-05-02 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use GeoModelInterfaces GeoModelInterfaces-00-00-05 DetectorDescription/GeoModel (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AtlasDetDescr AtlasDetDescr-00-08-10 DetectorDescription (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use SubDetectorEnvelopes SubDetectorEnvelopes-00-03-05-02 AtlasGeometryCommon (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasProduction/20.20.10.7)
use InDetIdentifier InDetIdentifier-00-10-02-01 InnerDetector/InDetDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkDetDescrUtils TrkDetDescrUtils-01-03-06 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use AthLinks AthLinks-00-02-19 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AthContainersInterfaces AthContainersInterfaces-00-01-33 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use AthContainers AthContainers-00-02-51-01 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use DataModel DataModel-00-23-71 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use TrkSurfaces TrkSurfaces-01-03-35 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasProduction/20.20.10.7)
use TrkNeutralParameters TrkNeutralParameters-01-00-09 Tracking/TrkEvent (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkParameters TrkParameters-02-00-14 Tracking/TrkEvent (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkGeometrySurfaces TrkGeometrySurfaces-01-00-02 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkVolumes TrkVolumes-01-01-09 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use StoreGate StoreGate-02-45-01-13 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use InDetReadoutGeometry InDetReadoutGeometry-02-01-12-01 InnerDetector/InDetDetDescr (/afs/cern.ch/work/t/tkar/testarea/20.20.10.7)
use AthenaBaseComps AthenaBaseComps-00-07-02 Control (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use GeoModelUtilities GeoModelUtilities-00-01-02 DetectorDescription/GeoModel (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10)
use BeamPipeGeoModel BeamPipeGeoModel-00-00-19-01 AtlasGeometryCommon (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkGeometry TrkGeometry-02-04-10 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use InDetTrackingGeometryUtils InDetTrackingGeometryUtils-00-00-07 InnerDetector/InDetDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkDetDescrGeoModelCnv TrkDetDescrGeoModelCnv-01-00-04 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use TrkDetDescrInterfaces TrkDetDescrInterfaces-01-02-05 Tracking/TrkDetDescr (/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10)
use CMTUSERCONTEXT v0 (/cvmfs/atlas.cern.ch/repo/tools/slc6/cmt)
----------> tags
x86_64-slc6-gcc49-opt (from CMTCONFIG) package [LCG_Platforms PlatformPolicy] implies [target-x86_64 target-slc6 target-gcc49 target-opt Linux slc6 64 gcc-4.9 opt x86_64-slc6-gcc49]
ATLAS (from arguments) package [GaudiPolicy] implies [use-shared-dir no-pyzip] applied [ExternalPolicy]
CMTv1 (from CMTVERSION)
CMTr25 (from CMTVERSION)
CMTp20160527 (from CMTVERSION)
Linux (from uname) package [CMT LCG_Platforms AtlasCxxPolicy AtlasPolicy] implies [Unix host-linux cpp_native_dependencies]
STANDALONE (from CMTSITE)
CMTUSERCONTEXT_no_config (from PROJECT) excludes [CMTUSERCONTEXT_config]
CMTUSERCONTEXT_no_root (from PROJECT) excludes [CMTUSERCONTEXT_root]
CMTUSERCONTEXT_cleanup (from PROJECT) excludes [CMTUSERCONTEXT_no_cleanup]
CMTUSERCONTEXT_scripts (from PROJECT) excludes [CMTUSERCONTEXT_no_scripts]
CMTUSERCONTEXT_no_prototypes (from PROJECT) excludes [CMTUSERCONTEXT_prototypes]
CMTUSERCONTEXT_with_installarea (from PROJECT) excludes [CMTUSERCONTEXT_without_installarea]
CMTUSERCONTEXT_without_version_directory (from PROJECT) excludes [CMTUSERCONTEXT_with_version_directory]
testarea_no_config (from PROJECT) excludes [testarea_config]
testarea_no_root (from PROJECT) excludes [testarea_root]
testarea_cleanup (from PROJECT) excludes [testarea_no_cleanup]
testarea_scripts (from PROJECT) excludes [testarea_no_scripts]
testarea_no_prototypes (from PROJECT) excludes [testarea_prototypes]
testarea_with_installarea (from PROJECT) excludes [testarea_without_installarea]
testarea_without_version_directory (from PROJECT) excludes [testarea_with_version_directory]
testarea (from PROJECT)
AtlasProduction_no_config (from PROJECT) excludes [AtlasProduction_config]
AtlasProduction_no_root (from PROJECT) excludes [AtlasProduction_root]
AtlasProduction_cleanup (from PROJECT) excludes [AtlasProduction_no_cleanup]
AtlasProduction_scripts (from PROJECT) excludes [AtlasProduction_no_scripts]
AtlasProduction_no_prototypes (from PROJECT) excludes [AtlasProduction_prototypes]
AtlasProduction_with_installarea (from PROJECT) excludes [AtlasProduction_without_installarea]
AtlasProduction_without_version_directory (from PROJECT) excludes [AtlasProduction_with_version_directory]
AtlasOffline_no_config (from PROJECT) excludes [AtlasOffline_config]
AtlasOffline_no_root (from PROJECT) excludes [AtlasOffline_root]
AtlasOffline_cleanup (from PROJECT) excludes [AtlasOffline_no_cleanup]
AtlasOffline_scripts (from PROJECT) excludes [AtlasOffline_no_scripts]
AtlasOffline_no_prototypes (from PROJECT) excludes [AtlasOffline_prototypes]
AtlasOffline_with_installarea (from PROJECT) excludes [AtlasOffline_without_installarea]
AtlasOffline_without_version_directory (from PROJECT) excludes [AtlasOffline_with_version_directory]
AtlasAnalysis_no_config (from PROJECT) excludes [AtlasAnalysis_config]
AtlasAnalysis_no_root (from PROJECT) excludes [AtlasAnalysis_root]
AtlasAnalysis_cleanup (from PROJECT) excludes [AtlasAnalysis_no_cleanup]
AtlasAnalysis_scripts (from PROJECT) excludes [AtlasAnalysis_no_scripts]
AtlasAnalysis_no_prototypes (from PROJECT) excludes [AtlasAnalysis_prototypes]
AtlasAnalysis_with_installarea (from PROJECT) excludes [AtlasAnalysis_without_installarea]
AtlasAnalysis_without_version_directory (from PROJECT) excludes [AtlasAnalysis_with_version_directory]
AtlasTrigger_no_config (from PROJECT) excludes [AtlasTrigger_config]
AtlasTrigger_no_root (from PROJECT) excludes [AtlasTrigger_root]
AtlasTrigger_cleanup (from PROJECT) excludes [AtlasTrigger_no_cleanup]
AtlasTrigger_scripts (from PROJECT) excludes [AtlasTrigger_no_scripts]
AtlasTrigger_no_prototypes (from PROJECT) excludes [AtlasTrigger_prototypes]
AtlasTrigger_with_installarea (from PROJECT) excludes [AtlasTrigger_without_installarea]
AtlasTrigger_without_version_directory (from PROJECT) excludes [AtlasTrigger_with_version_directory]
AtlasReconstruction_no_config (from PROJECT) excludes [AtlasReconstruction_config]
AtlasReconstruction_no_root (from PROJECT) excludes [AtlasReconstruction_root]
AtlasReconstruction_cleanup (from PROJECT) excludes [AtlasReconstruction_no_cleanup]
AtlasReconstruction_scripts (from PROJECT) excludes [AtlasReconstruction_no_scripts]
AtlasReconstruction_no_prototypes (from PROJECT) excludes [AtlasReconstruction_prototypes]
AtlasReconstruction_with_installarea (from PROJECT) excludes [AtlasReconstruction_without_installarea]
AtlasReconstruction_without_version_directory (from PROJECT) excludes [AtlasReconstruction_with_version_directory]
AtlasEvent_no_config (from PROJECT) excludes [AtlasEvent_config]
AtlasEvent_no_root (from PROJECT) excludes [AtlasEvent_root]
AtlasEvent_cleanup (from PROJECT) excludes [AtlasEvent_no_cleanup]
AtlasEvent_scripts (from PROJECT) excludes [AtlasEvent_no_scripts]
AtlasEvent_no_prototypes (from PROJECT) excludes [AtlasEvent_prototypes]
AtlasEvent_with_installarea (from PROJECT) excludes [AtlasEvent_without_installarea]
AtlasEvent_without_version_directory (from PROJECT) excludes [AtlasEvent_with_version_directory]
AtlasConditions_no_config (from PROJECT) excludes [AtlasConditions_config]
AtlasConditions_no_root (from PROJECT) excludes [AtlasConditions_root]
AtlasConditions_cleanup (from PROJECT) excludes [AtlasConditions_no_cleanup]
AtlasConditions_scripts (from PROJECT) excludes [AtlasConditions_no_scripts]
AtlasConditions_no_prototypes (from PROJECT) excludes [AtlasConditions_prototypes]
AtlasConditions_with_installarea (from PROJECT) excludes [AtlasConditions_without_installarea]
AtlasConditions_without_version_directory (from PROJECT) excludes [AtlasConditions_with_version_directory]
AtlasCore_no_config (from PROJECT) excludes [AtlasCore_config]
AtlasCore_no_root (from PROJECT) excludes [AtlasCore_root]
AtlasCore_cleanup (from PROJECT) excludes [AtlasCore_no_cleanup]
AtlasCore_scripts (from PROJECT) excludes [AtlasCore_no_scripts]
AtlasCore_no_prototypes (from PROJECT) excludes [AtlasCore_prototypes]
AtlasCore_with_installarea (from PROJECT) excludes [AtlasCore_without_installarea]
AtlasCore_without_version_directory (from PROJECT) excludes [AtlasCore_with_version_directory]
DetCommon_no_config (from PROJECT) excludes [DetCommon_config]
DetCommon_no_root (from PROJECT) excludes [DetCommon_root]
DetCommon_cleanup (from PROJECT) excludes [DetCommon_no_cleanup]
DetCommon_scripts (from PROJECT) excludes [DetCommon_no_scripts]
DetCommon_prototypes (from PROJECT) excludes [DetCommon_no_prototypes]
DetCommon_with_installarea (from PROJECT) excludes [DetCommon_without_installarea]
DetCommon_without_version_directory (from PROJECT) excludes [DetCommon_with_version_directory]
tdaq-common_no_config (from PROJECT) excludes [tdaq-common_config]
tdaq-common_no_root (from PROJECT) excludes [tdaq-common_root]
tdaq-common_cleanup (from PROJECT) excludes [tdaq-common_no_cleanup]
tdaq-common_scripts (from PROJECT) excludes [tdaq-common_no_scripts]
tdaq-common_prototypes (from PROJECT) excludes [tdaq-common_no_prototypes]
tdaq-common_without_installarea (from PROJECT) excludes [tdaq-common_with_installarea]
tdaq-common_without_version_directory (from PROJECT) excludes [tdaq-common_with_version_directory]
LCGCMT_no_config (from PROJECT) excludes [LCGCMT_config]
LCGCMT_no_root (from PROJECT) excludes [LCGCMT_root]
LCGCMT_cleanup (from PROJECT) excludes [LCGCMT_no_cleanup]
LCGCMT_scripts (from PROJECT) excludes [LCGCMT_no_scripts]
LCGCMT_prototypes (from PROJECT) excludes [LCGCMT_no_prototypes]
LCGCMT_with_installarea (from PROJECT) excludes [LCGCMT_without_installarea]
LCGCMT_without_version_directory (from PROJECT) excludes [LCGCMT_with_version_directory]
GAUDI_no_config (from PROJECT) excludes [GAUDI_config]
GAUDI_root (from PROJECT) excludes [GAUDI_no_root]
GAUDI_cleanup (from PROJECT) excludes [GAUDI_no_cleanup]
GAUDI_scripts (from PROJECT) excludes [GAUDI_no_scripts]
GAUDI_prototypes (from PROJECT) excludes [GAUDI_no_prototypes]
GAUDI_with_installarea (from PROJECT) excludes [GAUDI_without_installarea]
GAUDI_without_version_directory (from PROJECT) excludes [GAUDI_with_version_directory]
dqm-common_no_config (from PROJECT) excludes [dqm-common_config]
dqm-common_no_root (from PROJECT) excludes [dqm-common_root]
dqm-common_cleanup (from PROJECT) excludes [dqm-common_no_cleanup]
dqm-common_scripts (from PROJECT) excludes [dqm-common_no_scripts]
dqm-common_prototypes (from PROJECT) excludes [dqm-common_no_prototypes]
dqm-common_without_installarea (from PROJECT) excludes [dqm-common_with_installarea]
dqm-common_without_version_directory (from PROJECT) excludes [dqm-common_with_version_directory]
AtlasSimulation_no_config (from PROJECT) excludes [AtlasSimulation_config]
AtlasSimulation_no_root (from PROJECT) excludes [AtlasSimulation_root]
AtlasSimulation_cleanup (from PROJECT) excludes [AtlasSimulation_no_cleanup]
AtlasSimulation_scripts (from PROJECT) excludes [AtlasSimulation_no_scripts]
AtlasSimulation_no_prototypes (from PROJECT) excludes [AtlasSimulation_prototypes]
AtlasSimulation_with_installarea (from PROJECT) excludes [AtlasSimulation_without_installarea]
AtlasSimulation_without_version_directory (from PROJECT) excludes [AtlasSimulation_with_version_directory]
x86_64 (from package CMT) package [LCG_Platforms] implies [host-x86_64] applied [CMT]
slc610 (from package CMT) package [LCG_Platforms PlatformPolicy] implies [host-slc6 host slc6] applied [CMT]
gcc493 (from package CMT) applied [CMT]
Unix (from package CMT) package [LCG_Platforms] implies [host-unix] excludes [WIN32 Win32]
c_native_dependencies (from package CMT) activated GaudiPolicy
cpp_native_dependencies (from package CMT) activated GaudiPolicy
/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10:/cvmfs/atlas.cern.ch/repo/sw/tdaq/tdaqnotProject (from package ExternalPolicy) applied [ExternalPolicy]
target-unix (from package LCG_Settings) activated LCG_Platforms
target-x86_64 (from package LCG_Settings) activated LCG_Platforms
target-gcc49 (from package LCG_Settings) package [LCG_Platforms] implies [target-gcc4 target-lcg-compiler lcg-compiler target-c11] activated LCG_Platforms
host-x86_64 (from package LCG_Settings) activated LCG_Platforms
target-slc (from package LCG_Settings) package [LCG_Platforms] implies [target-linux] activated LCG_Platforms
target-gcc (from package LCG_Settings) activated LCG_Platforms
target-gcc4 (from package LCG_Settings) package [LCG_Platforms] implies [target-gcc] activated LCG_Platforms
target-lcg-compiler (from package LCG_Settings) activated LCG_Platforms
host-linux (from package LCG_Platforms) package [LCG_Platforms] implies [host-unix]
host-unix (from package LCG_Platforms)
host-slc6 (from package LCG_Platforms) package [LCG_Platforms] implies [host-slc]
host-slc (from package LCG_Platforms) package [LCG_Platforms] implies [host-linux]
target-opt (from package LCG_Platforms)
target-slc6 (from package LCG_Platforms) package [LCG_Platforms] implies [target-slc]
target-linux (from package LCG_Platforms) package [LCG_Platforms] implies [target-unix]
lcg-compiler (from package LCG_Platforms)
target-c11 (from package LCG_Platforms)
ROOT_GE_5_15 (from package LCG_Configuration) applied [LCG_Configuration]
ROOT_GE_5_19 (from package LCG_Configuration) applied [LCG_Configuration]
ROOT_GE_6_00 (from package LCG_Configuration) applied [LCG_Configuration]
use-shared-dir (from package GaudiPolicy)
do_genconf (from package GaudiPolicy) applied [AtlasPolicy] activated AtlasPolicy
no-pyzip (from package GaudiPolicy)
separate-debug (from package AtlasCommonPolicy) excludes [no-separate-debug] applied [AtlasCommonPolicy]
NICOS (from package AtlasCommonPolicy) package AtlasCommonPolicy excludes [NICOSrel_nightly] applied [AtlasCommonPolicy]
LCGCMT_INSTALLED (from package PlatformPolicy) applied [PlatformPolicy ExternalPolicy]
block-tdaqc (from package PlatformPolicy) applied [PlatformPolicy ExternalPolicy]
opt (from package PlatformPolicy) package [AtlasPolicy] implies [optimized]
gcc (from package PlatformPolicy)
64 (from package PlatformPolicy) package [PlatformPolicy] implies [target-64]
gcc-4.9 (from package PlatformPolicy) package [PlatformPolicy] implies [gcc49x gcc49 gcc]
gcc49x (from package PlatformPolicy)
gcc49 (from package PlatformPolicy)
slc6 (from package PlatformPolicy)
x86_64-slc6-gcc49 (from package PlatformPolicy)
host (from package PlatformPolicy)
target-64 (from package PlatformPolicy)
asNeeded (from package PlatformPolicy) applied [PlatformPolicy]
CheckerGccPlugins_project_AtlasCore (from package CheckerGccPlugins) applied [CheckerGccPlugins]
optimized (from package AtlasPolicy) package [AtlasPolicy] implies [opt]
HasAthenaRunTime (from package AtlasPolicy) applied [AtlasPolicy]
SITE_ (from package AtlasPolicy) applied [AtlasPolicy]
HAVE_GAUDI_PLUGINSVC (from package GaudiPluginService) applied [GaudiPluginService]
ROOTBasicLibs (from package AtlasROOT) applied [AtlasROOT]
NEEDS_CORAL_RELATIONAL_ACCESS (from package CORAL) applied [AtlasCORAL] activated AtlasCORAL
no_pack_dist_check (from package InDetTrackingGeometry) applied [InDetTrackingGeometry]
----------> CMTPATH
# Add path /cvmfs/atlas.cern.ch/repo/tools/slc6/cmt from CMTUSERCONTEXT
# Add path /afs/cern.ch/work/t/tkar/testarea/20.20.10.7 from initialization
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasProduction/20.20.10.7 from initialization
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasOffline/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasAnalysis/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasSimulation/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasTrigger/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasReconstruction/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasEvent/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/dqm-common/dqm-common-00-55-00 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasConditions/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/DetCommon/20.20.10 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/tdaq-common/tdaq-common-01-46-00 from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/GAUDI/v26r2p3-lcg81f from ProjectPath
# Add path /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/LCGCMT/LCGCMT_81f from ProjectPath
