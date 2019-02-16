#-- start of make_header -----------------

#====================================
#  Document PixelDigitizationMergeComponentsList
#
#   Generated Tue Jan 29 19:13:50 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelDigitizationMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelDigitizationMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelDigitizationMergeComponentsList

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationMergeComponentsList = $(PixelDigitization_tag)_PixelDigitizationMergeComponentsList.make
cmt_local_tagfile_PixelDigitizationMergeComponentsList = $(bin)$(PixelDigitization_tag)_PixelDigitizationMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationMergeComponentsList = $(PixelDigitization_tag).make
cmt_local_tagfile_PixelDigitizationMergeComponentsList = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_PixelDigitizationMergeComponentsList)
#-include $(cmt_local_tagfile_PixelDigitizationMergeComponentsList)

ifdef cmt_PixelDigitizationMergeComponentsList_has_target_tag

cmt_final_setup_PixelDigitizationMergeComponentsList = $(bin)setup_PixelDigitizationMergeComponentsList.make
cmt_dependencies_in_PixelDigitizationMergeComponentsList = $(bin)dependencies_PixelDigitizationMergeComponentsList.in
#cmt_final_setup_PixelDigitizationMergeComponentsList = $(bin)PixelDigitization_PixelDigitizationMergeComponentsListsetup.make
cmt_local_PixelDigitizationMergeComponentsList_makefile = $(bin)PixelDigitizationMergeComponentsList.make

else

cmt_final_setup_PixelDigitizationMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_PixelDigitizationMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_PixelDigitizationMergeComponentsList = $(bin)PixelDigitizationsetup.make
cmt_local_PixelDigitizationMergeComponentsList_makefile = $(bin)PixelDigitizationMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#PixelDigitizationMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelDigitizationMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelDigitizationMergeComponentsList/
#PixelDigitizationMergeComponentsList::
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


.PHONY: PixelDigitizationMergeComponentsList PixelDigitizationMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/PixelDigitization.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

PixelDigitizationMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  PixelDigitizationMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

PixelDigitizationMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libPixelDigitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libPixelDigitization.so
#-- start of cleanup_header --------------

clean :: PixelDigitizationMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelDigitizationMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelDigitizationMergeComponentsListclean ::
#-- end of cleanup_header ---------------
