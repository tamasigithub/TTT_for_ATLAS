#-- start of make_header -----------------

#====================================
#  Document SCT_G4_SDCLIDDB
#
#   Generated Tue Jan 29 18:51:49 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_G4_SDCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_G4_SDCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_G4_SDCLIDDB

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDCLIDDB = $(SCT_G4_SD_tag)_SCT_G4_SDCLIDDB.make
cmt_local_tagfile_SCT_G4_SDCLIDDB = $(bin)$(SCT_G4_SD_tag)_SCT_G4_SDCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDCLIDDB = $(SCT_G4_SD_tag).make
cmt_local_tagfile_SCT_G4_SDCLIDDB = $(bin)$(SCT_G4_SD_tag).make

endif

include $(cmt_local_tagfile_SCT_G4_SDCLIDDB)
#-include $(cmt_local_tagfile_SCT_G4_SDCLIDDB)

ifdef cmt_SCT_G4_SDCLIDDB_has_target_tag

cmt_final_setup_SCT_G4_SDCLIDDB = $(bin)setup_SCT_G4_SDCLIDDB.make
cmt_dependencies_in_SCT_G4_SDCLIDDB = $(bin)dependencies_SCT_G4_SDCLIDDB.in
#cmt_final_setup_SCT_G4_SDCLIDDB = $(bin)SCT_G4_SD_SCT_G4_SDCLIDDBsetup.make
cmt_local_SCT_G4_SDCLIDDB_makefile = $(bin)SCT_G4_SDCLIDDB.make

else

cmt_final_setup_SCT_G4_SDCLIDDB = $(bin)setup.make
cmt_dependencies_in_SCT_G4_SDCLIDDB = $(bin)dependencies.in
#cmt_final_setup_SCT_G4_SDCLIDDB = $(bin)SCT_G4_SDsetup.make
cmt_local_SCT_G4_SDCLIDDB_makefile = $(bin)SCT_G4_SDCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_G4_SDsetup.make

#SCT_G4_SDCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_G4_SDCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_G4_SDCLIDDB/
#SCT_G4_SDCLIDDB::
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

.PHONY: SCT_G4_SDCLIDDB SCT_G4_SDCLIDDBclean

outname := clid.db
cliddb  := SCT_G4_SD_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)SCT_G4_SD.$(shlibsuffix)

SCT_G4_SDCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p SCT_G4_SD -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

SCT_G4_SDCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: SCT_G4_SDCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_G4_SDCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_G4_SDCLIDDBclean ::
#-- end of cleanup_header ---------------
