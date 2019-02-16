#-- start of make_header -----------------

#====================================
#  Document SiHitAnalysisConf
#
#   Generated Tue Jan 29 18:44:35 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiHitAnalysisConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiHitAnalysisConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiHitAnalysisConf

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisConf = $(SiHitAnalysis_tag)_SiHitAnalysisConf.make
cmt_local_tagfile_SiHitAnalysisConf = $(bin)$(SiHitAnalysis_tag)_SiHitAnalysisConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisConf = $(SiHitAnalysis_tag).make
cmt_local_tagfile_SiHitAnalysisConf = $(bin)$(SiHitAnalysis_tag).make

endif

include $(cmt_local_tagfile_SiHitAnalysisConf)
#-include $(cmt_local_tagfile_SiHitAnalysisConf)

ifdef cmt_SiHitAnalysisConf_has_target_tag

cmt_final_setup_SiHitAnalysisConf = $(bin)setup_SiHitAnalysisConf.make
cmt_dependencies_in_SiHitAnalysisConf = $(bin)dependencies_SiHitAnalysisConf.in
#cmt_final_setup_SiHitAnalysisConf = $(bin)SiHitAnalysis_SiHitAnalysisConfsetup.make
cmt_local_SiHitAnalysisConf_makefile = $(bin)SiHitAnalysisConf.make

else

cmt_final_setup_SiHitAnalysisConf = $(bin)setup.make
cmt_dependencies_in_SiHitAnalysisConf = $(bin)dependencies.in
#cmt_final_setup_SiHitAnalysisConf = $(bin)SiHitAnalysissetup.make
cmt_local_SiHitAnalysisConf_makefile = $(bin)SiHitAnalysisConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiHitAnalysissetup.make

#SiHitAnalysisConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiHitAnalysisConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiHitAnalysisConf/
#SiHitAnalysisConf::
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

.PHONY: SiHitAnalysisConf SiHitAnalysisConfclean

confpy  := SiHitAnalysisConf.py
conflib := $(bin)$(library_prefix)SiHitAnalysis.$(shlibsuffix)
confdb  := SiHitAnalysis.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

SiHitAnalysisConf :: SiHitAnalysisConfinstall

install :: SiHitAnalysisConfinstall

SiHitAnalysisConfinstall : /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis/$(confpy)
	@echo "Installing /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis in /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python ; \

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis/$(confpy) : $(conflib) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)SiHitAnalysis.$(shlibsuffix)

/afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis:
	@ if [ ! -d /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis ] ; then mkdir -p /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis ; fi ;

SiHitAnalysisConfclean :: SiHitAnalysisConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis/$(confpy) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis/$(confdb)

uninstall :: SiHitAnalysisConfuninstall

SiHitAnalysisConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InstallArea/python
libSiHitAnalysis_so_dependencies = ../x86_64-slc6-gcc49-opt/libSiHitAnalysis.so
#-- start of cleanup_header --------------

clean :: SiHitAnalysisConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiHitAnalysisConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiHitAnalysisConfclean ::
#-- end of cleanup_header ---------------
