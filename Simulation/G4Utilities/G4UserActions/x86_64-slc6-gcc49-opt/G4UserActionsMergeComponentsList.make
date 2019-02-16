#-- start of make_header -----------------

#====================================
#  Document G4UserActionsMergeComponentsList
#
#   Generated Tue Jan 29 18:53:29 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_G4UserActionsMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_G4UserActionsMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_G4UserActionsMergeComponentsList

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsMergeComponentsList = $(G4UserActions_tag)_G4UserActionsMergeComponentsList.make
cmt_local_tagfile_G4UserActionsMergeComponentsList = $(bin)$(G4UserActions_tag)_G4UserActionsMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsMergeComponentsList = $(G4UserActions_tag).make
cmt_local_tagfile_G4UserActionsMergeComponentsList = $(bin)$(G4UserActions_tag).make

endif

include $(cmt_local_tagfile_G4UserActionsMergeComponentsList)
#-include $(cmt_local_tagfile_G4UserActionsMergeComponentsList)

ifdef cmt_G4UserActionsMergeComponentsList_has_target_tag

cmt_final_setup_G4UserActionsMergeComponentsList = $(bin)setup_G4UserActionsMergeComponentsList.make
cmt_dependencies_in_G4UserActionsMergeComponentsList = $(bin)dependencies_G4UserActionsMergeComponentsList.in
#cmt_final_setup_G4UserActionsMergeComponentsList = $(bin)G4UserActions_G4UserActionsMergeComponentsListsetup.make
cmt_local_G4UserActionsMergeComponentsList_makefile = $(bin)G4UserActionsMergeComponentsList.make

else

cmt_final_setup_G4UserActionsMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_G4UserActionsMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_G4UserActionsMergeComponentsList = $(bin)G4UserActionssetup.make
cmt_local_G4UserActionsMergeComponentsList_makefile = $(bin)G4UserActionsMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)G4UserActionssetup.make

#G4UserActionsMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'G4UserActionsMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = G4UserActionsMergeComponentsList/
#G4UserActionsMergeComponentsList::
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


.PHONY: G4UserActionsMergeComponentsList G4UserActionsMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/G4UserActions.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

G4UserActionsMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  G4UserActionsMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

G4UserActionsMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libG4UserActions_so_dependencies = ../x86_64-slc6-gcc49-opt/libG4UserActions.so
#-- start of cleanup_header --------------

clean :: G4UserActionsMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(G4UserActionsMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

G4UserActionsMergeComponentsListclean ::
#-- end of cleanup_header ---------------
