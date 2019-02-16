#-- start of make_header -----------------

#====================================
#  Document install_python_modules
#
#   Generated Tue Jan 29 18:57:00 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_python_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_python_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_python_modules

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_install_python_modules = $(InDetTrackingGeometry_tag)_install_python_modules.make
cmt_local_tagfile_install_python_modules = $(bin)$(InDetTrackingGeometry_tag)_install_python_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_install_python_modules = $(InDetTrackingGeometry_tag).make
cmt_local_tagfile_install_python_modules = $(bin)$(InDetTrackingGeometry_tag).make

endif

include $(cmt_local_tagfile_install_python_modules)
#-include $(cmt_local_tagfile_install_python_modules)

ifdef cmt_install_python_modules_has_target_tag

cmt_final_setup_install_python_modules = $(bin)setup_install_python_modules.make
cmt_dependencies_in_install_python_modules = $(bin)dependencies_install_python_modules.in
#cmt_final_setup_install_python_modules = $(bin)InDetTrackingGeometry_install_python_modulessetup.make
cmt_local_install_python_modules_makefile = $(bin)install_python_modules.make

else

cmt_final_setup_install_python_modules = $(bin)setup.make
cmt_dependencies_in_install_python_modules = $(bin)dependencies.in
#cmt_final_setup_install_python_modules = $(bin)InDetTrackingGeometrysetup.make
cmt_local_install_python_modules_makefile = $(bin)install_python_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometrysetup.make

#install_python_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_python_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_python_modules/
#install_python_modules::
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

install_dir = ${installarea}/python/InDetTrackingGeometry

install_python_modules :: install_python_modulesinstall ;

install :: install_python_modulesinstall ;

install_python_modulesclean :: install_python_modulesuninstall

uninstall :: install_python_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_python_modulesinstall :: ;

ConfiguredSLHC_InDetTrackingGeometryBuilder_py_dependencies = ../python/ConfiguredSLHC_InDetTrackingGeometryBuilder.py
ConfiguredInDetTrackingGeometryBuilder_py_dependencies = ../python/ConfiguredInDetTrackingGeometryBuilder.py
ConfiguredStagedTrackingGeometryBuilder_py_dependencies = ../python/ConfiguredStagedTrackingGeometryBuilder.py


install_python_modulesinstall :: ${install_dir}/ConfiguredSLHC_InDetTrackingGeometryBuilder.py ;

${install_dir}/ConfiguredSLHC_InDetTrackingGeometryBuilder.py :: ../python/ConfiguredSLHC_InDetTrackingGeometryBuilder.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/ConfiguredSLHC_InDetTrackingGeometryBuilder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredSLHC_InDetTrackingGeometryBuilder.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/ConfiguredSLHC_InDetTrackingGeometryBuilder.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/ConfiguredSLHC_InDetTrackingGeometryBuilder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredSLHC_InDetTrackingGeometryBuilder.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/ConfiguredInDetTrackingGeometryBuilder.py ;

${install_dir}/ConfiguredInDetTrackingGeometryBuilder.py :: ../python/ConfiguredInDetTrackingGeometryBuilder.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/ConfiguredInDetTrackingGeometryBuilder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredInDetTrackingGeometryBuilder.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/ConfiguredInDetTrackingGeometryBuilder.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/ConfiguredInDetTrackingGeometryBuilder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredInDetTrackingGeometryBuilder.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/ConfiguredStagedTrackingGeometryBuilder.py ;

${install_dir}/ConfiguredStagedTrackingGeometryBuilder.py :: ../python/ConfiguredStagedTrackingGeometryBuilder.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/ConfiguredStagedTrackingGeometryBuilder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredStagedTrackingGeometryBuilder.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/ConfiguredStagedTrackingGeometryBuilder.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/ConfiguredStagedTrackingGeometryBuilder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredStagedTrackingGeometryBuilder.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_python_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_python_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_python_modulesclean ::
#-- end of cleanup_header ---------------
