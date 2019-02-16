#-- start of make_header -----------------

#====================================
#  Document install_runtime
#
#   Generated Wed Oct 10 16:31:20 2018  by tkar
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

GmxLayouts_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(GmxLayouts_tag)_install_runtime.make
cmt_local_tagfile_install_runtime = $(bin)$(GmxLayouts_tag)_install_runtime.make

else

tags      = $(tag),$(CMTEXTRATAGS)

GmxLayouts_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(GmxLayouts_tag).make
cmt_local_tagfile_install_runtime = $(bin)$(GmxLayouts_tag).make

endif

include $(cmt_local_tagfile_install_runtime)
#-include $(cmt_local_tagfile_install_runtime)

ifdef cmt_install_runtime_has_target_tag

cmt_final_setup_install_runtime = $(bin)setup_install_runtime.make
cmt_dependencies_in_install_runtime = $(bin)dependencies_install_runtime.in
#cmt_final_setup_install_runtime = $(bin)GmxLayouts_install_runtimesetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

else

cmt_final_setup_install_runtime = $(bin)setup.make
cmt_dependencies_in_install_runtime = $(bin)dependencies.in
#cmt_final_setup_install_runtime = $(bin)GmxLayoutssetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)GmxLayoutssetup.make

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

CMOS_Plank_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/CMOS_Plank.gmx
CommonDefines_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/CommonDefines.gmx
ITk_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/ITk.gmx
BarrelSupports_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/BarrelSupports.gmx
EndcapDefines_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/EndcapDefines.gmx
CMOS_Sensor_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/CMOS_Sensor.gmx
PetalPlank_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/PetalPlank.gmx
Sensors_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/Sensors.gmx
BarrelHybrids_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/BarrelHybrids.gmx
DCDC_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/DCDC.gmx
CMOS_Defines_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/CMOS_Defines.gmx
CMOS_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/CMOS.gmx
BarrelDefines_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/BarrelDefines.gmx
Chips_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/Chips.gmx
SensorDefines_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/SensorDefines.gmx
Barrel_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/Barrel.gmx
ITkStrip_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/ITkStrip.gmx
EndcapSupports_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/EndcapSupports.gmx
LTFStripServices_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/LTFStripServices.gmx
Endcaps_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/Endcaps.gmx
EndcapHybrids_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/EndcapHybrids.gmx
CMOS_Face_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/CMOS_Face.gmx
Materials_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/Materials.gmx
Stave_gmx_dependencies = ../data/ITk/Strip/LTFwithCMOS/Stave.gmx


install_runtimeinstall :: ${install_dir}/CMOS_Plank.gmx ;

${install_dir}/CMOS_Plank.gmx :: ../data/ITk/Strip/LTFwithCMOS/CMOS_Plank.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Plank.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CMOS_Plank.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/CMOS_Plank.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Plank.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CMOS_Plank.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/CommonDefines.gmx ;

${install_dir}/CommonDefines.gmx :: ../data/ITk/Strip/LTFwithCMOS/CommonDefines.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CommonDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CommonDefines.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/CommonDefines.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CommonDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CommonDefines.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk.gmx ;

${install_dir}/ITk.gmx :: ../data/ITk/Strip/LTFwithCMOS/ITk.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/ITk.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/ITk.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/ITk.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/BarrelSupports.gmx ;

${install_dir}/BarrelSupports.gmx :: ../data/ITk/Strip/LTFwithCMOS/BarrelSupports.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/BarrelSupports.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "BarrelSupports.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/BarrelSupports.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/BarrelSupports.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "BarrelSupports.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/EndcapDefines.gmx ;

${install_dir}/EndcapDefines.gmx :: ../data/ITk/Strip/LTFwithCMOS/EndcapDefines.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/EndcapDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "EndcapDefines.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/EndcapDefines.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/EndcapDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "EndcapDefines.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/CMOS_Sensor.gmx ;

${install_dir}/CMOS_Sensor.gmx :: ../data/ITk/Strip/LTFwithCMOS/CMOS_Sensor.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Sensor.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CMOS_Sensor.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/CMOS_Sensor.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Sensor.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CMOS_Sensor.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/PetalPlank.gmx ;

${install_dir}/PetalPlank.gmx :: ../data/ITk/Strip/LTFwithCMOS/PetalPlank.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/PetalPlank.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PetalPlank.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/PetalPlank.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/PetalPlank.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PetalPlank.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Sensors.gmx ;

${install_dir}/Sensors.gmx :: ../data/ITk/Strip/LTFwithCMOS/Sensors.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Sensors.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Sensors.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/Sensors.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Sensors.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Sensors.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/BarrelHybrids.gmx ;

${install_dir}/BarrelHybrids.gmx :: ../data/ITk/Strip/LTFwithCMOS/BarrelHybrids.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/BarrelHybrids.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "BarrelHybrids.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/BarrelHybrids.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/BarrelHybrids.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "BarrelHybrids.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/DCDC.gmx ;

${install_dir}/DCDC.gmx :: ../data/ITk/Strip/LTFwithCMOS/DCDC.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/DCDC.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DCDC.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/DCDC.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/DCDC.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DCDC.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/CMOS_Defines.gmx ;

${install_dir}/CMOS_Defines.gmx :: ../data/ITk/Strip/LTFwithCMOS/CMOS_Defines.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Defines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CMOS_Defines.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/CMOS_Defines.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Defines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CMOS_Defines.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/CMOS.gmx ;

${install_dir}/CMOS.gmx :: ../data/ITk/Strip/LTFwithCMOS/CMOS.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CMOS.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/CMOS.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CMOS.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/BarrelDefines.gmx ;

${install_dir}/BarrelDefines.gmx :: ../data/ITk/Strip/LTFwithCMOS/BarrelDefines.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/BarrelDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "BarrelDefines.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/BarrelDefines.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/BarrelDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "BarrelDefines.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Chips.gmx ;

${install_dir}/Chips.gmx :: ../data/ITk/Strip/LTFwithCMOS/Chips.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Chips.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Chips.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/Chips.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Chips.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Chips.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/SensorDefines.gmx ;

${install_dir}/SensorDefines.gmx :: ../data/ITk/Strip/LTFwithCMOS/SensorDefines.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/SensorDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SensorDefines.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/SensorDefines.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/SensorDefines.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SensorDefines.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Barrel.gmx ;

${install_dir}/Barrel.gmx :: ../data/ITk/Strip/LTFwithCMOS/Barrel.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Barrel.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Barrel.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/Barrel.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Barrel.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Barrel.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITkStrip.gmx ;

${install_dir}/ITkStrip.gmx :: ../data/ITk/Strip/LTFwithCMOS/ITkStrip.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/ITkStrip.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITkStrip.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/ITkStrip.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/ITkStrip.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITkStrip.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/EndcapSupports.gmx ;

${install_dir}/EndcapSupports.gmx :: ../data/ITk/Strip/LTFwithCMOS/EndcapSupports.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/EndcapSupports.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "EndcapSupports.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/EndcapSupports.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/EndcapSupports.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "EndcapSupports.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/LTFStripServices.gmx ;

${install_dir}/LTFStripServices.gmx :: ../data/ITk/Strip/LTFwithCMOS/LTFStripServices.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/LTFStripServices.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LTFStripServices.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/LTFStripServices.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/LTFStripServices.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LTFStripServices.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Endcaps.gmx ;

${install_dir}/Endcaps.gmx :: ../data/ITk/Strip/LTFwithCMOS/Endcaps.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Endcaps.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Endcaps.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/Endcaps.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Endcaps.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Endcaps.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/EndcapHybrids.gmx ;

${install_dir}/EndcapHybrids.gmx :: ../data/ITk/Strip/LTFwithCMOS/EndcapHybrids.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/EndcapHybrids.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "EndcapHybrids.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/EndcapHybrids.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/EndcapHybrids.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "EndcapHybrids.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/CMOS_Face.gmx ;

${install_dir}/CMOS_Face.gmx :: ../data/ITk/Strip/LTFwithCMOS/CMOS_Face.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Face.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CMOS_Face.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/CMOS_Face.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/CMOS_Face.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CMOS_Face.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Materials.gmx ;

${install_dir}/Materials.gmx :: ../data/ITk/Strip/LTFwithCMOS/Materials.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Materials.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Materials.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/Materials.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Materials.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Materials.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Stave.gmx ;

${install_dir}/Stave.gmx :: ../data/ITk/Strip/LTFwithCMOS/Stave.gmx
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Stave.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Stave.gmx" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ITk/Strip/LTFwithCMOS/Stave.gmx : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ITk/Strip/LTFwithCMOS/Stave.gmx`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Stave.gmx" "$(install_dir)" "$($(package)_cmtpath)"; \
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
