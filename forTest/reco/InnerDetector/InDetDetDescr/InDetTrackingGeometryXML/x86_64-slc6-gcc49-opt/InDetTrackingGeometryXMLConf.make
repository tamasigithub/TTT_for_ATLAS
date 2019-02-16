#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryXMLConf
#
#   Generated Wed Oct 10 16:32:58 2018  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryXMLConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryXMLConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryXMLConf

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLConf = $(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLConf.make
cmt_local_tagfile_InDetTrackingGeometryXMLConf = $(bin)$(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLConf = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_InDetTrackingGeometryXMLConf = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryXMLConf)
#-include $(cmt_local_tagfile_InDetTrackingGeometryXMLConf)

ifdef cmt_InDetTrackingGeometryXMLConf_has_target_tag

cmt_final_setup_InDetTrackingGeometryXMLConf = $(bin)setup_InDetTrackingGeometryXMLConf.make
cmt_dependencies_in_InDetTrackingGeometryXMLConf = $(bin)dependencies_InDetTrackingGeometryXMLConf.in
#cmt_final_setup_InDetTrackingGeometryXMLConf = $(bin)InDetTrackingGeometryXML_InDetTrackingGeometryXMLConfsetup.make
cmt_local_InDetTrackingGeometryXMLConf_makefile = $(bin)InDetTrackingGeometryXMLConf.make

else

cmt_final_setup_InDetTrackingGeometryXMLConf = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryXMLConf = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryXMLConf = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXMLConf_makefile = $(bin)InDetTrackingGeometryXMLConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#InDetTrackingGeometryXMLConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryXMLConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryXMLConf/
#InDetTrackingGeometryXMLConf::
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

.PHONY: InDetTrackingGeometryXMLConf InDetTrackingGeometryXMLConfclean

confpy  := InDetTrackingGeometryXMLConf.py
conflib := $(bin)$(library_prefix)InDetTrackingGeometryXML.$(shlibsuffix)
confdb  := InDetTrackingGeometryXML.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

InDetTrackingGeometryXMLConf :: InDetTrackingGeometryXMLConfinstall

install :: InDetTrackingGeometryXMLConfinstall

InDetTrackingGeometryXMLConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML in /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)InDetTrackingGeometryXML.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML ; fi ;

InDetTrackingGeometryXMLConfclean :: InDetTrackingGeometryXMLConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML/$(confdb)

uninstall :: InDetTrackingGeometryXMLConfuninstall

InDetTrackingGeometryXMLConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.1/InstallArea/python
libInDetTrackingGeometryXML_so_dependencies = ../x86_64-slc6-gcc49-opt/libInDetTrackingGeometryXML.so
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryXMLConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryXMLConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryXMLConfclean ::
#-- end of cleanup_header ---------------
