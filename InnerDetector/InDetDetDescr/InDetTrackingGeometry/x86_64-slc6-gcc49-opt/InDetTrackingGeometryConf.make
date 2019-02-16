#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryConf
#
#   Generated Tue Jan 29 18:57:38 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryConf

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryConf = $(InDetTrackingGeometry_tag)_InDetTrackingGeometryConf.make
cmt_local_tagfile_InDetTrackingGeometryConf = $(bin)$(InDetTrackingGeometry_tag)_InDetTrackingGeometryConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryConf = $(InDetTrackingGeometry_tag).make
cmt_local_tagfile_InDetTrackingGeometryConf = $(bin)$(InDetTrackingGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryConf)
#-include $(cmt_local_tagfile_InDetTrackingGeometryConf)

ifdef cmt_InDetTrackingGeometryConf_has_target_tag

cmt_final_setup_InDetTrackingGeometryConf = $(bin)setup_InDetTrackingGeometryConf.make
cmt_dependencies_in_InDetTrackingGeometryConf = $(bin)dependencies_InDetTrackingGeometryConf.in
#cmt_final_setup_InDetTrackingGeometryConf = $(bin)InDetTrackingGeometry_InDetTrackingGeometryConfsetup.make
cmt_local_InDetTrackingGeometryConf_makefile = $(bin)InDetTrackingGeometryConf.make

else

cmt_final_setup_InDetTrackingGeometryConf = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryConf = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryConf = $(bin)InDetTrackingGeometrysetup.make
cmt_local_InDetTrackingGeometryConf_makefile = $(bin)InDetTrackingGeometryConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometrysetup.make

#InDetTrackingGeometryConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryConf/
#InDetTrackingGeometryConf::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/genconfig_header
# Author: Wim Lavrijsen (WLavrijsen@lbl.gov)

# Use genconf.exe to create configurables python modules, then have the
# normal python install procedure take over.

.PHONY: InDetTrackingGeometryConf InDetTrackingGeometryConfclean

confpy  := InDetTrackingGeometryConf.py
conflib := $(bin)$(library_prefix)InDetTrackingGeometry.$(shlibsuffix)
confdb  := InDetTrackingGeometry.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

InDetTrackingGeometryConf :: InDetTrackingGeometryConfinstall

install :: InDetTrackingGeometryConfinstall

InDetTrackingGeometryConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)InDetTrackingGeometry.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry ; fi ;

InDetTrackingGeometryConfclean :: InDetTrackingGeometryConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry/$(confdb)

uninstall :: InDetTrackingGeometryConfuninstall

InDetTrackingGeometryConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libInDetTrackingGeometry_so_dependencies = ../x86_64-slc6-gcc49-opt/libInDetTrackingGeometry.so
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryConfclean ::
#-- end of cleanup_header ---------------
