#-- start of make_header -----------------

#====================================
#  Document SCT_DigitizationConfDbMerge
#
#   Generated Tue Jan 29 19:04:14 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_DigitizationConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_DigitizationConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_DigitizationConfDbMerge

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationConfDbMerge = $(SCT_Digitization_tag)_SCT_DigitizationConfDbMerge.make
cmt_local_tagfile_SCT_DigitizationConfDbMerge = $(bin)$(SCT_Digitization_tag)_SCT_DigitizationConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationConfDbMerge = $(SCT_Digitization_tag).make
cmt_local_tagfile_SCT_DigitizationConfDbMerge = $(bin)$(SCT_Digitization_tag).make

endif

include $(cmt_local_tagfile_SCT_DigitizationConfDbMerge)
#-include $(cmt_local_tagfile_SCT_DigitizationConfDbMerge)

ifdef cmt_SCT_DigitizationConfDbMerge_has_target_tag

cmt_final_setup_SCT_DigitizationConfDbMerge = $(bin)setup_SCT_DigitizationConfDbMerge.make
cmt_dependencies_in_SCT_DigitizationConfDbMerge = $(bin)dependencies_SCT_DigitizationConfDbMerge.in
#cmt_final_setup_SCT_DigitizationConfDbMerge = $(bin)SCT_Digitization_SCT_DigitizationConfDbMergesetup.make
cmt_local_SCT_DigitizationConfDbMerge_makefile = $(bin)SCT_DigitizationConfDbMerge.make

else

cmt_final_setup_SCT_DigitizationConfDbMerge = $(bin)setup.make
cmt_dependencies_in_SCT_DigitizationConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_SCT_DigitizationConfDbMerge = $(bin)SCT_Digitizationsetup.make
cmt_local_SCT_DigitizationConfDbMerge_makefile = $(bin)SCT_DigitizationConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Digitizationsetup.make

#SCT_DigitizationConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_DigitizationConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_DigitizationConfDbMerge/
#SCT_DigitizationConfDbMerge::
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

.PHONY: SCT_DigitizationConfDbMerge SCT_DigitizationConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/SCT_Digitization/genConf/SCT_Digitization/SCT_Digitization.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

SCT_DigitizationConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  SCT_DigitizationConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

SCT_DigitizationConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libSCT_Digitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_Digitization.so
#-- start of cleanup_header --------------

clean :: SCT_DigitizationConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_DigitizationConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_DigitizationConfDbMergeclean ::
#-- end of cleanup_header ---------------
