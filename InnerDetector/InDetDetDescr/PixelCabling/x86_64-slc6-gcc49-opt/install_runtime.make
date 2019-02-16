#-- start of make_header -----------------

#====================================
#  Document install_runtime
#
#   Generated Tue Jan 29 18:57:48 2019  by tkar
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

PixelCabling_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(PixelCabling_tag)_install_runtime.make
cmt_local_tagfile_install_runtime = $(bin)$(PixelCabling_tag)_install_runtime.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelCabling_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(PixelCabling_tag).make
cmt_local_tagfile_install_runtime = $(bin)$(PixelCabling_tag).make

endif

include $(cmt_local_tagfile_install_runtime)
#-include $(cmt_local_tagfile_install_runtime)

ifdef cmt_install_runtime_has_target_tag

cmt_final_setup_install_runtime = $(bin)setup_install_runtime.make
cmt_dependencies_in_install_runtime = $(bin)dependencies_install_runtime.in
#cmt_final_setup_install_runtime = $(bin)PixelCabling_install_runtimesetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

else

cmt_final_setup_install_runtime = $(bin)setup.make
cmt_dependencies_in_install_runtime = $(bin)dependencies.in
#cmt_final_setup_install_runtime = $(bin)PixelCablingsetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelCablingsetup.make

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

ITk_Atlas_IdMapping_dat_dependencies = ../share/ITk_Atlas_IdMapping.dat
ITk_Atlas_IdMapping_ExtBrl32_dat_dependencies = ../share/ITk_Atlas_IdMapping_ExtBrl32.dat
ITk_Atlas_IdMapping_ExtBrl4_dat_dependencies = ../share/ITk_Atlas_IdMapping_ExtBrl4.dat
ITk_Atlas_IdMapping_IExtBrl4_dat_dependencies = ../share/ITk_Atlas_IdMapping_IExtBrl4.dat
ITk_Atlas_IdMapping_InclBrl4_dat_dependencies = ../share/ITk_Atlas_IdMapping_InclBrl4.dat
ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2_dat_dependencies = ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat
ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0_dat_dependencies = ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat
ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2_dat_dependencies = ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat
ITk_Atlas_IdMapping_InclBrl4_OptRing_dat_dependencies = ../share/ITk_Atlas_IdMapping_InclBrl4_OptRing.dat
ITk_Atlas_IdMapping_LoI_dat_dependencies = ../share/ITk_Atlas_IdMapping_LoI.dat
ITk_Atlas_IdMapping_LoIVF_dat_dependencies = ../share/ITk_Atlas_IdMapping_LoIVF.dat
Pixels_Atlas_IdMapping_dat_dependencies = ../share/Pixels_Atlas_IdMapping.dat
Pixels_Atlas_IdMapping_2016_dat_dependencies = ../share/Pixels_Atlas_IdMapping_2016.dat
Pixels_Atlas_IdMapping_2017_dat_dependencies = ../share/Pixels_Atlas_IdMapping_2017.dat
Pixels_Atlas_IdMapping_July14_dat_dependencies = ../share/Pixels_Atlas_IdMapping_July14.dat
Pixels_Atlas_IdMapping_M5_dat_dependencies = ../share/Pixels_Atlas_IdMapping_M5.dat
Pixels_Atlas_IdMapping_M6_dat_dependencies = ../share/Pixels_Atlas_IdMapping_M6.dat
Pixels_Atlas_IdMapping_M7_dat_dependencies = ../share/Pixels_Atlas_IdMapping_M7.dat
Pixels_Atlas_IdMapping_May08_dat_dependencies = ../share/Pixels_Atlas_IdMapping_May08.dat
Pixels_Atlas_IdMapping_May08_inclIBL_dat_dependencies = ../share/Pixels_Atlas_IdMapping_May08_inclIBL.dat
Pixels_Atlas_IdMapping_Run2_dat_dependencies = ../share/Pixels_Atlas_IdMapping_Run2.dat
Pixels_Atlas_IdMapping_Sep14_dat_dependencies = ../share/Pixels_Atlas_IdMapping_Sep14.dat
Pixels_Atlas_IdMapping_inclIBL_dat_dependencies = ../share/Pixels_Atlas_IdMapping_inclIBL.dat
Pixels_Atlas_IdMapping_inclIBL3D_DBM_dat_dependencies = ../share/Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat
Pixels_Atlas_IdMapping_inclIBL_DBM_dat_dependencies = ../share/Pixels_Atlas_IdMapping_inclIBL_DBM.dat


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping.dat ;

${install_dir}/ITk_Atlas_IdMapping.dat :: ../share/ITk_Atlas_IdMapping.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_ExtBrl32.dat ;

${install_dir}/ITk_Atlas_IdMapping_ExtBrl32.dat :: ../share/ITk_Atlas_IdMapping_ExtBrl32.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_ExtBrl32.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_ExtBrl32.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_ExtBrl32.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_ExtBrl32.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_ExtBrl32.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_ExtBrl4.dat ;

${install_dir}/ITk_Atlas_IdMapping_ExtBrl4.dat :: ../share/ITk_Atlas_IdMapping_ExtBrl4.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_ExtBrl4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_ExtBrl4.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_ExtBrl4.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_ExtBrl4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_ExtBrl4.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_IExtBrl4.dat ;

${install_dir}/ITk_Atlas_IdMapping_IExtBrl4.dat :: ../share/ITk_Atlas_IdMapping_IExtBrl4.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_IExtBrl4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_IExtBrl4.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_IExtBrl4.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_IExtBrl4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_IExtBrl4.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_InclBrl4.dat ;

${install_dir}/ITk_Atlas_IdMapping_InclBrl4.dat :: ../share/ITk_Atlas_IdMapping_InclBrl4.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_InclBrl4.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat ;

${install_dir}/ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat :: ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_InclinedDuals_step2p2.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat ;

${install_dir}/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat :: ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p0.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat ;

${install_dir}/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat :: ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_InclinedQuads_step2p2.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_InclBrl4_OptRing.dat ;

${install_dir}/ITk_Atlas_IdMapping_InclBrl4_OptRing.dat :: ../share/ITk_Atlas_IdMapping_InclBrl4_OptRing.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_OptRing.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_OptRing.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_InclBrl4_OptRing.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_InclBrl4_OptRing.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_InclBrl4_OptRing.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_LoI.dat ;

${install_dir}/ITk_Atlas_IdMapping_LoI.dat :: ../share/ITk_Atlas_IdMapping_LoI.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_LoI.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_LoI.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_LoI.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_LoI.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_LoI.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/ITk_Atlas_IdMapping_LoIVF.dat ;

${install_dir}/ITk_Atlas_IdMapping_LoIVF.dat :: ../share/ITk_Atlas_IdMapping_LoIVF.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_LoIVF.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ITk_Atlas_IdMapping_LoIVF.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ITk_Atlas_IdMapping_LoIVF.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ITk_Atlas_IdMapping_LoIVF.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ITk_Atlas_IdMapping_LoIVF.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping.dat ;

${install_dir}/Pixels_Atlas_IdMapping.dat :: ../share/Pixels_Atlas_IdMapping.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_2016.dat ;

${install_dir}/Pixels_Atlas_IdMapping_2016.dat :: ../share/Pixels_Atlas_IdMapping_2016.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_2016.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_2016.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_2016.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_2016.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_2016.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_2017.dat ;

${install_dir}/Pixels_Atlas_IdMapping_2017.dat :: ../share/Pixels_Atlas_IdMapping_2017.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_2017.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_2017.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_2017.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_2017.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_2017.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_July14.dat ;

${install_dir}/Pixels_Atlas_IdMapping_July14.dat :: ../share/Pixels_Atlas_IdMapping_July14.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_July14.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_July14.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_July14.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_July14.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_July14.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_M5.dat ;

${install_dir}/Pixels_Atlas_IdMapping_M5.dat :: ../share/Pixels_Atlas_IdMapping_M5.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_M5.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_M5.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_M5.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_M5.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_M5.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_M6.dat ;

${install_dir}/Pixels_Atlas_IdMapping_M6.dat :: ../share/Pixels_Atlas_IdMapping_M6.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_M6.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_M6.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_M6.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_M6.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_M6.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_M7.dat ;

${install_dir}/Pixels_Atlas_IdMapping_M7.dat :: ../share/Pixels_Atlas_IdMapping_M7.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_M7.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_M7.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_M7.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_M7.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_M7.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_May08.dat ;

${install_dir}/Pixels_Atlas_IdMapping_May08.dat :: ../share/Pixels_Atlas_IdMapping_May08.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_May08.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_May08.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_May08.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_May08.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_May08.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_May08_inclIBL.dat ;

${install_dir}/Pixels_Atlas_IdMapping_May08_inclIBL.dat :: ../share/Pixels_Atlas_IdMapping_May08_inclIBL.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_May08_inclIBL.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_May08_inclIBL.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_May08_inclIBL.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_May08_inclIBL.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_May08_inclIBL.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_Run2.dat ;

${install_dir}/Pixels_Atlas_IdMapping_Run2.dat :: ../share/Pixels_Atlas_IdMapping_Run2.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_Run2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_Run2.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_Run2.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_Run2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_Run2.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_Sep14.dat ;

${install_dir}/Pixels_Atlas_IdMapping_Sep14.dat :: ../share/Pixels_Atlas_IdMapping_Sep14.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_Sep14.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_Sep14.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_Sep14.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_Sep14.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_Sep14.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_inclIBL.dat ;

${install_dir}/Pixels_Atlas_IdMapping_inclIBL.dat :: ../share/Pixels_Atlas_IdMapping_inclIBL.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_inclIBL.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_inclIBL.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_inclIBL.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_inclIBL.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_inclIBL.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat ;

${install_dir}/Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat :: ../share/Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_inclIBL3D_DBM.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Pixels_Atlas_IdMapping_inclIBL_DBM.dat ;

${install_dir}/Pixels_Atlas_IdMapping_inclIBL_DBM.dat :: ../share/Pixels_Atlas_IdMapping_inclIBL_DBM.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_inclIBL_DBM.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Pixels_Atlas_IdMapping_inclIBL_DBM.dat" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Pixels_Atlas_IdMapping_inclIBL_DBM.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Pixels_Atlas_IdMapping_inclIBL_DBM.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Pixels_Atlas_IdMapping_inclIBL_DBM.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
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
