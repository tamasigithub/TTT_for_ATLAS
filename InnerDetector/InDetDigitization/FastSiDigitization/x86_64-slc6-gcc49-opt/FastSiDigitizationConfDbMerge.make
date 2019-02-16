#-- start of make_header -----------------

#====================================
#  Document FastSiDigitizationConfDbMerge
#
#   Generated Tue Jan 29 19:11:44 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_FastSiDigitizationConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_FastSiDigitizationConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_FastSiDigitizationConfDbMerge

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationConfDbMerge = $(FastSiDigitization_tag)_FastSiDigitizationConfDbMerge.make
cmt_local_tagfile_FastSiDigitizationConfDbMerge = $(bin)$(FastSiDigitization_tag)_FastSiDigitizationConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationConfDbMerge = $(FastSiDigitization_tag).make
cmt_local_tagfile_FastSiDigitizationConfDbMerge = $(bin)$(FastSiDigitization_tag).make

endif

include $(cmt_local_tagfile_FastSiDigitizationConfDbMerge)
#-include $(cmt_local_tagfile_FastSiDigitizationConfDbMerge)

ifdef cmt_FastSiDigitizationConfDbMerge_has_target_tag

cmt_final_setup_FastSiDigitizationConfDbMerge = $(bin)setup_FastSiDigitizationConfDbMerge.make
cmt_dependencies_in_FastSiDigitizationConfDbMerge = $(bin)dependencies_FastSiDigitizationConfDbMerge.in
#cmt_final_setup_FastSiDigitizationConfDbMerge = $(bin)FastSiDigitization_FastSiDigitizationConfDbMergesetup.make
cmt_local_FastSiDigitizationConfDbMerge_makefile = $(bin)FastSiDigitizationConfDbMerge.make

else

cmt_final_setup_FastSiDigitizationConfDbMerge = $(bin)setup.make
cmt_dependencies_in_FastSiDigitizationConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_FastSiDigitizationConfDbMerge = $(bin)FastSiDigitizationsetup.make
cmt_local_FastSiDigitizationConfDbMerge_makefile = $(bin)FastSiDigitizationConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)FastSiDigitizationsetup.make

#FastSiDigitizationConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'FastSiDigitizationConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = FastSiDigitizationConfDbMerge/
#FastSiDigitizationConfDbMerge::
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

.PHONY: FastSiDigitizationConfDbMerge FastSiDigitizationConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/FastSiDigitization/genConf/FastSiDigitization/FastSiDigitization.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

FastSiDigitizationConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  FastSiDigitizationConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

FastSiDigitizationConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libFastSiDigitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libFastSiDigitization.so
#-- start of cleanup_header --------------

clean :: FastSiDigitizationConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(FastSiDigitizationConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

FastSiDigitizationConfDbMergeclean ::
#-- end of cleanup_header ---------------
