#-- start of make_header -----------------

#====================================
#  Document FastSiDigitizationConf
#
#   Generated Tue Jan 29 19:11:42 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_FastSiDigitizationConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_FastSiDigitizationConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_FastSiDigitizationConf

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationConf = $(FastSiDigitization_tag)_FastSiDigitizationConf.make
cmt_local_tagfile_FastSiDigitizationConf = $(bin)$(FastSiDigitization_tag)_FastSiDigitizationConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationConf = $(FastSiDigitization_tag).make
cmt_local_tagfile_FastSiDigitizationConf = $(bin)$(FastSiDigitization_tag).make

endif

include $(cmt_local_tagfile_FastSiDigitizationConf)
#-include $(cmt_local_tagfile_FastSiDigitizationConf)

ifdef cmt_FastSiDigitizationConf_has_target_tag

cmt_final_setup_FastSiDigitizationConf = $(bin)setup_FastSiDigitizationConf.make
cmt_dependencies_in_FastSiDigitizationConf = $(bin)dependencies_FastSiDigitizationConf.in
#cmt_final_setup_FastSiDigitizationConf = $(bin)FastSiDigitization_FastSiDigitizationConfsetup.make
cmt_local_FastSiDigitizationConf_makefile = $(bin)FastSiDigitizationConf.make

else

cmt_final_setup_FastSiDigitizationConf = $(bin)setup.make
cmt_dependencies_in_FastSiDigitizationConf = $(bin)dependencies.in
#cmt_final_setup_FastSiDigitizationConf = $(bin)FastSiDigitizationsetup.make
cmt_local_FastSiDigitizationConf_makefile = $(bin)FastSiDigitizationConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)FastSiDigitizationsetup.make

#FastSiDigitizationConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'FastSiDigitizationConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = FastSiDigitizationConf/
#FastSiDigitizationConf::
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

.PHONY: FastSiDigitizationConf FastSiDigitizationConfclean

confpy  := FastSiDigitizationConf.py
conflib := $(bin)$(library_prefix)FastSiDigitization.$(shlibsuffix)
confdb  := FastSiDigitization.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

FastSiDigitizationConf :: FastSiDigitizationConfinstall

install :: FastSiDigitizationConfinstall

FastSiDigitizationConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)FastSiDigitization.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization ; fi ;

FastSiDigitizationConfclean :: FastSiDigitizationConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization/$(confdb)

uninstall :: FastSiDigitizationConfuninstall

FastSiDigitizationConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libFastSiDigitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libFastSiDigitization.so
#-- start of cleanup_header --------------

clean :: FastSiDigitizationConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(FastSiDigitizationConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

FastSiDigitizationConfclean ::
#-- end of cleanup_header ---------------
