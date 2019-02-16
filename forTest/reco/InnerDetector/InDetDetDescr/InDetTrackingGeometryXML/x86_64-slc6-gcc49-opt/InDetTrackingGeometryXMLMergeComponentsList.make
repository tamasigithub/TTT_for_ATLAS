#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryXMLMergeComponentsList
#
#   Generated Wed Oct 10 16:33:00 2018  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryXMLMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryXMLMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryXMLMergeComponentsList

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLMergeComponentsList = $(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLMergeComponentsList.make
cmt_local_tagfile_InDetTrackingGeometryXMLMergeComponentsList = $(bin)$(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLMergeComponentsList = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_InDetTrackingGeometryXMLMergeComponentsList = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryXMLMergeComponentsList)
#-include $(cmt_local_tagfile_InDetTrackingGeometryXMLMergeComponentsList)

ifdef cmt_InDetTrackingGeometryXMLMergeComponentsList_has_target_tag

cmt_final_setup_InDetTrackingGeometryXMLMergeComponentsList = $(bin)setup_InDetTrackingGeometryXMLMergeComponentsList.make
cmt_dependencies_in_InDetTrackingGeometryXMLMergeComponentsList = $(bin)dependencies_InDetTrackingGeometryXMLMergeComponentsList.in
#cmt_final_setup_InDetTrackingGeometryXMLMergeComponentsList = $(bin)InDetTrackingGeometryXML_InDetTrackingGeometryXMLMergeComponentsListsetup.make
cmt_local_InDetTrackingGeometryXMLMergeComponentsList_makefile = $(bin)InDetTrackingGeometryXMLMergeComponentsList.make

else

cmt_final_setup_InDetTrackingGeometryXMLMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryXMLMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryXMLMergeComponentsList = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXMLMergeComponentsList_makefile = $(bin)InDetTrackingGeometryXMLMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#InDetTrackingGeometryXMLMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryXMLMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryXMLMergeComponentsList/
#InDetTrackingGeometryXMLMergeComponentsList::
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


.PHONY: InDetTrackingGeometryXMLMergeComponentsList InDetTrackingGeometryXMLMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/InDetTrackingGeometryXML.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

InDetTrackingGeometryXMLMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  InDetTrackingGeometryXMLMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

InDetTrackingGeometryXMLMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libInDetTrackingGeometryXML_so_dependencies = ../x86_64-slc6-gcc49-opt/libInDetTrackingGeometryXML.so
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryXMLMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryXMLMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryXMLMergeComponentsListclean ::
#-- end of cleanup_header ---------------
