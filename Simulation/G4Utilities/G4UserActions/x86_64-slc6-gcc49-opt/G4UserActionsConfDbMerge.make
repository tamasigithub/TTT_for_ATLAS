#-- start of make_header -----------------

#====================================
#  Document G4UserActionsConfDbMerge
#
#   Generated Tue Jan 29 18:53:28 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_G4UserActionsConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_G4UserActionsConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_G4UserActionsConfDbMerge

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsConfDbMerge = $(G4UserActions_tag)_G4UserActionsConfDbMerge.make
cmt_local_tagfile_G4UserActionsConfDbMerge = $(bin)$(G4UserActions_tag)_G4UserActionsConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsConfDbMerge = $(G4UserActions_tag).make
cmt_local_tagfile_G4UserActionsConfDbMerge = $(bin)$(G4UserActions_tag).make

endif

include $(cmt_local_tagfile_G4UserActionsConfDbMerge)
#-include $(cmt_local_tagfile_G4UserActionsConfDbMerge)

ifdef cmt_G4UserActionsConfDbMerge_has_target_tag

cmt_final_setup_G4UserActionsConfDbMerge = $(bin)setup_G4UserActionsConfDbMerge.make
cmt_dependencies_in_G4UserActionsConfDbMerge = $(bin)dependencies_G4UserActionsConfDbMerge.in
#cmt_final_setup_G4UserActionsConfDbMerge = $(bin)G4UserActions_G4UserActionsConfDbMergesetup.make
cmt_local_G4UserActionsConfDbMerge_makefile = $(bin)G4UserActionsConfDbMerge.make

else

cmt_final_setup_G4UserActionsConfDbMerge = $(bin)setup.make
cmt_dependencies_in_G4UserActionsConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_G4UserActionsConfDbMerge = $(bin)G4UserActionssetup.make
cmt_local_G4UserActionsConfDbMerge_makefile = $(bin)G4UserActionsConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)G4UserActionssetup.make

#G4UserActionsConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'G4UserActionsConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = G4UserActionsConfDbMerge/
#G4UserActionsConfDbMerge::
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

.PHONY: G4UserActionsConfDbMerge G4UserActionsConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/G4Utilities/G4UserActions/genConf/G4UserActions/G4UserActions.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

G4UserActionsConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  G4UserActionsConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

G4UserActionsConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libG4UserActions_so_dependencies = ../x86_64-slc6-gcc49-opt/libG4UserActions.so
#-- start of cleanup_header --------------

clean :: G4UserActionsConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(G4UserActionsConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

G4UserActionsConfDbMergeclean ::
#-- end of cleanup_header ---------------
