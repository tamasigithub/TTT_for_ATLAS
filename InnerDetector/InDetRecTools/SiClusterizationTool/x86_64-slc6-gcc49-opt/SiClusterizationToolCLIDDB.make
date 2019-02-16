#-- start of make_header -----------------

#====================================
#  Document SiClusterizationToolCLIDDB
#
#   Generated Tue Jan 29 19:06:00 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiClusterizationToolCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiClusterizationToolCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiClusterizationToolCLIDDB

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolCLIDDB = $(SiClusterizationTool_tag)_SiClusterizationToolCLIDDB.make
cmt_local_tagfile_SiClusterizationToolCLIDDB = $(bin)$(SiClusterizationTool_tag)_SiClusterizationToolCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolCLIDDB = $(SiClusterizationTool_tag).make
cmt_local_tagfile_SiClusterizationToolCLIDDB = $(bin)$(SiClusterizationTool_tag).make

endif

include $(cmt_local_tagfile_SiClusterizationToolCLIDDB)
#-include $(cmt_local_tagfile_SiClusterizationToolCLIDDB)

ifdef cmt_SiClusterizationToolCLIDDB_has_target_tag

cmt_final_setup_SiClusterizationToolCLIDDB = $(bin)setup_SiClusterizationToolCLIDDB.make
cmt_dependencies_in_SiClusterizationToolCLIDDB = $(bin)dependencies_SiClusterizationToolCLIDDB.in
#cmt_final_setup_SiClusterizationToolCLIDDB = $(bin)SiClusterizationTool_SiClusterizationToolCLIDDBsetup.make
cmt_local_SiClusterizationToolCLIDDB_makefile = $(bin)SiClusterizationToolCLIDDB.make

else

cmt_final_setup_SiClusterizationToolCLIDDB = $(bin)setup.make
cmt_dependencies_in_SiClusterizationToolCLIDDB = $(bin)dependencies.in
#cmt_final_setup_SiClusterizationToolCLIDDB = $(bin)SiClusterizationToolsetup.make
cmt_local_SiClusterizationToolCLIDDB_makefile = $(bin)SiClusterizationToolCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiClusterizationToolsetup.make

#SiClusterizationToolCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiClusterizationToolCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiClusterizationToolCLIDDB/
#SiClusterizationToolCLIDDB::
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

.PHONY: SiClusterizationToolCLIDDB SiClusterizationToolCLIDDBclean

outname := clid.db
cliddb  := SiClusterizationTool_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)SiClusterizationTool.$(shlibsuffix)

SiClusterizationToolCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p SiClusterizationTool -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

SiClusterizationToolCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: SiClusterizationToolCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiClusterizationToolCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiClusterizationToolCLIDDBclean ::
#-- end of cleanup_header ---------------
