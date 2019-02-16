#-- start of make_header -----------------

#====================================
#  Document SCT_G4_SDMergeComponentsList
#
#   Generated Tue Jan 29 18:51:52 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_G4_SDMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_G4_SDMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_G4_SDMergeComponentsList

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDMergeComponentsList = $(SCT_G4_SD_tag)_SCT_G4_SDMergeComponentsList.make
cmt_local_tagfile_SCT_G4_SDMergeComponentsList = $(bin)$(SCT_G4_SD_tag)_SCT_G4_SDMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDMergeComponentsList = $(SCT_G4_SD_tag).make
cmt_local_tagfile_SCT_G4_SDMergeComponentsList = $(bin)$(SCT_G4_SD_tag).make

endif

include $(cmt_local_tagfile_SCT_G4_SDMergeComponentsList)
#-include $(cmt_local_tagfile_SCT_G4_SDMergeComponentsList)

ifdef cmt_SCT_G4_SDMergeComponentsList_has_target_tag

cmt_final_setup_SCT_G4_SDMergeComponentsList = $(bin)setup_SCT_G4_SDMergeComponentsList.make
cmt_dependencies_in_SCT_G4_SDMergeComponentsList = $(bin)dependencies_SCT_G4_SDMergeComponentsList.in
#cmt_final_setup_SCT_G4_SDMergeComponentsList = $(bin)SCT_G4_SD_SCT_G4_SDMergeComponentsListsetup.make
cmt_local_SCT_G4_SDMergeComponentsList_makefile = $(bin)SCT_G4_SDMergeComponentsList.make

else

cmt_final_setup_SCT_G4_SDMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_SCT_G4_SDMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_SCT_G4_SDMergeComponentsList = $(bin)SCT_G4_SDsetup.make
cmt_local_SCT_G4_SDMergeComponentsList_makefile = $(bin)SCT_G4_SDMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_G4_SDsetup.make

#SCT_G4_SDMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_G4_SDMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_G4_SDMergeComponentsList/
#SCT_G4_SDMergeComponentsList::
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


.PHONY: SCT_G4_SDMergeComponentsList SCT_G4_SDMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/SCT_G4_SD.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

SCT_G4_SDMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  SCT_G4_SDMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

SCT_G4_SDMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libSCT_G4_SD_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_G4_SD.so
#-- start of cleanup_header --------------

clean :: SCT_G4_SDMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_G4_SDMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_G4_SDMergeComponentsListclean ::
#-- end of cleanup_header ---------------
