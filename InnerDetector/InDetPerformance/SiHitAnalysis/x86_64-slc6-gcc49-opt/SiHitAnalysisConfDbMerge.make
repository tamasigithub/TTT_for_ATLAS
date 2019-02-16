#-- start of make_header -----------------

#====================================
#  Document SiHitAnalysisConfDbMerge
#
#   Generated Tue Jan 29 18:44:37 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiHitAnalysisConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiHitAnalysisConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiHitAnalysisConfDbMerge

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisConfDbMerge = $(SiHitAnalysis_tag)_SiHitAnalysisConfDbMerge.make
cmt_local_tagfile_SiHitAnalysisConfDbMerge = $(bin)$(SiHitAnalysis_tag)_SiHitAnalysisConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisConfDbMerge = $(SiHitAnalysis_tag).make
cmt_local_tagfile_SiHitAnalysisConfDbMerge = $(bin)$(SiHitAnalysis_tag).make

endif

include $(cmt_local_tagfile_SiHitAnalysisConfDbMerge)
#-include $(cmt_local_tagfile_SiHitAnalysisConfDbMerge)

ifdef cmt_SiHitAnalysisConfDbMerge_has_target_tag

cmt_final_setup_SiHitAnalysisConfDbMerge = $(bin)setup_SiHitAnalysisConfDbMerge.make
cmt_dependencies_in_SiHitAnalysisConfDbMerge = $(bin)dependencies_SiHitAnalysisConfDbMerge.in
#cmt_final_setup_SiHitAnalysisConfDbMerge = $(bin)SiHitAnalysis_SiHitAnalysisConfDbMergesetup.make
cmt_local_SiHitAnalysisConfDbMerge_makefile = $(bin)SiHitAnalysisConfDbMerge.make

else

cmt_final_setup_SiHitAnalysisConfDbMerge = $(bin)setup.make
cmt_dependencies_in_SiHitAnalysisConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_SiHitAnalysisConfDbMerge = $(bin)SiHitAnalysissetup.make
cmt_local_SiHitAnalysisConfDbMerge_makefile = $(bin)SiHitAnalysisConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiHitAnalysissetup.make

#SiHitAnalysisConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiHitAnalysisConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiHitAnalysisConfDbMerge/
#SiHitAnalysisConfDbMerge::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_genconfDb_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.confdb file into a single
# <project>.confdb file in the (lib) install area

.PHONY: SiHitAnalysisConfDbMerge SiHitAnalysisConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetPerformance/SiHitAnalysis/genConf/SiHitAnalysis/SiHitAnalysis.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

SiHitAnalysisConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  SiHitAnalysisConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

SiHitAnalysisConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libSiHitAnalysis_so_dependencies = ../x86_64-slc6-gcc49-opt/libSiHitAnalysis.so
#-- start of cleanup_header --------------

clean :: SiHitAnalysisConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiHitAnalysisConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiHitAnalysisConfDbMergeclean ::
#-- end of cleanup_header ---------------
