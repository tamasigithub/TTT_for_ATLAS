#-- start of make_header -----------------

#====================================
#  Document SCT_DigitizationMergeComponentsList
#
#   Generated Tue Jan 29 19:04:15 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_DigitizationMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_DigitizationMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_DigitizationMergeComponentsList

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationMergeComponentsList = $(SCT_Digitization_tag)_SCT_DigitizationMergeComponentsList.make
cmt_local_tagfile_SCT_DigitizationMergeComponentsList = $(bin)$(SCT_Digitization_tag)_SCT_DigitizationMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationMergeComponentsList = $(SCT_Digitization_tag).make
cmt_local_tagfile_SCT_DigitizationMergeComponentsList = $(bin)$(SCT_Digitization_tag).make

endif

include $(cmt_local_tagfile_SCT_DigitizationMergeComponentsList)
#-include $(cmt_local_tagfile_SCT_DigitizationMergeComponentsList)

ifdef cmt_SCT_DigitizationMergeComponentsList_has_target_tag

cmt_final_setup_SCT_DigitizationMergeComponentsList = $(bin)setup_SCT_DigitizationMergeComponentsList.make
cmt_dependencies_in_SCT_DigitizationMergeComponentsList = $(bin)dependencies_SCT_DigitizationMergeComponentsList.in
#cmt_final_setup_SCT_DigitizationMergeComponentsList = $(bin)SCT_Digitization_SCT_DigitizationMergeComponentsListsetup.make
cmt_local_SCT_DigitizationMergeComponentsList_makefile = $(bin)SCT_DigitizationMergeComponentsList.make

else

cmt_final_setup_SCT_DigitizationMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_SCT_DigitizationMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_SCT_DigitizationMergeComponentsList = $(bin)SCT_Digitizationsetup.make
cmt_local_SCT_DigitizationMergeComponentsList_makefile = $(bin)SCT_DigitizationMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Digitizationsetup.make

#SCT_DigitizationMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_DigitizationMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_DigitizationMergeComponentsList/
#SCT_DigitizationMergeComponentsList::
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


.PHONY: SCT_DigitizationMergeComponentsList SCT_DigitizationMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/SCT_Digitization.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

SCT_DigitizationMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  SCT_DigitizationMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

SCT_DigitizationMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libSCT_Digitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_Digitization.so
#-- start of cleanup_header --------------

clean :: SCT_DigitizationMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_DigitizationMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_DigitizationMergeComponentsListclean ::
#-- end of cleanup_header ---------------
