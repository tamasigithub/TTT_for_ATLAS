#-- start of make_header -----------------

#====================================
#  Document install_runtime
#
#   Generated Wed Oct 10 16:32:24 2018  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_runtime_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_runtime_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_runtime

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(InDetTrackingGeometryXML_tag)_install_runtime.make
cmt_local_tagfile_install_runtime = $(bin)$(InDetTrackingGeometryXML_tag)_install_runtime.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_install_runtime = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_install_runtime)
#-include $(cmt_local_tagfile_install_runtime)

ifdef cmt_install_runtime_has_target_tag

cmt_final_setup_install_runtime = $(bin)setup_install_runtime.make
cmt_dependencies_in_install_runtime = $(bin)dependencies_install_runtime.in
#cmt_final_setup_install_runtime = $(bin)InDetTrackingGeometryXML_install_runtimesetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

else

cmt_final_setup_install_runtime = $(bin)setup.make
cmt_dependencies_in_install_runtime = $(bin)dependencies.in
#cmt_final_setup_install_runtime = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#install_runtime :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_runtime'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_runtime/
#install_runtime::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------


ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/share

install_runtime :: install_runtimeinstall ;

install :: install_runtimeinstall ;

install_runtimeclean :: install_runtimeuninstall

uninstall :: install_runtimeuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_runtimeinstall :: ;

ECRing4Ref_InclinedDuals_25x100_PixelEndcap_xml_dependencies = ../share/ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml
IExtBrl4Ref_PixelBarrel_xml_dependencies = ../share/IExtBrl4Ref_PixelBarrel.xml
LoI_SCTBarrel_xml_dependencies = ../share/LoI_SCTBarrel.xml
ECRing32Ref_PixelEndcap_xml_dependencies = ../share/ECRing32Ref_PixelEndcap.xml
ExtBrl32Ref_PixelBarrel_xml_dependencies = ../share/ExtBrl32Ref_PixelBarrel.xml
Alpine25_PixelEndcap_xml_dependencies = ../share/Alpine25_PixelEndcap.xml
InclBrl4Ref_InclinedQuads_25x100_PixelStave_xml_dependencies = ../share/InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml
IExtBrl4Ref_PixelStave_xml_dependencies = ../share/IExtBrl4Ref_PixelStave.xml
InclBrl4Ref_LightBrl_PixelStave_xml_dependencies = ../share/InclBrl4Ref_LightBrl_PixelStave.xml
ECRing4Ref_PixelEndcap_xml_dependencies = ../share/ECRing4Ref_PixelEndcap.xml
ExtBrl4Ref25x100_PixelStave_xml_dependencies = ../share/ExtBrl4Ref25x100_PixelStave.xml
ExtBrl32Ref_PixelStave_xml_dependencies = ../share/ExtBrl32Ref_PixelStave.xml
SLIM_PixelStave_xml_dependencies = ../share/SLIM_PixelStave.xml
ECRing4Ref_InclinedAlternative_PixelEndcap_xml_dependencies = ../share/ECRing4Ref_InclinedAlternative_PixelEndcap.xml
FourLayersNoStub_SCTEndcap_xml_dependencies = ../share/FourLayersNoStub_SCTEndcap.xml
InclBrl4Ref_InclinedQuads_PixelStave_xml_dependencies = ../share/InclBrl4Ref_InclinedQuads_PixelStave.xml
ITK_PixelModules_xml_dependencies = ../share/ITK_PixelModules.xml
Materials_xml_dependencies = ../share/Materials.xml
Alpine25_PixelStave_xml_dependencies = ../share/Alpine25_PixelStave.xml
ExtBrl4Ref_PixelStave_xml_dependencies = ../share/ExtBrl4Ref_PixelStave.xml
Alpine4_PixelBarrel_xml_dependencies = ../share/Alpine4_PixelBarrel.xml
LoI_PixelStave_xml_dependencies = ../share/LoI_PixelStave.xml
ECRingInclBrl4Ref25x100_PixelEndcap_xml_dependencies = ../share/ECRingInclBrl4Ref25x100_PixelEndcap.xml
ECRing4Ref_Light_PixelEndcap_xml_dependencies = ../share/ECRing4Ref_Light_PixelEndcap.xml
FourLayersNoStub_23-25-dev0_SCTEndcap_xml_dependencies = ../share/FourLayersNoStub_23-25-dev0_SCTEndcap.xml
ATLAS_PixelModules_xml_dependencies = ../share/ATLAS_PixelModules.xml
InclBrl4Ref_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_PixelBarrel.xml
InclBrl4Ref_InclinedAlternative_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_InclinedAlternative_PixelBarrel.xml
IExtBrl4Ref_PixelStave_double_ladder_xml_dependencies = ../share/IExtBrl4Ref_PixelStave_double_ladder.xml
ATLAS_SCTModules_xml_dependencies = ../share/ATLAS_SCTModules.xml
LoI25_PixelEndcap_xml_dependencies = ../share/LoI25_PixelEndcap.xml
ATLAS_PixelStave_xml_dependencies = ../share/ATLAS_PixelStave.xml
Alpine25_PixelBarrel_xml_dependencies = ../share/Alpine25_PixelBarrel.xml
InclBrl4Ref_InclinedDuals_PixelStave_xml_dependencies = ../share/InclBrl4Ref_InclinedDuals_PixelStave.xml
Documentation_xml_dependencies = ../share/Documentation.xml
ExtBrl4Ref33mm_PixelBarrel_xml_dependencies = ../share/ExtBrl4Ref33mm_PixelBarrel.xml
InclBrl4Ref_PixelStave_xml_dependencies = ../share/InclBrl4Ref_PixelStave.xml
LoI_PixelBarrel_xml_dependencies = ../share/LoI_PixelBarrel.xml
InclBrl4Ref_InclinedAlternative_PixelStave_xml_dependencies = ../share/InclBrl4Ref_InclinedAlternative_PixelStave.xml
ATLAS_PixelEndcap_xml_dependencies = ../share/ATLAS_PixelEndcap.xml
ATLAS_SCTStave_xml_dependencies = ../share/ATLAS_SCTStave.xml
InclBrl4Ref_InclinedQuads_25x100_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml
LoI4_PixelEndcap_xml_dependencies = ../share/LoI4_PixelEndcap.xml
ECRing4Ref25x100_PixelEndcap_xml_dependencies = ../share/ECRing4Ref25x100_PixelEndcap.xml
InclBrl4Ref_Light_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_Light_PixelBarrel.xml
FourLayersNoStub_SCTBarrel_xml_dependencies = ../share/FourLayersNoStub_SCTBarrel.xml
InclBrl4Ref_InclinedDuals_25x100_PixelStave_xml_dependencies = ../share/InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml
ATLAS_SCTEndcap_xml_dependencies = ../share/ATLAS_SCTEndcap.xml
SLIM_PixelBarrel_xml_dependencies = ../share/SLIM_PixelBarrel.xml
ECRing4Ref_InclinedDuals_PixelEndcap_xml_dependencies = ../share/ECRing4Ref_InclinedDuals_PixelEndcap.xml
FourLayersNoStub_SCTStave_xml_dependencies = ../share/FourLayersNoStub_SCTStave.xml
LoI_SCTEndcap_xml_dependencies = ../share/LoI_SCTEndcap.xml
ECRing4Ref_InclinedQuads_PixelEndcap_xml_dependencies = ../share/ECRing4Ref_InclinedQuads_PixelEndcap.xml
FourLayersNoStub_23-25-dev0_SCTBarrel_xml_dependencies = ../share/FourLayersNoStub_23-25-dev0_SCTBarrel.xml
ITK_PixelModulesGeo_xml_dependencies = ../share/ITK_PixelModulesGeo.xml
InclBrl4Ref_InclinedDuals_25x100_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml
InclBrl4Ref25x100_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref25x100_PixelBarrel.xml
ExtBrl4Ref33mm_PixelStave_xml_dependencies = ../share/ExtBrl4Ref33mm_PixelStave.xml
ECRing4Ref_InclinedQuads_25x100_PixelEndcap_xml_dependencies = ../share/ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml
FourLayersNoStub_23-25-dev0_SCTStave_xml_dependencies = ../share/FourLayersNoStub_23-25-dev0_SCTStave.xml
InclBrl4Ref_LightBrl_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_LightBrl_PixelBarrel.xml
ITK_SCTModules_xml_dependencies = ../share/ITK_SCTModules.xml
ExtBrl4Ref25x100_PixelBarrel_xml_dependencies = ../share/ExtBrl4Ref25x100_PixelBarrel.xml
InclBrl4Ref25x100_PixelStave_xml_dependencies = ../share/InclBrl4Ref25x100_PixelStave.xml
InclBrl4Ref_InclinedDuals_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_InclinedDuals_PixelBarrel.xml
ATLAS_PixelBarrel_xml_dependencies = ../share/ATLAS_PixelBarrel.xml
LoI_SCTStave_xml_dependencies = ../share/LoI_SCTStave.xml
Alpine4_PixelStave_xml_dependencies = ../share/Alpine4_PixelStave.xml
InclBrl4Ref_Light_PixelStave_xml_dependencies = ../share/InclBrl4Ref_Light_PixelStave.xml
InclBrl4Ref_InclinedQuads_PixelBarrel_xml_dependencies = ../share/InclBrl4Ref_InclinedQuads_PixelBarrel.xml
ATLAS_SCTBarrel_xml_dependencies = ../share/ATLAS_SCTBarrel.xml
Alpine4_PixelEndcap_xml_dependencies = ../share/Alpine4_PixelEndcap.xml
ExtBrl4Ref_PixelBarrel_xml_dependencies = ../share/ExtBrl4Ref_PixelBarrel.xml
ECRingInclBrl4Ref_PixelEndcap_xml_dependencies = ../share/ECRingInclBrl4Ref_PixelEndcap.xml


install_runtimeinstall :: ${install_dir}/ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml ;

${install_dir}/ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml :: ../share/ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref_InclinedDuals_25x100_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/IExtBrl4Ref_PixelBarrel.xml ;

${install_dir}/IExtBrl4Ref_PixelBarrel.xml :: ../share/IExtBrl4Ref_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/IExtBrl4Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "IExtBrl4Ref_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/IExtBrl4Ref_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/IExtBrl4Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "IExtBrl4Ref_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LoI_SCTBarrel.xml ;

${install_dir}/LoI_SCTBarrel.xml :: ../share/LoI_SCTBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LoI_SCTBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LoI_SCTBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LoI_SCTBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing32Ref_PixelEndcap.xml ;

${install_dir}/ECRing32Ref_PixelEndcap.xml :: ../share/ECRing32Ref_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing32Ref_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing32Ref_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing32Ref_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing32Ref_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing32Ref_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl32Ref_PixelBarrel.xml ;

${install_dir}/ExtBrl32Ref_PixelBarrel.xml :: ../share/ExtBrl32Ref_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl32Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl32Ref_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl32Ref_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl32Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl32Ref_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Alpine25_PixelEndcap.xml ;

${install_dir}/Alpine25_PixelEndcap.xml :: ../share/Alpine25_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine25_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Alpine25_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Alpine25_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine25_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Alpine25_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml ;

${install_dir}/InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml :: ../share/InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedQuads_25x100_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/IExtBrl4Ref_PixelStave.xml ;

${install_dir}/IExtBrl4Ref_PixelStave.xml :: ../share/IExtBrl4Ref_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/IExtBrl4Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "IExtBrl4Ref_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/IExtBrl4Ref_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/IExtBrl4Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "IExtBrl4Ref_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_LightBrl_PixelStave.xml ;

${install_dir}/InclBrl4Ref_LightBrl_PixelStave.xml :: ../share/InclBrl4Ref_LightBrl_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_LightBrl_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_LightBrl_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_LightBrl_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_LightBrl_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_LightBrl_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing4Ref_PixelEndcap.xml ;

${install_dir}/ECRing4Ref_PixelEndcap.xml :: ../share/ECRing4Ref_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl4Ref25x100_PixelStave.xml ;

${install_dir}/ExtBrl4Ref25x100_PixelStave.xml :: ../share/ExtBrl4Ref25x100_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl4Ref25x100_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl4Ref25x100_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl4Ref25x100_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl32Ref_PixelStave.xml ;

${install_dir}/ExtBrl32Ref_PixelStave.xml :: ../share/ExtBrl32Ref_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl32Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl32Ref_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl32Ref_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl32Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl32Ref_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/SLIM_PixelStave.xml ;

${install_dir}/SLIM_PixelStave.xml :: ../share/SLIM_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/SLIM_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLIM_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/SLIM_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/SLIM_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLIM_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing4Ref_InclinedAlternative_PixelEndcap.xml ;

${install_dir}/ECRing4Ref_InclinedAlternative_PixelEndcap.xml :: ../share/ECRing4Ref_InclinedAlternative_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedAlternative_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref_InclinedAlternative_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref_InclinedAlternative_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedAlternative_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref_InclinedAlternative_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/FourLayersNoStub_SCTEndcap.xml ;

${install_dir}/FourLayersNoStub_SCTEndcap.xml :: ../share/FourLayersNoStub_SCTEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "FourLayersNoStub_SCTEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/FourLayersNoStub_SCTEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "FourLayersNoStub_SCTEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedQuads_PixelStave.xml ;

${install_dir}/InclBrl4Ref_InclinedQuads_PixelStave.xml :: ../share/InclBrl4Ref_InclinedQuads_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedQuads_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedQuads_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedQuads_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITK_PixelModules.xml ;

${install_dir}/ITK_PixelModules.xml :: ../share/ITK_PixelModules.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITK_PixelModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITK_PixelModules.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITK_PixelModules.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITK_PixelModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITK_PixelModules.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Materials.xml ;

${install_dir}/Materials.xml :: ../share/Materials.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Materials.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Materials.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Materials.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Materials.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Materials.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Alpine25_PixelStave.xml ;

${install_dir}/Alpine25_PixelStave.xml :: ../share/Alpine25_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine25_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Alpine25_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Alpine25_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine25_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Alpine25_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl4Ref_PixelStave.xml ;

${install_dir}/ExtBrl4Ref_PixelStave.xml :: ../share/ExtBrl4Ref_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl4Ref_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl4Ref_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl4Ref_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Alpine4_PixelBarrel.xml ;

${install_dir}/Alpine4_PixelBarrel.xml :: ../share/Alpine4_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine4_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Alpine4_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Alpine4_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine4_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Alpine4_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LoI_PixelStave.xml ;

${install_dir}/LoI_PixelStave.xml :: ../share/LoI_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LoI_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LoI_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LoI_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRingInclBrl4Ref25x100_PixelEndcap.xml ;

${install_dir}/ECRingInclBrl4Ref25x100_PixelEndcap.xml :: ../share/ECRingInclBrl4Ref25x100_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRingInclBrl4Ref25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRingInclBrl4Ref25x100_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRingInclBrl4Ref25x100_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRingInclBrl4Ref25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRingInclBrl4Ref25x100_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing4Ref_Light_PixelEndcap.xml ;

${install_dir}/ECRing4Ref_Light_PixelEndcap.xml :: ../share/ECRing4Ref_Light_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_Light_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref_Light_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref_Light_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_Light_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref_Light_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/FourLayersNoStub_23-25-dev0_SCTEndcap.xml ;

${install_dir}/FourLayersNoStub_23-25-dev0_SCTEndcap.xml :: ../share/FourLayersNoStub_23-25-dev0_SCTEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_23-25-dev0_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "FourLayersNoStub_23-25-dev0_SCTEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/FourLayersNoStub_23-25-dev0_SCTEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_23-25-dev0_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "FourLayersNoStub_23-25-dev0_SCTEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_PixelModules.xml ;

${install_dir}/ATLAS_PixelModules.xml :: ../share/ATLAS_PixelModules.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_PixelModules.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_PixelModules.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_PixelModules.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_PixelBarrel.xml :: ../share/InclBrl4Ref_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedAlternative_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_InclinedAlternative_PixelBarrel.xml :: ../share/InclBrl4Ref_InclinedAlternative_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedAlternative_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedAlternative_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedAlternative_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedAlternative_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedAlternative_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/IExtBrl4Ref_PixelStave_double_ladder.xml ;

${install_dir}/IExtBrl4Ref_PixelStave_double_ladder.xml :: ../share/IExtBrl4Ref_PixelStave_double_ladder.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/IExtBrl4Ref_PixelStave_double_ladder.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "IExtBrl4Ref_PixelStave_double_ladder.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/IExtBrl4Ref_PixelStave_double_ladder.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/IExtBrl4Ref_PixelStave_double_ladder.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "IExtBrl4Ref_PixelStave_double_ladder.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_SCTModules.xml ;

${install_dir}/ATLAS_SCTModules.xml :: ../share/ATLAS_SCTModules.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_SCTModules.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_SCTModules.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_SCTModules.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LoI25_PixelEndcap.xml ;

${install_dir}/LoI25_PixelEndcap.xml :: ../share/LoI25_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI25_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LoI25_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LoI25_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI25_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LoI25_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_PixelStave.xml ;

${install_dir}/ATLAS_PixelStave.xml :: ../share/ATLAS_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Alpine25_PixelBarrel.xml ;

${install_dir}/Alpine25_PixelBarrel.xml :: ../share/Alpine25_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine25_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Alpine25_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Alpine25_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine25_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Alpine25_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedDuals_PixelStave.xml ;

${install_dir}/InclBrl4Ref_InclinedDuals_PixelStave.xml :: ../share/InclBrl4Ref_InclinedDuals_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedDuals_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedDuals_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedDuals_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Documentation.xml ;

${install_dir}/Documentation.xml :: ../share/Documentation.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Documentation.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Documentation.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Documentation.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Documentation.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Documentation.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl4Ref33mm_PixelBarrel.xml ;

${install_dir}/ExtBrl4Ref33mm_PixelBarrel.xml :: ../share/ExtBrl4Ref33mm_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref33mm_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl4Ref33mm_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl4Ref33mm_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref33mm_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl4Ref33mm_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_PixelStave.xml ;

${install_dir}/InclBrl4Ref_PixelStave.xml :: ../share/InclBrl4Ref_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LoI_PixelBarrel.xml ;

${install_dir}/LoI_PixelBarrel.xml :: ../share/LoI_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LoI_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LoI_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LoI_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedAlternative_PixelStave.xml ;

${install_dir}/InclBrl4Ref_InclinedAlternative_PixelStave.xml :: ../share/InclBrl4Ref_InclinedAlternative_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedAlternative_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedAlternative_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedAlternative_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedAlternative_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedAlternative_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_PixelEndcap.xml ;

${install_dir}/ATLAS_PixelEndcap.xml :: ../share/ATLAS_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_SCTStave.xml ;

${install_dir}/ATLAS_SCTStave.xml :: ../share/ATLAS_SCTStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_SCTStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_SCTStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_SCTStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml :: ../share/InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedQuads_25x100_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LoI4_PixelEndcap.xml ;

${install_dir}/LoI4_PixelEndcap.xml :: ../share/LoI4_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI4_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LoI4_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LoI4_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI4_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LoI4_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing4Ref25x100_PixelEndcap.xml ;

${install_dir}/ECRing4Ref25x100_PixelEndcap.xml :: ../share/ECRing4Ref25x100_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref25x100_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref25x100_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref25x100_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_Light_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_Light_PixelBarrel.xml :: ../share/InclBrl4Ref_Light_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_Light_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_Light_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_Light_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_Light_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_Light_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/FourLayersNoStub_SCTBarrel.xml ;

${install_dir}/FourLayersNoStub_SCTBarrel.xml :: ../share/FourLayersNoStub_SCTBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "FourLayersNoStub_SCTBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/FourLayersNoStub_SCTBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "FourLayersNoStub_SCTBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml ;

${install_dir}/InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml :: ../share/InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedDuals_25x100_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_SCTEndcap.xml ;

${install_dir}/ATLAS_SCTEndcap.xml :: ../share/ATLAS_SCTEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_SCTEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_SCTEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_SCTEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/SLIM_PixelBarrel.xml ;

${install_dir}/SLIM_PixelBarrel.xml :: ../share/SLIM_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/SLIM_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLIM_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/SLIM_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/SLIM_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLIM_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing4Ref_InclinedDuals_PixelEndcap.xml ;

${install_dir}/ECRing4Ref_InclinedDuals_PixelEndcap.xml :: ../share/ECRing4Ref_InclinedDuals_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedDuals_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref_InclinedDuals_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref_InclinedDuals_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedDuals_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref_InclinedDuals_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/FourLayersNoStub_SCTStave.xml ;

${install_dir}/FourLayersNoStub_SCTStave.xml :: ../share/FourLayersNoStub_SCTStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "FourLayersNoStub_SCTStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/FourLayersNoStub_SCTStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "FourLayersNoStub_SCTStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LoI_SCTEndcap.xml ;

${install_dir}/LoI_SCTEndcap.xml :: ../share/LoI_SCTEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LoI_SCTEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LoI_SCTEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_SCTEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LoI_SCTEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing4Ref_InclinedQuads_PixelEndcap.xml ;

${install_dir}/ECRing4Ref_InclinedQuads_PixelEndcap.xml :: ../share/ECRing4Ref_InclinedQuads_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedQuads_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref_InclinedQuads_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref_InclinedQuads_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedQuads_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref_InclinedQuads_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/FourLayersNoStub_23-25-dev0_SCTBarrel.xml ;

${install_dir}/FourLayersNoStub_23-25-dev0_SCTBarrel.xml :: ../share/FourLayersNoStub_23-25-dev0_SCTBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_23-25-dev0_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "FourLayersNoStub_23-25-dev0_SCTBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/FourLayersNoStub_23-25-dev0_SCTBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_23-25-dev0_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "FourLayersNoStub_23-25-dev0_SCTBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITK_PixelModulesGeo.xml ;

${install_dir}/ITK_PixelModulesGeo.xml :: ../share/ITK_PixelModulesGeo.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITK_PixelModulesGeo.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITK_PixelModulesGeo.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITK_PixelModulesGeo.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITK_PixelModulesGeo.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITK_PixelModulesGeo.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml :: ../share/InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedDuals_25x100_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref25x100_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref25x100_PixelBarrel.xml :: ../share/InclBrl4Ref25x100_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref25x100_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref25x100_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref25x100_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl4Ref33mm_PixelStave.xml ;

${install_dir}/ExtBrl4Ref33mm_PixelStave.xml :: ../share/ExtBrl4Ref33mm_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref33mm_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl4Ref33mm_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl4Ref33mm_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref33mm_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl4Ref33mm_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml ;

${install_dir}/ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml :: ../share/ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRing4Ref_InclinedQuads_25x100_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/FourLayersNoStub_23-25-dev0_SCTStave.xml ;

${install_dir}/FourLayersNoStub_23-25-dev0_SCTStave.xml :: ../share/FourLayersNoStub_23-25-dev0_SCTStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_23-25-dev0_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "FourLayersNoStub_23-25-dev0_SCTStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/FourLayersNoStub_23-25-dev0_SCTStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FourLayersNoStub_23-25-dev0_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "FourLayersNoStub_23-25-dev0_SCTStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_LightBrl_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_LightBrl_PixelBarrel.xml :: ../share/InclBrl4Ref_LightBrl_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_LightBrl_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_LightBrl_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_LightBrl_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_LightBrl_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_LightBrl_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITK_SCTModules.xml ;

${install_dir}/ITK_SCTModules.xml :: ../share/ITK_SCTModules.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITK_SCTModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITK_SCTModules.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITK_SCTModules.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITK_SCTModules.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITK_SCTModules.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl4Ref25x100_PixelBarrel.xml ;

${install_dir}/ExtBrl4Ref25x100_PixelBarrel.xml :: ../share/ExtBrl4Ref25x100_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl4Ref25x100_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl4Ref25x100_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref25x100_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl4Ref25x100_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref25x100_PixelStave.xml ;

${install_dir}/InclBrl4Ref25x100_PixelStave.xml :: ../share/InclBrl4Ref25x100_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref25x100_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref25x100_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref25x100_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref25x100_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedDuals_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_InclinedDuals_PixelBarrel.xml :: ../share/InclBrl4Ref_InclinedDuals_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedDuals_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedDuals_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedDuals_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedDuals_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_PixelBarrel.xml ;

${install_dir}/ATLAS_PixelBarrel.xml :: ../share/ATLAS_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LoI_SCTStave.xml ;

${install_dir}/LoI_SCTStave.xml :: ../share/LoI_SCTStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LoI_SCTStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LoI_SCTStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LoI_SCTStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LoI_SCTStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Alpine4_PixelStave.xml ;

${install_dir}/Alpine4_PixelStave.xml :: ../share/Alpine4_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine4_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Alpine4_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Alpine4_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine4_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Alpine4_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_Light_PixelStave.xml ;

${install_dir}/InclBrl4Ref_Light_PixelStave.xml :: ../share/InclBrl4Ref_Light_PixelStave.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_Light_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_Light_PixelStave.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_Light_PixelStave.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_Light_PixelStave.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_Light_PixelStave.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/InclBrl4Ref_InclinedQuads_PixelBarrel.xml ;

${install_dir}/InclBrl4Ref_InclinedQuads_PixelBarrel.xml :: ../share/InclBrl4Ref_InclinedQuads_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InclBrl4Ref_InclinedQuads_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InclBrl4Ref_InclinedQuads_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InclBrl4Ref_InclinedQuads_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InclBrl4Ref_InclinedQuads_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ATLAS_SCTBarrel.xml ;

${install_dir}/ATLAS_SCTBarrel.xml :: ../share/ATLAS_SCTBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ATLAS_SCTBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ATLAS_SCTBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ATLAS_SCTBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ATLAS_SCTBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Alpine4_PixelEndcap.xml ;

${install_dir}/Alpine4_PixelEndcap.xml :: ../share/Alpine4_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine4_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Alpine4_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Alpine4_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Alpine4_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Alpine4_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ExtBrl4Ref_PixelBarrel.xml ;

${install_dir}/ExtBrl4Ref_PixelBarrel.xml :: ../share/ExtBrl4Ref_PixelBarrel.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ExtBrl4Ref_PixelBarrel.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ExtBrl4Ref_PixelBarrel.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ExtBrl4Ref_PixelBarrel.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ExtBrl4Ref_PixelBarrel.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ECRingInclBrl4Ref_PixelEndcap.xml ;

${install_dir}/ECRingInclBrl4Ref_PixelEndcap.xml :: ../share/ECRingInclBrl4Ref_PixelEndcap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRingInclBrl4Ref_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ECRingInclBrl4Ref_PixelEndcap.xml" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ECRingInclBrl4Ref_PixelEndcap.xml : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ECRingInclBrl4Ref_PixelEndcap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ECRingInclBrl4Ref_PixelEndcap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_runtimeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_runtime.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_runtimeclean ::
#-- end of cleanup_header ---------------
