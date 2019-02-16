#-- start of make_header -----------------

#====================================
#  Document SCT_G4_SDConfDbMerge
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

cmt_SCT_G4_SDConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_G4_SDConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_G4_SDConfDbMerge

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDConfDbMerge = $(SCT_G4_SD_tag)_SCT_G4_SDConfDbMerge.make
cmt_local_tagfile_SCT_G4_SDConfDbMerge = $(bin)$(SCT_G4_SD_tag)_SCT_G4_SDConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDConfDbMerge = $(SCT_G4_SD_tag).make
cmt_local_tagfile_SCT_G4_SDConfDbMerge = $(bin)$(SCT_G4_SD_tag).make

endif

include $(cmt_local_tagfile_SCT_G4_SDConfDbMerge)
#-include $(cmt_local_tagfile_SCT_G4_SDConfDbMerge)

ifdef cmt_SCT_G4_SDConfDbMerge_has_target_tag

cmt_final_setup_SCT_G4_SDConfDbMerge = $(bin)setup_SCT_G4_SDConfDbMerge.make
cmt_dependencies_in_SCT_G4_SDConfDbMerge = $(bin)dependencies_SCT_G4_SDConfDbMerge.in
#cmt_final_setup_SCT_G4_SDConfDbMerge = $(bin)SCT_G4_SD_SCT_G4_SDConfDbMergesetup.make
cmt_local_SCT_G4_SDConfDbMerge_makefile = $(bin)SCT_G4_SDConfDbMerge.make

else

cmt_final_setup_SCT_G4_SDConfDbMerge = $(bin)setup.make
cmt_dependencies_in_SCT_G4_SDConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_SCT_G4_SDConfDbMerge = $(bin)SCT_G4_SDsetup.make
cmt_local_SCT_G4_SDConfDbMerge_makefile = $(bin)SCT_G4_SDConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_G4_SDsetup.make

#SCT_G4_SDConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_G4_SDConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_G4_SDConfDbMerge/
#SCT_G4_SDConfDbMerge::
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

.PHONY: SCT_G4_SDConfDbMerge SCT_G4_SDConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetG4/SCT_G4_SD/genConf/SCT_G4_SD/SCT_G4_SD.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

SCT_G4_SDConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  SCT_G4_SDConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

SCT_G4_SDConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libSCT_G4_SD_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_G4_SD.so
#-- start of cleanup_header --------------

clean :: SCT_G4_SDConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_G4_SDConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_G4_SDConfDbMergeclean ::
#-- end of cleanup_header ---------------
