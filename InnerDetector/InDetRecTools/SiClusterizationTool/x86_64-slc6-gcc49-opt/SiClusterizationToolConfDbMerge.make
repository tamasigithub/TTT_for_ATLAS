#-- start of make_header -----------------

#====================================
#  Document SiClusterizationToolConfDbMerge
#
#   Generated Tue Jan 29 19:06:03 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiClusterizationToolConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiClusterizationToolConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiClusterizationToolConfDbMerge

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolConfDbMerge = $(SiClusterizationTool_tag)_SiClusterizationToolConfDbMerge.make
cmt_local_tagfile_SiClusterizationToolConfDbMerge = $(bin)$(SiClusterizationTool_tag)_SiClusterizationToolConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolConfDbMerge = $(SiClusterizationTool_tag).make
cmt_local_tagfile_SiClusterizationToolConfDbMerge = $(bin)$(SiClusterizationTool_tag).make

endif

include $(cmt_local_tagfile_SiClusterizationToolConfDbMerge)
#-include $(cmt_local_tagfile_SiClusterizationToolConfDbMerge)

ifdef cmt_SiClusterizationToolConfDbMerge_has_target_tag

cmt_final_setup_SiClusterizationToolConfDbMerge = $(bin)setup_SiClusterizationToolConfDbMerge.make
cmt_dependencies_in_SiClusterizationToolConfDbMerge = $(bin)dependencies_SiClusterizationToolConfDbMerge.in
#cmt_final_setup_SiClusterizationToolConfDbMerge = $(bin)SiClusterizationTool_SiClusterizationToolConfDbMergesetup.make
cmt_local_SiClusterizationToolConfDbMerge_makefile = $(bin)SiClusterizationToolConfDbMerge.make

else

cmt_final_setup_SiClusterizationToolConfDbMerge = $(bin)setup.make
cmt_dependencies_in_SiClusterizationToolConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_SiClusterizationToolConfDbMerge = $(bin)SiClusterizationToolsetup.make
cmt_local_SiClusterizationToolConfDbMerge_makefile = $(bin)SiClusterizationToolConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiClusterizationToolsetup.make

#SiClusterizationToolConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiClusterizationToolConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiClusterizationToolConfDbMerge/
#SiClusterizationToolConfDbMerge::
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

.PHONY: SiClusterizationToolConfDbMerge SiClusterizationToolConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/InnerDetector/InDetRecTools/SiClusterizationTool/genConf/SiClusterizationTool/SiClusterizationTool.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

SiClusterizationToolConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  SiClusterizationToolConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

SiClusterizationToolConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libSiClusterizationTool_so_dependencies = ../x86_64-slc6-gcc49-opt/libSiClusterizationTool.so
#-- start of cleanup_header --------------

clean :: SiClusterizationToolConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiClusterizationToolConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiClusterizationToolConfDbMergeclean ::
#-- end of cleanup_header ---------------
