""" SLHC_Setup
    Python module to hold storegate keys of InDet objects.
"""

__author__ =   "A. Salzburger"
__version__=   "$Revision: 1.13 $"
__doc__    =   "SLHC_PathSetting"
__all__    = [ "SLHC_PathSetting" ]

import os
from os.path import exists, join
from InDetSLHC_Example.SLHC_JobProperties import SLHC_Flags

from AtlasGeoModel.InDetGMJobProperties import GeometryFlags
auto_isGMX = (SLHC_Flags.doGMX()) or (GeometryFlags.StripGeoType() == "GMX")

class SLHC_Setup_XMLReader :
    # constructor requires the SLHC_Flags
    def __init__(self):

        # XMLReader setup
        from SLHC_Setup_XML import SLHC_Setup_XMLReader
        SLHC_Setup_XMLReader(PixelLayout = "LoI",
                             PixelEndcapLayout = "LoI4",
                             SCTLayout   = "LoI",
                             dictionaryFileName = "",
                             createXML = False,
                             doPix=True,
                             doSCT=False,
                             isGMX=auto_isGMX
                             )

class SLHC_Setup :
    # constructor requires the SLHC_Flags
    def __init__(self):

        from InDetTrackingGeometryXML.XMLReaderJobProperties import XMLReaderFlags
        bReadXMLfromDB = XMLReaderFlags.readXMLfromDB()

        from AthenaCommon.AppMgr import ServiceMgr as svcMgr
        from AthenaCommon.AppMgr import ToolSvc as toolSvc

        # Only use local text file and dictionary if SLHC_Version set
        if (SLHC_Flags.SLHC_Version() and not (SLHC_Flags.SLHC_Version() == 'None')) : 

            # get the environment variable datapath
            data_path = os.environ.get('DATAPATH')
            # database file name
            database_file = SLHC_Flags.LocalGeometryDbBaseName()+SLHC_Flags.SLHC_Version()+'.txt'
            # dictionary file 
            dict_file = SLHC_Flags.LocalDictionaryBaseName()+SLHC_Flags.SLHC_Version()+'.xml'
            # search the file in the path
            database_file_path = self.search_file(database_file,data_path)
            dict_file_path = self.search_file(dict_file,data_path)
            # screen output
            print '[ SLHC ] Local geometry database: ',database_file
            print '           - found in: ',database_file_path
            print '[ SLHC ] Local dictionary: ',dict_file
            print '           - found in: ',dict_file_path

            # the database 
            database_full_path_name = database_file_path+'/'+database_file

            # Pass text file name to GeometryDBSvc
            if not hasattr(svcMgr,'InDetGeometryDBSvc'):
                from GeometryDBSvc.GeometryDBSvcConf import GeometryDBSvc
                svcMgr+=GeometryDBSvc("InDetGeometryDBSvc")
            svcMgr.InDetGeometryDBSvc.TextFileName = database_full_path_name
            svcMgr.InDetGeometryDBSvc.Sections = ["Pixel","SCT","InDetServMat"]

            # Deprecated: this is for old SCT text files
            os.environ["LocalSlhcGeometryDatabase"]=database_full_path_name

            # dictionary creation
            from DetDescrCnvSvc.DetDescrCnvSvcConf import DetDescrCnvSvc
            DetDescrCnvSvc = DetDescrCnvSvc()
            DetDescrCnvSvc.IdDictFromRDB = False
            DetDescrCnvSvc.InDetIDFileName = dict_file_path+'/'+dict_file

        else:
            print 'SLHC_Setup: Geometry coming fully from database'
            
##        # Alignments have to disabled for Pixels
##        pixelTool = svcMgr.GeoModelSvc.DetectorTools['PixelDetectorTool']
##        pixelTool.Alignable = False

        # GeoModelConfiguration 

        xmlFileDict={}
        xmlFileDict["Pixel"]={
            "PIXELGENERAL":"LoI_PixelGeneral_VF",
            "PIXELSIMPLESERVICE":"LoI_PixelSimpleService_VF",
            "PIXELSERVICEMATERIAL":"LoI_PixelServiceMaterial",
            "SILICONMODULES":"ITK_PixelModules",
            "SILICONREADOUT":"PixelModuleReadout",
            "PIXELDISCSUPPORT":"LoI_PixelDiscSupport_VF",
            "STAVESUPPORT":"LoI_PixelStaveSupport",
            "MATERIAL":"LoI_PixelMaterial",
            }
        
        for subDet in ["Pixel"]:
            for key in xmlFileDict[subDet].keys():
                fileName=xmlFileDict[subDet][key]+".xml"
                envName=subDet.upper()+"_"+key+"_GEO_XML"
                os.environ[envName]=fileName
                print "ENV ",envName," ",fileName

        # Service used to build module geometry
        from PixelModuleTool.PixelModuleToolConf import PixelModuleBuilder
        moduleGeomBuilder=PixelModuleBuilder(name="PixelModuleSvc")
        svcMgr+=moduleGeomBuilder
                    
        # Service used to build module design
        from PixelModuleTool.PixelModuleToolConf import PixelDesignBuilder
        moduleDesignBuilder=PixelDesignBuilder(name="PixelDesignSvc")
        svcMgr+=moduleDesignBuilder
                    
        print "******************************************************************************************"

        from PixelServicesTool.PixelServicesToolConf import PixelServicesTool
        serviceTool=PixelServicesTool(name="PixelServicesTool")
        serviceTool.ReadSvcFromDB = True
        toolSvc+=serviceTool
        
        print "******************************************************************************************"
        
        print "PixelGeoModel - import GeoPixelBarrelLoITool"
        from PixelLayoutLoI.PixelLayoutLoIConf import GeoPixelBarrelLoITool
        geoBarrelTool=GeoPixelBarrelLoITool(name="GeoPixelBarrelLoITool")
        geoBarrelTool.PixelServicesTool = serviceTool
        toolSvc+=geoBarrelTool
        
        print "******************************************************************************************"
        
        print "PixelGeoModel - import GeoPixelEndcapLoITool"
        from PixelLayoutLoI.PixelLayoutLoIConf import GeoPixelEndcapLoITool
        geoEndcapTool=GeoPixelEndcapLoITool(name="GeoPixelEndcapLoITool")
        geoEndcapTool.PixelServicesTool = serviceTool
        toolSvc+=geoEndcapTool
        
        print "******************************************************************************************"
        
        print "PixelGeoModel - import GeoPixelEnvelopeLoITool"
        from PixelLayoutLoI.PixelLayoutLoIConf import GeoPixelEnvelopeLoITool
        geoEnvelopeTool=GeoPixelEnvelopeLoITool(name="GeoPixelEnvelopeLoITool")
        geoEnvelopeTool.GeoPixelBarrelTool=geoBarrelTool
        geoEnvelopeTool.GeoPixelEndcapTool=geoEndcapTool
        geoEnvelopeTool.PixelServicesTool = serviceTool
        toolSvc+=geoEnvelopeTool
        
        print "******************************************************************************************"
        
        pixelTool = svcMgr.GeoModelSvc.DetectorTools['PixelDetectorTool']
        pixelTool.Alignable = False
        pixelTool.FastBuildGeoModel = True
        pixelTool.ConfigGeoAlgTool = True
        pixelTool.ReadXMLFromDB = bReadXMLfromDB
        pixelTool.ConfigGeoBase = "GeoPixelEnvelopeLoITool"


    def search_file(self,filename, search_path):
        """Given a search path, find file
           -- will return the first occurrence
        """
        file_found = 0
        paths = search_path.split(os.pathsep)
        for path in paths:
            if exists(join(path, filename)):
                file_found = 1
                break
        if file_found:
            return path
        else:
            return None
