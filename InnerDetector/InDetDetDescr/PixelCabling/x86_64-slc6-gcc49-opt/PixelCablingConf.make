#-- start of make_header -----------------

#====================================
#  Document PixelCablingConf
#
#   Generated Tue Jan 29 18:58:12 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelCablingConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelCablingConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelCablingConf

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingConf = $(PixelCabling_tag)_PixelCablingConf.make
cmt_local_tagfile_PixelCablingConf = $(bin)$(PixelCabling_tag)_PixelCablingConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingConf = $(PixelCabling_tag).make
cmt_local_tagfile_PixelCablingConf = $(bin)$(PixelCabling_tag).make

endif

include $(cmt_local_tagfile_PixelCablingConf)
#-include $(cmt_local_tagfile_PixelCablingConf)

ifdef cmt_PixelCablingConf_has_target_tag

cmt_final_setup_PixelCablingConf = $(bin)setup_PixelCablingConf.make
cmt_dependencies_in_PixelCablingConf = $(bin)dependencies_PixelCablingConf.in
#cmt_final_setup_PixelCablingConf = $(bin)PixelCabling_PixelCablingConfsetup.make
cmt_local_PixelCablingConf_makefile = $(bin)PixelCablingConf.make

else

cmt_final_setup_PixelCablingConf = $(bin)setup.make
cmt_dependencies_in_PixelCablingConf = $(bin)dependencies.in
#cmt_final_setup_PixelCablingConf = $(bin)PixelCablingsetup.make
cmt_local_PixelCablingConf_makefile = $(bin)PixelCablingConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelCablingsetup.make

#PixelCablingConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelCablingConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelCablingConf/
#PixelCablingConf::
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

.PHONY: PixelCablingConf PixelCablingConfclean

confpy  := PixelCablingConf.py
conflib := $(bin)$(library_prefix)PixelCabling.$(shlibsuffix)
confdb  := PixelCabling.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

PixelCablingConf :: PixelCablingConfinstall

install :: PixelCablingConfinstall

PixelCablingConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)PixelCabling.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling ; fi ;

PixelCablingConfclean :: PixelCablingConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/PixelCabling/genConf/PixelCabling/$(confdb)

uninstall :: PixelCablingConfuninstall

PixelCablingConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libPixelCabling_so_dependencies = ../x86_64-slc6-gcc49-opt/libPixelCabling.so
#-- start of cleanup_header --------------

clean :: PixelCablingConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelCablingConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelCablingConfclean ::
#-- end of cleanup_header ---------------
