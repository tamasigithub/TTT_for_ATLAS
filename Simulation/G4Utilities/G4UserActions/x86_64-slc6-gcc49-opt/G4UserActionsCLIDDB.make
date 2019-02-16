#-- start of make_header -----------------

#====================================
#  Document G4UserActionsCLIDDB
#
#   Generated Tue Jan 29 18:53:26 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_G4UserActionsCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_G4UserActionsCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_G4UserActionsCLIDDB

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsCLIDDB = $(G4UserActions_tag)_G4UserActionsCLIDDB.make
cmt_local_tagfile_G4UserActionsCLIDDB = $(bin)$(G4UserActions_tag)_G4UserActionsCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsCLIDDB = $(G4UserActions_tag).make
cmt_local_tagfile_G4UserActionsCLIDDB = $(bin)$(G4UserActions_tag).make

endif

include $(cmt_local_tagfile_G4UserActionsCLIDDB)
#-include $(cmt_local_tagfile_G4UserActionsCLIDDB)

ifdef cmt_G4UserActionsCLIDDB_has_target_tag

cmt_final_setup_G4UserActionsCLIDDB = $(bin)setup_G4UserActionsCLIDDB.make
cmt_dependencies_in_G4UserActionsCLIDDB = $(bin)dependencies_G4UserActionsCLIDDB.in
#cmt_final_setup_G4UserActionsCLIDDB = $(bin)G4UserActions_G4UserActionsCLIDDBsetup.make
cmt_local_G4UserActionsCLIDDB_makefile = $(bin)G4UserActionsCLIDDB.make

else

cmt_final_setup_G4UserActionsCLIDDB = $(bin)setup.make
cmt_dependencies_in_G4UserActionsCLIDDB = $(bin)dependencies.in
#cmt_final_setup_G4UserActionsCLIDDB = $(bin)G4UserActionssetup.make
cmt_local_G4UserActionsCLIDDB_makefile = $(bin)G4UserActionsCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)G4UserActionssetup.make

#G4UserActionsCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'G4UserActionsCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = G4UserActionsCLIDDB/
#G4UserActionsCLIDDB::
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

.PHONY: G4UserActionsCLIDDB G4UserActionsCLIDDBclean

outname := clid.db
cliddb  := G4UserActions_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)G4UserActions.$(shlibsuffix)

G4UserActionsCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p G4UserActions -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

G4UserActionsCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: G4UserActionsCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(G4UserActionsCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

G4UserActionsCLIDDBclean ::
#-- end of cleanup_header ---------------
