#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryMergeComponentsList
#
#   Generated Tue Jan 29 18:57:43 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryMergeComponentsList

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryMergeComponentsList = $(InDetTrackingGeometry_tag)_InDetTrackingGeometryMergeComponentsList.make
cmt_local_tagfile_InDetTrackingGeometryMergeComponentsList = $(bin)$(InDetTrackingGeometry_tag)_InDetTrackingGeometryMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryMergeComponentsList = $(InDetTrackingGeometry_tag).make
cmt_local_tagfile_InDetTrackingGeometryMergeComponentsList = $(bin)$(InDetTrackingGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryMergeComponentsList)
#-include $(cmt_local_tagfile_InDetTrackingGeometryMergeComponentsList)

ifdef cmt_InDetTrackingGeometryMergeComponentsList_has_target_tag

cmt_final_setup_InDetTrackingGeometryMergeComponentsList = $(bin)setup_InDetTrackingGeometryMergeComponentsList.make
cmt_dependencies_in_InDetTrackingGeometryMergeComponentsList = $(bin)dependencies_InDetTrackingGeometryMergeComponentsList.in
#cmt_final_setup_InDetTrackingGeometryMergeComponentsList = $(bin)InDetTrackingGeometry_InDetTrackingGeometryMergeComponentsListsetup.make
cmt_local_InDetTrackingGeometryMergeComponentsList_makefile = $(bin)InDetTrackingGeometryMergeComponentsList.make

else

cmt_final_setup_InDetTrackingGeometryMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryMergeComponentsList = $(bin)InDetTrackingGeometrysetup.make
cmt_local_InDetTrackingGeometryMergeComponentsList_makefile = $(bin)InDetTrackingGeometryMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometrysetup.make

#InDetTrackingGeometryMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryMergeComponentsList/
#InDetTrackingGeometryMergeComponentsList::
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


.PHONY: InDetTrackingGeometryMergeComponentsList InDetTrackingGeometryMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/InDetTrackingGeometry.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

InDetTrackingGeometryMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  InDetTrackingGeometryMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

InDetTrackingGeometryMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libInDetTrackingGeometry_so_dependencies = ../x86_64-slc6-gcc49-opt/libInDetTrackingGeometry.so
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryMergeComponentsListclean ::
#-- end of cleanup_header ---------------
