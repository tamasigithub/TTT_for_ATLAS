#-- start of make_header -----------------

#====================================
#  Document TripletTrackFinderConf
#
#   Generated Thu Feb 14 18:23:45 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TripletTrackFinderConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TripletTrackFinderConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TripletTrackFinderConf

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderConf = $(TripletTrackFinder_tag)_TripletTrackFinderConf.make
cmt_local_tagfile_TripletTrackFinderConf = $(bin)$(TripletTrackFinder_tag)_TripletTrackFinderConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderConf = $(TripletTrackFinder_tag).make
cmt_local_tagfile_TripletTrackFinderConf = $(bin)$(TripletTrackFinder_tag).make

endif

include $(cmt_local_tagfile_TripletTrackFinderConf)
#-include $(cmt_local_tagfile_TripletTrackFinderConf)

ifdef cmt_TripletTrackFinderConf_has_target_tag

cmt_final_setup_TripletTrackFinderConf = $(bin)setup_TripletTrackFinderConf.make
cmt_dependencies_in_TripletTrackFinderConf = $(bin)dependencies_TripletTrackFinderConf.in
#cmt_final_setup_TripletTrackFinderConf = $(bin)TripletTrackFinder_TripletTrackFinderConfsetup.make
cmt_local_TripletTrackFinderConf_makefile = $(bin)TripletTrackFinderConf.make

else

cmt_final_setup_TripletTrackFinderConf = $(bin)setup.make
cmt_dependencies_in_TripletTrackFinderConf = $(bin)dependencies.in
#cmt_final_setup_TripletTrackFinderConf = $(bin)TripletTrackFindersetup.make
cmt_local_TripletTrackFinderConf_makefile = $(bin)TripletTrackFinderConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TripletTrackFindersetup.make

#TripletTrackFinderConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TripletTrackFinderConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TripletTrackFinderConf/
#TripletTrackFinderConf::
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

.PHONY: TripletTrackFinderConf TripletTrackFinderConfclean

confpy  := TripletTrackFinderConf.py
conflib := $(bin)$(library_prefix)TripletTrackFinder.$(shlibsuffix)
confdb  := TripletTrackFinder.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

TripletTrackFinderConf :: TripletTrackFinderConfinstall

install :: TripletTrackFinderConfinstall

TripletTrackFinderConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)TripletTrackFinder.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder ; fi ;

TripletTrackFinderConfclean :: TripletTrackFinderConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder/$(confdb)

uninstall :: TripletTrackFinderConfuninstall

TripletTrackFinderConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libTripletTrackFinder_so_dependencies = ../x86_64-slc6-gcc49-opt/libTripletTrackFinder.so
#-- start of cleanup_header --------------

clean :: TripletTrackFinderConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TripletTrackFinderConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TripletTrackFinderConfclean ::
#-- end of cleanup_header ---------------
