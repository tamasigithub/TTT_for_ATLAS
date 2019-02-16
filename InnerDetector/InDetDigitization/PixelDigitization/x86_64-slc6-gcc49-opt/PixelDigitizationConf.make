#-- start of make_header -----------------

#====================================
#  Document PixelDigitizationConf
#
#   Generated Tue Jan 29 19:13:45 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelDigitizationConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelDigitizationConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelDigitizationConf

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationConf = $(PixelDigitization_tag)_PixelDigitizationConf.make
cmt_local_tagfile_PixelDigitizationConf = $(bin)$(PixelDigitization_tag)_PixelDigitizationConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationConf = $(PixelDigitization_tag).make
cmt_local_tagfile_PixelDigitizationConf = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_PixelDigitizationConf)
#-include $(cmt_local_tagfile_PixelDigitizationConf)

ifdef cmt_PixelDigitizationConf_has_target_tag

cmt_final_setup_PixelDigitizationConf = $(bin)setup_PixelDigitizationConf.make
cmt_dependencies_in_PixelDigitizationConf = $(bin)dependencies_PixelDigitizationConf.in
#cmt_final_setup_PixelDigitizationConf = $(bin)PixelDigitization_PixelDigitizationConfsetup.make
cmt_local_PixelDigitizationConf_makefile = $(bin)PixelDigitizationConf.make

else

cmt_final_setup_PixelDigitizationConf = $(bin)setup.make
cmt_dependencies_in_PixelDigitizationConf = $(bin)dependencies.in
#cmt_final_setup_PixelDigitizationConf = $(bin)PixelDigitizationsetup.make
cmt_local_PixelDigitizationConf_makefile = $(bin)PixelDigitizationConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#PixelDigitizationConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelDigitizationConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelDigitizationConf/
#PixelDigitizationConf::
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

.PHONY: PixelDigitizationConf PixelDigitizationConfclean

confpy  := PixelDigitizationConf.py
conflib := $(bin)$(library_prefix)PixelDigitization.$(shlibsuffix)
confdb  := PixelDigitization.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

PixelDigitizationConf :: PixelDigitizationConfinstall

install :: PixelDigitizationConfinstall

PixelDigitizationConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)PixelDigitization.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization ; fi ;

PixelDigitizationConfclean :: PixelDigitizationConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization/$(confdb)

uninstall :: PixelDigitizationConfuninstall

PixelDigitizationConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libPixelDigitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libPixelDigitization.so
#-- start of cleanup_header --------------

clean :: PixelDigitizationConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelDigitizationConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelDigitizationConfclean ::
#-- end of cleanup_header ---------------
