#-- start of make_header -----------------

#====================================
#  Document SiHitAnalysisCLIDDB
#
#   Generated Tue Jan 29 18:44:35 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiHitAnalysisCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiHitAnalysisCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiHitAnalysisCLIDDB

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisCLIDDB = $(SiHitAnalysis_tag)_SiHitAnalysisCLIDDB.make
cmt_local_tagfile_SiHitAnalysisCLIDDB = $(bin)$(SiHitAnalysis_tag)_SiHitAnalysisCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisCLIDDB = $(SiHitAnalysis_tag).make
cmt_local_tagfile_SiHitAnalysisCLIDDB = $(bin)$(SiHitAnalysis_tag).make

endif

include $(cmt_local_tagfile_SiHitAnalysisCLIDDB)
#-include $(cmt_local_tagfile_SiHitAnalysisCLIDDB)

ifdef cmt_SiHitAnalysisCLIDDB_has_target_tag

cmt_final_setup_SiHitAnalysisCLIDDB = $(bin)setup_SiHitAnalysisCLIDDB.make
cmt_dependencies_in_SiHitAnalysisCLIDDB = $(bin)dependencies_SiHitAnalysisCLIDDB.in
#cmt_final_setup_SiHitAnalysisCLIDDB = $(bin)SiHitAnalysis_SiHitAnalysisCLIDDBsetup.make
cmt_local_SiHitAnalysisCLIDDB_makefile = $(bin)SiHitAnalysisCLIDDB.make

else

cmt_final_setup_SiHitAnalysisCLIDDB = $(bin)setup.make
cmt_dependencies_in_SiHitAnalysisCLIDDB = $(bin)dependencies.in
#cmt_final_setup_SiHitAnalysisCLIDDB = $(bin)SiHitAnalysissetup.make
cmt_local_SiHitAnalysisCLIDDB_makefile = $(bin)SiHitAnalysisCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiHitAnalysissetup.make

#SiHitAnalysisCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiHitAnalysisCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiHitAnalysisCLIDDB/
#SiHitAnalysisCLIDDB::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/genCLIDDB_header
# Author: Paolo Calafiura
# derived from genconf_header

# Use genCLIDDB_cmd to create package clid.db files

.PHONY: SiHitAnalysisCLIDDB SiHitAnalysisCLIDDBclean

outname := clid.db
cliddb  := SiHitAnalysis_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)SiHitAnalysis.$(shlibsuffix)

SiHitAnalysisCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p SiHitAnalysis -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

SiHitAnalysisCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: SiHitAnalysisCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiHitAnalysisCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiHitAnalysisCLIDDBclean ::
#-- end of cleanup_header ---------------
