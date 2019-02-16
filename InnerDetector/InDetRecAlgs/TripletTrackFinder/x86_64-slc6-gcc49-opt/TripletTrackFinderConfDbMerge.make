#-- start of make_header -----------------

#====================================
#  Document TripletTrackFinderConfDbMerge
#
#   Generated Thu Feb 14 18:23:47 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TripletTrackFinderConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TripletTrackFinderConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TripletTrackFinderConfDbMerge

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderConfDbMerge = $(TripletTrackFinder_tag)_TripletTrackFinderConfDbMerge.make
cmt_local_tagfile_TripletTrackFinderConfDbMerge = $(bin)$(TripletTrackFinder_tag)_TripletTrackFinderConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderConfDbMerge = $(TripletTrackFinder_tag).make
cmt_local_tagfile_TripletTrackFinderConfDbMerge = $(bin)$(TripletTrackFinder_tag).make

endif

include $(cmt_local_tagfile_TripletTrackFinderConfDbMerge)
#-include $(cmt_local_tagfile_TripletTrackFinderConfDbMerge)

ifdef cmt_TripletTrackFinderConfDbMerge_has_target_tag

cmt_final_setup_TripletTrackFinderConfDbMerge = $(bin)setup_TripletTrackFinderConfDbMerge.make
cmt_dependencies_in_TripletTrackFinderConfDbMerge = $(bin)dependencies_TripletTrackFinderConfDbMerge.in
#cmt_final_setup_TripletTrackFinderConfDbMerge = $(bin)TripletTrackFinder_TripletTrackFinderConfDbMergesetup.make
cmt_local_TripletTrackFinderConfDbMerge_makefile = $(bin)TripletTrackFinderConfDbMerge.make

else

cmt_final_setup_TripletTrackFinderConfDbMerge = $(bin)setup.make
cmt_dependencies_in_TripletTrackFinderConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_TripletTrackFinderConfDbMerge = $(bin)TripletTrackFindersetup.make
cmt_local_TripletTrackFinderConfDbMerge_makefile = $(bin)TripletTrackFinderConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TripletTrackFindersetup.make

#TripletTrackFinderConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TripletTrackFinderConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TripletTrackFinderConfDbMerge/
#TripletTrackFinderConfDbMerge::
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

.PHONY: TripletTrackFinderConfDbMerge TripletTrackFinderConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecAlgs/TripletTrackFinder/genConf/TripletTrackFinder/TripletTrackFinder.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

TripletTrackFinderConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  TripletTrackFinderConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

TripletTrackFinderConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libTripletTrackFinder_so_dependencies = ../x86_64-slc6-gcc49-opt/libTripletTrackFinder.so
#-- start of cleanup_header --------------

clean :: TripletTrackFinderConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TripletTrackFinderConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TripletTrackFinderConfDbMergeclean ::
#-- end of cleanup_header ---------------
