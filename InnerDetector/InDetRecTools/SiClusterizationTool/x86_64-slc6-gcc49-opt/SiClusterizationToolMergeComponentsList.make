#-- start of make_header -----------------

#====================================
#  Document SiClusterizationToolMergeComponentsList
#
#   Generated Tue Jan 29 19:06:05 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiClusterizationToolMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiClusterizationToolMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiClusterizationToolMergeComponentsList

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolMergeComponentsList = $(SiClusterizationTool_tag)_SiClusterizationToolMergeComponentsList.make
cmt_local_tagfile_SiClusterizationToolMergeComponentsList = $(bin)$(SiClusterizationTool_tag)_SiClusterizationToolMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolMergeComponentsList = $(SiClusterizationTool_tag).make
cmt_local_tagfile_SiClusterizationToolMergeComponentsList = $(bin)$(SiClusterizationTool_tag).make

endif

include $(cmt_local_tagfile_SiClusterizationToolMergeComponentsList)
#-include $(cmt_local_tagfile_SiClusterizationToolMergeComponentsList)

ifdef cmt_SiClusterizationToolMergeComponentsList_has_target_tag

cmt_final_setup_SiClusterizationToolMergeComponentsList = $(bin)setup_SiClusterizationToolMergeComponentsList.make
cmt_dependencies_in_SiClusterizationToolMergeComponentsList = $(bin)dependencies_SiClusterizationToolMergeComponentsList.in
#cmt_final_setup_SiClusterizationToolMergeComponentsList = $(bin)SiClusterizationTool_SiClusterizationToolMergeComponentsListsetup.make
cmt_local_SiClusterizationToolMergeComponentsList_makefile = $(bin)SiClusterizationToolMergeComponentsList.make

else

cmt_final_setup_SiClusterizationToolMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_SiClusterizationToolMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_SiClusterizationToolMergeComponentsList = $(bin)SiClusterizationToolsetup.make
cmt_local_SiClusterizationToolMergeComponentsList_makefile = $(bin)SiClusterizationToolMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiClusterizationToolsetup.make

#SiClusterizationToolMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiClusterizationToolMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiClusterizationToolMergeComponentsList/
#SiClusterizationToolMergeComponentsList::
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


.PHONY: SiClusterizationToolMergeComponentsList SiClusterizationToolMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/SiClusterizationTool.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

SiClusterizationToolMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  SiClusterizationToolMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

SiClusterizationToolMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libSiClusterizationTool_so_dependencies = ../x86_64-slc6-gcc49-opt/libSiClusterizationTool.so
#-- start of cleanup_header --------------

clean :: SiClusterizationToolMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiClusterizationToolMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiClusterizationToolMergeComponentsListclean ::
#-- end of cleanup_header ---------------
