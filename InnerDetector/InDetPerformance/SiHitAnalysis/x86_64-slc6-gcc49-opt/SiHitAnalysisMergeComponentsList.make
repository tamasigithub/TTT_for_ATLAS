#-- start of make_header -----------------

#====================================
#  Document SiHitAnalysisMergeComponentsList
#
#   Generated Tue Jan 29 18:44:38 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiHitAnalysisMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiHitAnalysisMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiHitAnalysisMergeComponentsList

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisMergeComponentsList = $(SiHitAnalysis_tag)_SiHitAnalysisMergeComponentsList.make
cmt_local_tagfile_SiHitAnalysisMergeComponentsList = $(bin)$(SiHitAnalysis_tag)_SiHitAnalysisMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisMergeComponentsList = $(SiHitAnalysis_tag).make
cmt_local_tagfile_SiHitAnalysisMergeComponentsList = $(bin)$(SiHitAnalysis_tag).make

endif

include $(cmt_local_tagfile_SiHitAnalysisMergeComponentsList)
#-include $(cmt_local_tagfile_SiHitAnalysisMergeComponentsList)

ifdef cmt_SiHitAnalysisMergeComponentsList_has_target_tag

cmt_final_setup_SiHitAnalysisMergeComponentsList = $(bin)setup_SiHitAnalysisMergeComponentsList.make
cmt_dependencies_in_SiHitAnalysisMergeComponentsList = $(bin)dependencies_SiHitAnalysisMergeComponentsList.in
#cmt_final_setup_SiHitAnalysisMergeComponentsList = $(bin)SiHitAnalysis_SiHitAnalysisMergeComponentsListsetup.make
cmt_local_SiHitAnalysisMergeComponentsList_makefile = $(bin)SiHitAnalysisMergeComponentsList.make

else

cmt_final_setup_SiHitAnalysisMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_SiHitAnalysisMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_SiHitAnalysisMergeComponentsList = $(bin)SiHitAnalysissetup.make
cmt_local_SiHitAnalysisMergeComponentsList_makefile = $(bin)SiHitAnalysisMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiHitAnalysissetup.make

#SiHitAnalysisMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiHitAnalysisMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiHitAnalysisMergeComponentsList/
#SiHitAnalysisMergeComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_componentslist_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.components file into a single
# <project>.components file in the (lib) install area
# If no InstallArea is present the fragment is dummy


.PHONY: SiHitAnalysisMergeComponentsList SiHitAnalysisMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/SiHitAnalysis.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

SiHitAnalysisMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  SiHitAnalysisMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

SiHitAnalysisMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libSiHitAnalysis_so_dependencies = ../x86_64-slc6-gcc49-opt/libSiHitAnalysis.so
#-- start of cleanup_header --------------

clean :: SiHitAnalysisMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiHitAnalysisMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiHitAnalysisMergeComponentsListclean ::
#-- end of cleanup_header ---------------
