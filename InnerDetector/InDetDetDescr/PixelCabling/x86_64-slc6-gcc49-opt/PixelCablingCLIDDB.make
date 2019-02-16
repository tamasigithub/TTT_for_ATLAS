#-- start of make_header -----------------

#====================================
#  Document PixelCablingCLIDDB
#
#   Generated Tue Jan 29 18:58:12 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelCablingCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelCablingCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelCablingCLIDDB

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingCLIDDB = $(PixelCabling_tag)_PixelCablingCLIDDB.make
cmt_local_tagfile_PixelCablingCLIDDB = $(bin)$(PixelCabling_tag)_PixelCablingCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingCLIDDB = $(PixelCabling_tag).make
cmt_local_tagfile_PixelCablingCLIDDB = $(bin)$(PixelCabling_tag).make

endif

include $(cmt_local_tagfile_PixelCablingCLIDDB)
#-include $(cmt_local_tagfile_PixelCablingCLIDDB)

ifdef cmt_PixelCablingCLIDDB_has_target_tag

cmt_final_setup_PixelCablingCLIDDB = $(bin)setup_PixelCablingCLIDDB.make
cmt_dependencies_in_PixelCablingCLIDDB = $(bin)dependencies_PixelCablingCLIDDB.in
#cmt_final_setup_PixelCablingCLIDDB = $(bin)PixelCabling_PixelCablingCLIDDBsetup.make
cmt_local_PixelCablingCLIDDB_makefile = $(bin)PixelCablingCLIDDB.make

else

cmt_final_setup_PixelCablingCLIDDB = $(bin)setup.make
cmt_dependencies_in_PixelCablingCLIDDB = $(bin)dependencies.in
#cmt_final_setup_PixelCablingCLIDDB = $(bin)PixelCablingsetup.make
cmt_local_PixelCablingCLIDDB_makefile = $(bin)PixelCablingCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelCablingsetup.make

#PixelCablingCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelCablingCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelCablingCLIDDB/
#PixelCablingCLIDDB::
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

.PHONY: PixelCablingCLIDDB PixelCablingCLIDDBclean

outname := clid.db
cliddb  := PixelCabling_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)PixelCabling.$(shlibsuffix)

PixelCablingCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p PixelCabling -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

PixelCablingCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: PixelCablingCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelCablingCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelCablingCLIDDBclean ::
#-- end of cleanup_header ---------------
