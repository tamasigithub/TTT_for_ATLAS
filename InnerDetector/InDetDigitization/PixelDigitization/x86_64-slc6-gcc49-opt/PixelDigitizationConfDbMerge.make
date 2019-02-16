#-- start of make_header -----------------

#====================================
#  Document PixelDigitizationConfDbMerge
#
#   Generated Tue Jan 29 19:13:48 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelDigitizationConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelDigitizationConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelDigitizationConfDbMerge

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationConfDbMerge = $(PixelDigitization_tag)_PixelDigitizationConfDbMerge.make
cmt_local_tagfile_PixelDigitizationConfDbMerge = $(bin)$(PixelDigitization_tag)_PixelDigitizationConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationConfDbMerge = $(PixelDigitization_tag).make
cmt_local_tagfile_PixelDigitizationConfDbMerge = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_PixelDigitizationConfDbMerge)
#-include $(cmt_local_tagfile_PixelDigitizationConfDbMerge)

ifdef cmt_PixelDigitizationConfDbMerge_has_target_tag

cmt_final_setup_PixelDigitizationConfDbMerge = $(bin)setup_PixelDigitizationConfDbMerge.make
cmt_dependencies_in_PixelDigitizationConfDbMerge = $(bin)dependencies_PixelDigitizationConfDbMerge.in
#cmt_final_setup_PixelDigitizationConfDbMerge = $(bin)PixelDigitization_PixelDigitizationConfDbMergesetup.make
cmt_local_PixelDigitizationConfDbMerge_makefile = $(bin)PixelDigitizationConfDbMerge.make

else

cmt_final_setup_PixelDigitizationConfDbMerge = $(bin)setup.make
cmt_dependencies_in_PixelDigitizationConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_PixelDigitizationConfDbMerge = $(bin)PixelDigitizationsetup.make
cmt_local_PixelDigitizationConfDbMerge_makefile = $(bin)PixelDigitizationConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#PixelDigitizationConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelDigitizationConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelDigitizationConfDbMerge/
#PixelDigitizationConfDbMerge::
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

.PHONY: PixelDigitizationConfDbMerge PixelDigitizationConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetDigitization/PixelDigitization/genConf/PixelDigitization/PixelDigitization.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

PixelDigitizationConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  PixelDigitizationConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

PixelDigitizationConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libPixelDigitization_so_dependencies = ../x86_64-slc6-gcc49-opt/libPixelDigitization.so
#-- start of cleanup_header --------------

clean :: PixelDigitizationConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelDigitizationConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelDigitizationConfDbMergeclean ::
#-- end of cleanup_header ---------------
