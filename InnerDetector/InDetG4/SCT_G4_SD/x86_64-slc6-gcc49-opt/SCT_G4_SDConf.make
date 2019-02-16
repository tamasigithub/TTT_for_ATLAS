#-- start of make_header -----------------

#====================================
#  Document SCT_G4_SDConf
#
#   Generated Tue Jan 29 18:51:49 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_G4_SDConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_G4_SDConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_G4_SDConf

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDConf = $(SCT_G4_SD_tag)_SCT_G4_SDConf.make
cmt_local_tagfile_SCT_G4_SDConf = $(bin)$(SCT_G4_SD_tag)_SCT_G4_SDConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDConf = $(SCT_G4_SD_tag).make
cmt_local_tagfile_SCT_G4_SDConf = $(bin)$(SCT_G4_SD_tag).make

endif

include $(cmt_local_tagfile_SCT_G4_SDConf)
#-include $(cmt_local_tagfile_SCT_G4_SDConf)

ifdef cmt_SCT_G4_SDConf_has_target_tag

cmt_final_setup_SCT_G4_SDConf = $(bin)setup_SCT_G4_SDConf.make
cmt_dependencies_in_SCT_G4_SDConf = $(bin)dependencies_SCT_G4_SDConf.in
#cmt_final_setup_SCT_G4_SDConf = $(bin)SCT_G4_SD_SCT_G4_SDConfsetup.make
cmt_local_SCT_G4_SDConf_makefile = $(bin)SCT_G4_SDConf.make

else

cmt_final_setup_SCT_G4_SDConf = $(bin)setup.make
cmt_dependencies_in_SCT_G4_SDConf = $(bin)dependencies.in
#cmt_final_setup_SCT_G4_SDConf = $(bin)SCT_G4_SDsetup.make
cmt_local_SCT_G4_SDConf_makefile = $(bin)SCT_G4_SDConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_G4_SDsetup.make

#SCT_G4_SDConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_G4_SDConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_G4_SDConf/
#SCT_G4_SDConf::
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

.PHONY: SCT_G4_SDConf SCT_G4_SDConfclean

confpy  := SCT_G4_SDConf.py
conflib := $(bin)$(library_prefix)SCT_G4_SD.$(shlibsuffix)
confdb  := SCT_G4_SD.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

SCT_G4_SDConf :: SCT_G4_SDConfinstall

install :: SCT_G4_SDConfinstall

SCT_G4_SDConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)SCT_G4_SD.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD ; fi ;

SCT_G4_SDConfclean :: SCT_G4_SDConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD/$(confdb)

uninstall :: SCT_G4_SDConfuninstall

SCT_G4_SDConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libSCT_G4_SD_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_G4_SD.so
#-- start of cleanup_header --------------

clean :: SCT_G4_SDConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_G4_SDConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_G4_SDConfclean ::
#-- end of cleanup_header ---------------
