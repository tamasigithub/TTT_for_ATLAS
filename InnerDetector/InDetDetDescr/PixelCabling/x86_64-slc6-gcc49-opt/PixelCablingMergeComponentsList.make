#-- start of make_header -----------------

#====================================
#  Document PixelCablingMergeComponentsList
#
#   Generated Tue Jan 29 18:58:14 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelCablingMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelCablingMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelCablingMergeComponentsList

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingMergeComponentsList = $(PixelCabling_tag)_PixelCablingMergeComponentsList.make
cmt_local_tagfile_PixelCablingMergeComponentsList = $(bin)$(PixelCabling_tag)_PixelCablingMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingMergeComponentsList = $(PixelCabling_tag).make
cmt_local_tagfile_PixelCablingMergeComponentsList = $(bin)$(PixelCabling_tag).make

endif

include $(cmt_local_tagfile_PixelCablingMergeComponentsList)
#-include $(cmt_local_tagfile_PixelCablingMergeComponentsList)

ifdef cmt_PixelCablingMergeComponentsList_has_target_tag

cmt_final_setup_PixelCablingMergeComponentsList = $(bin)setup_PixelCablingMergeComponentsList.make
cmt_dependencies_in_PixelCablingMergeComponentsList = $(bin)dependencies_PixelCablingMergeComponentsList.in
#cmt_final_setup_PixelCablingMergeComponentsList = $(bin)PixelCabling_PixelCablingMergeComponentsListsetup.make
cmt_local_PixelCablingMergeComponentsList_makefile = $(bin)PixelCablingMergeComponentsList.make

else

cmt_final_setup_PixelCablingMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_PixelCablingMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_PixelCablingMergeComponentsList = $(bin)PixelCablingsetup.make
cmt_local_PixelCablingMergeComponentsList_makefile = $(bin)PixelCablingMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelCablingsetup.make

#PixelCablingMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelCablingMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelCablingMergeComponentsList/
#PixelCablingMergeComponentsList::
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


.PHONY: PixelCablingMergeComponentsList PixelCablingMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/PixelCabling.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

PixelCablingMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  PixelCablingMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

PixelCablingMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libPixelCabling_so_dependencies = ../x86_64-slc6-gcc49-opt/libPixelCabling.so
#-- start of cleanup_header --------------

clean :: PixelCablingMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelCablingMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelCablingMergeComponentsListclean ::
#-- end of cleanup_header ---------------
