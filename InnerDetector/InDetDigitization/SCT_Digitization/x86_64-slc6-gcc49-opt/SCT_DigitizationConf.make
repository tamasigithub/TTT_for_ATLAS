#-- start of make_header -----------------

#====================================
#  Document SCT_DigitizationConf
#
#   Generated Tue Jan 29 19:04:12 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_DigitizationConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_DigitizationConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_DigitizationConf

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationConf = $(SCT_Digitization_tag)_SCT_DigitizationConf.make
cmt_local_tagfile_SCT_DigitizationConf = $(bin)$(SCT_Digitization_tag)_SCT_DigitizationConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationConf = $(SCT_Digitization_tag).make
cmt_local_tagfile_SCT_DigitizationConf = $(bin)$(SCT_Digitization_tag).make

endif

include $(cmt_local_tagfile_SCT_DigitizationConf)
#-include $(cmt_local_tagfile_SCT_DigitizationConf)

ifdef cmt_SCT_DigitizationConf_has_target_tag

cmt_final_setup_SCT_DigitizationConf = $(bin)setup_SCT_DigitizationConf.make
cmt_dependencies_in_SCT_DigitizationConf = $(bin)dependencies_SCT_DigitizationConf.in
#cmt_final_setup_SCT_DigitizationConf = $(bin)SCT_Digitization_SCT_DigitizationConfsetup.make
cmt_local_SCT_DigitizationConf_makefile = $(bin)SCT_DigitizationConf.make

else

cmt_final_setup_SCT_DigitizationConf = $(bin)setup.make
cmt_dependencies_in_SCT_DigitizationConf = $(bin)dependencies.in
#cmt_final_setup_SCT_DigitizationConf = $(bin)SCT_Digitizationsetup.make
cmt_local_SCT_DigitizationConf_makefile = $(bin)SCT_DigitizationConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Digitizationsetup.make

#SCT_DigitizationConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_DigitizationConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_DigitizationConf/
#SCT_DigitizationConf::
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

.PHONY: SCT_DigitizationConf SCT_DigitizationConfclean

confpy  := SCT_DigitizationConf.py
conflib := $(bin)$(library_prefix)SCT_Digitization.$(shlibsuffix)
confdb  := SCT_Digitization.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

SCT_DigitizationConf :: SCT_DigitizationConfinstall

install :: SCT_DigitizationConfinstall

SCT_DigitizationConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)SCT_Digitization.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization ; fi ;

SCT_DigitizationConfclean :: SCT_DigitizationConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization/$(confdb)

uninstall :: SCT_DigitizationConfuninstall

SCT_DigitizationConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libSCT_Digitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_Digitization.so
#-- start of cleanup_header --------------

clean :: SCT_DigitizationConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_DigitizationConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_DigitizationConfclean ::
#-- end of cleanup_header ---------------
