#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryConfDbMerge
#
#   Generated Tue Jan 29 18:57:41 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryConfDbMerge

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryConfDbMerge = $(InDetTrackingGeometry_tag)_InDetTrackingGeometryConfDbMerge.make
cmt_local_tagfile_InDetTrackingGeometryConfDbMerge = $(bin)$(InDetTrackingGeometry_tag)_InDetTrackingGeometryConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryConfDbMerge = $(InDetTrackingGeometry_tag).make
cmt_local_tagfile_InDetTrackingGeometryConfDbMerge = $(bin)$(InDetTrackingGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryConfDbMerge)
#-include $(cmt_local_tagfile_InDetTrackingGeometryConfDbMerge)

ifdef cmt_InDetTrackingGeometryConfDbMerge_has_target_tag

cmt_final_setup_InDetTrackingGeometryConfDbMerge = $(bin)setup_InDetTrackingGeometryConfDbMerge.make
cmt_dependencies_in_InDetTrackingGeometryConfDbMerge = $(bin)dependencies_InDetTrackingGeometryConfDbMerge.in
#cmt_final_setup_InDetTrackingGeometryConfDbMerge = $(bin)InDetTrackingGeometry_InDetTrackingGeometryConfDbMergesetup.make
cmt_local_InDetTrackingGeometryConfDbMerge_makefile = $(bin)InDetTrackingGeometryConfDbMerge.make

else

cmt_final_setup_InDetTrackingGeometryConfDbMerge = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryConfDbMerge = $(bin)InDetTrackingGeometrysetup.make
cmt_local_InDetTrackingGeometryConfDbMerge_makefile = $(bin)InDetTrackingGeometryConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometrysetup.make

#InDetTrackingGeometryConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryConfDbMerge/
#InDetTrackingGeometryConfDbMerge::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_genconfDb_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.confdb file into a single
# <project>.confdb file in the (lib) install area

.PHONY: InDetTrackingGeometryConfDbMerge InDetTrackingGeometryConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometry/genConf/InDetTrackingGeometry/InDetTrackingGeometry.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

InDetTrackingGeometryConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  InDetTrackingGeometryConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

InDetTrackingGeometryConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libInDetTrackingGeometry_so_dependencies = ../x86_64-slc6-gcc49-opt/libInDetTrackingGeometry.so
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryConfDbMergeclean ::
#-- end of cleanup_header ---------------
