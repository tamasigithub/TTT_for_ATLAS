#-- start of make_header -----------------

#====================================
#  Document SiClusterizationToolConf
#
#   Generated Tue Jan 29 19:06:00 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiClusterizationToolConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiClusterizationToolConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiClusterizationToolConf

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolConf = $(SiClusterizationTool_tag)_SiClusterizationToolConf.make
cmt_local_tagfile_SiClusterizationToolConf = $(bin)$(SiClusterizationTool_tag)_SiClusterizationToolConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolConf = $(SiClusterizationTool_tag).make
cmt_local_tagfile_SiClusterizationToolConf = $(bin)$(SiClusterizationTool_tag).make

endif

include $(cmt_local_tagfile_SiClusterizationToolConf)
#-include $(cmt_local_tagfile_SiClusterizationToolConf)

ifdef cmt_SiClusterizationToolConf_has_target_tag

cmt_final_setup_SiClusterizationToolConf = $(bin)setup_SiClusterizationToolConf.make
cmt_dependencies_in_SiClusterizationToolConf = $(bin)dependencies_SiClusterizationToolConf.in
#cmt_final_setup_SiClusterizationToolConf = $(bin)SiClusterizationTool_SiClusterizationToolConfsetup.make
cmt_local_SiClusterizationToolConf_makefile = $(bin)SiClusterizationToolConf.make

else

cmt_final_setup_SiClusterizationToolConf = $(bin)setup.make
cmt_dependencies_in_SiClusterizationToolConf = $(bin)dependencies.in
#cmt_final_setup_SiClusterizationToolConf = $(bin)SiClusterizationToolsetup.make
cmt_local_SiClusterizationToolConf_makefile = $(bin)SiClusterizationToolConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiClusterizationToolsetup.make

#SiClusterizationToolConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiClusterizationToolConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiClusterizationToolConf/
#SiClusterizationToolConf::
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

.PHONY: SiClusterizationToolConf SiClusterizationToolConfclean

confpy  := SiClusterizationToolConf.py
conflib := $(bin)$(library_prefix)SiClusterizationTool.$(shlibsuffix)
confdb  := SiClusterizationTool.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

SiClusterizationToolConf :: SiClusterizationToolConfinstall

install :: SiClusterizationToolConfinstall

SiClusterizationToolConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)SiClusterizationTool.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool ; fi ;

SiClusterizationToolConfclean :: SiClusterizationToolConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool/$(confdb)

uninstall :: SiClusterizationToolConfuninstall

SiClusterizationToolConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libSiClusterizationTool_so_dependencies = ../x86_64-slc6-gcc49-opt/libSiClusterizationTool.so
#-- start of cleanup_header --------------

clean :: SiClusterizationToolConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiClusterizationToolConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiClusterizationToolConfclean ::
#-- end of cleanup_header ---------------
