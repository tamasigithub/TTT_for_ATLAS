#-- start of make_header -----------------

#====================================
#  Document TripletTrackFinderMergeComponentsList
#
#   Generated Thu Nov 15 16:38:35 2018  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TripletTrackFinderMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TripletTrackFinderMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TripletTrackFinderMergeComponentsList

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderMergeComponentsList = $(TripletTrackFinder_tag)_TripletTrackFinderMergeComponentsList.make
cmt_local_tagfile_TripletTrackFinderMergeComponentsList = $(bin)$(TripletTrackFinder_tag)_TripletTrackFinderMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderMergeComponentsList = $(TripletTrackFinder_tag).make
cmt_local_tagfile_TripletTrackFinderMergeComponentsList = $(bin)$(TripletTrackFinder_tag).make

endif

include $(cmt_local_tagfile_TripletTrackFinderMergeComponentsList)
#-include $(cmt_local_tagfile_TripletTrackFinderMergeComponentsList)

ifdef cmt_TripletTrackFinderMergeComponentsList_has_target_tag

cmt_final_setup_TripletTrackFinderMergeComponentsList = $(bin)setup_TripletTrackFinderMergeComponentsList.make
cmt_dependencies_in_TripletTrackFinderMergeComponentsList = $(bin)dependencies_TripletTrackFinderMergeComponentsList.in
#cmt_final_setup_TripletTrackFinderMergeComponentsList = $(bin)TripletTrackFinder_TripletTrackFinderMergeComponentsListsetup.make
cmt_local_TripletTrackFinderMergeComponentsList_makefile = $(bin)TripletTrackFinderMergeComponentsList.make

else

cmt_final_setup_TripletTrackFinderMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_TripletTrackFinderMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_TripletTrackFinderMergeComponentsList = $(bin)TripletTrackFindersetup.make
cmt_local_TripletTrackFinderMergeComponentsList_makefile = $(bin)TripletTrackFinderMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TripletTrackFindersetup.make

#TripletTrackFinderMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TripletTrackFinderMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TripletTrackFinderMergeComponentsList/
#TripletTrackFinderMergeComponentsList::
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


.PHONY: TripletTrackFinderMergeComponentsList TripletTrackFinderMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/TripletTrackFinder.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

TripletTrackFinderMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  TripletTrackFinderMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

TripletTrackFinderMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libTripletTrackFinder_so_dependencies = ../x86_64-slc6-gcc49-opt/libTripletTrackFinder.so
#-- start of cleanup_header --------------

clean :: TripletTrackFinderMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TripletTrackFinderMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TripletTrackFinderMergeComponentsListclean ::
#-- end of cleanup_header ---------------
