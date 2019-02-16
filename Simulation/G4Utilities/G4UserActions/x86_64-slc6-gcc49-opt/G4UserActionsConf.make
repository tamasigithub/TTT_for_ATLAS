#-- start of make_header -----------------

#====================================
#  Document G4UserActionsConf
#
#   Generated Tue Jan 29 18:53:26 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_G4UserActionsConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_G4UserActionsConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_G4UserActionsConf

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsConf = $(G4UserActions_tag)_G4UserActionsConf.make
cmt_local_tagfile_G4UserActionsConf = $(bin)$(G4UserActions_tag)_G4UserActionsConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsConf = $(G4UserActions_tag).make
cmt_local_tagfile_G4UserActionsConf = $(bin)$(G4UserActions_tag).make

endif

include $(cmt_local_tagfile_G4UserActionsConf)
#-include $(cmt_local_tagfile_G4UserActionsConf)

ifdef cmt_G4UserActionsConf_has_target_tag

cmt_final_setup_G4UserActionsConf = $(bin)setup_G4UserActionsConf.make
cmt_dependencies_in_G4UserActionsConf = $(bin)dependencies_G4UserActionsConf.in
#cmt_final_setup_G4UserActionsConf = $(bin)G4UserActions_G4UserActionsConfsetup.make
cmt_local_G4UserActionsConf_makefile = $(bin)G4UserActionsConf.make

else

cmt_final_setup_G4UserActionsConf = $(bin)setup.make
cmt_dependencies_in_G4UserActionsConf = $(bin)dependencies.in
#cmt_final_setup_G4UserActionsConf = $(bin)G4UserActionssetup.make
cmt_local_G4UserActionsConf_makefile = $(bin)G4UserActionsConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)G4UserActionssetup.make

#G4UserActionsConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'G4UserActionsConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = G4UserActionsConf/
#G4UserActionsConf::
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

.PHONY: G4UserActionsConf G4UserActionsConfclean

confpy  := G4UserActionsConf.py
conflib := $(bin)$(library_prefix)G4UserActions.$(shlibsuffix)
confdb  := G4UserActions.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

G4UserActionsConf :: G4UserActionsConfinstall

install :: G4UserActionsConfinstall

G4UserActionsConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)G4UserActions.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions ; fi ;

G4UserActionsConfclean :: G4UserActionsConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions/$(confdb)

uninstall :: G4UserActionsConfuninstall

G4UserActionsConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libG4UserActions_so_dependencies = ../x86_64-slc6-gcc49-opt/libG4UserActions.so
#-- start of cleanup_header --------------

clean :: G4UserActionsConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(G4UserActionsConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

G4UserActionsConfclean ::
#-- end of cleanup_header ---------------
