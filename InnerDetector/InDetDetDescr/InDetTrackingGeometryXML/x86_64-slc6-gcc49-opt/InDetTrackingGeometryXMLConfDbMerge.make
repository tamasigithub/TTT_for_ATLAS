#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryXMLConfDbMerge
#
#   Generated Tue Jan 29 18:51:13 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryXMLConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryXMLConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryXMLConfDbMerge

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLConfDbMerge = $(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLConfDbMerge.make
cmt_local_tagfile_InDetTrackingGeometryXMLConfDbMerge = $(bin)$(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLConfDbMerge = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_InDetTrackingGeometryXMLConfDbMerge = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryXMLConfDbMerge)
#-include $(cmt_local_tagfile_InDetTrackingGeometryXMLConfDbMerge)

ifdef cmt_InDetTrackingGeometryXMLConfDbMerge_has_target_tag

cmt_final_setup_InDetTrackingGeometryXMLConfDbMerge = $(bin)setup_InDetTrackingGeometryXMLConfDbMerge.make
cmt_dependencies_in_InDetTrackingGeometryXMLConfDbMerge = $(bin)dependencies_InDetTrackingGeometryXMLConfDbMerge.in
#cmt_final_setup_InDetTrackingGeometryXMLConfDbMerge = $(bin)InDetTrackingGeometryXML_InDetTrackingGeometryXMLConfDbMergesetup.make
cmt_local_InDetTrackingGeometryXMLConfDbMerge_makefile = $(bin)InDetTrackingGeometryXMLConfDbMerge.make

else

cmt_final_setup_InDetTrackingGeometryXMLConfDbMerge = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryXMLConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryXMLConfDbMerge = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXMLConfDbMerge_makefile = $(bin)InDetTrackingGeometryXMLConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#InDetTrackingGeometryXMLConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryXMLConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryXMLConfDbMerge/
#InDetTrackingGeometryXMLConfDbMerge::
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

.PHONY: InDetTrackingGeometryXMLConfDbMerge InDetTrackingGeometryXMLConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDetDescr/InDetTrackingGeometryXML/genConf/InDetTrackingGeometryXML/InDetTrackingGeometryXML.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

InDetTrackingGeometryXMLConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  InDetTrackingGeometryXMLConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

InDetTrackingGeometryXMLConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libInDetTrackingGeometryXML_so_dependencies = ../x86_64-slc6-gcc49-opt/libInDetTrackingGeometryXML.so
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryXMLConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryXMLConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryXMLConfDbMergeclean ::
#-- end of cleanup_header ---------------
