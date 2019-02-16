#-- start of make_header -----------------

#====================================
#  Document PixelDigitizationCLIDDB
#
#   Generated Tue Jan 29 19:13:45 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelDigitizationCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelDigitizationCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelDigitizationCLIDDB

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationCLIDDB = $(PixelDigitization_tag)_PixelDigitizationCLIDDB.make
cmt_local_tagfile_PixelDigitizationCLIDDB = $(bin)$(PixelDigitization_tag)_PixelDigitizationCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationCLIDDB = $(PixelDigitization_tag).make
cmt_local_tagfile_PixelDigitizationCLIDDB = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_PixelDigitizationCLIDDB)
#-include $(cmt_local_tagfile_PixelDigitizationCLIDDB)

ifdef cmt_PixelDigitizationCLIDDB_has_target_tag

cmt_final_setup_PixelDigitizationCLIDDB = $(bin)setup_PixelDigitizationCLIDDB.make
cmt_dependencies_in_PixelDigitizationCLIDDB = $(bin)dependencies_PixelDigitizationCLIDDB.in
#cmt_final_setup_PixelDigitizationCLIDDB = $(bin)PixelDigitization_PixelDigitizationCLIDDBsetup.make
cmt_local_PixelDigitizationCLIDDB_makefile = $(bin)PixelDigitizationCLIDDB.make

else

cmt_final_setup_PixelDigitizationCLIDDB = $(bin)setup.make
cmt_dependencies_in_PixelDigitizationCLIDDB = $(bin)dependencies.in
#cmt_final_setup_PixelDigitizationCLIDDB = $(bin)PixelDigitizationsetup.make
cmt_local_PixelDigitizationCLIDDB_makefile = $(bin)PixelDigitizationCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#PixelDigitizationCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelDigitizationCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelDigitizationCLIDDB/
#PixelDigitizationCLIDDB::
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

.PHONY: PixelDigitizationCLIDDB PixelDigitizationCLIDDBclean

outname := clid.db
cliddb  := PixelDigitization_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)PixelDigitization.$(shlibsuffix)

PixelDigitizationCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p PixelDigitization -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

PixelDigitizationCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: PixelDigitizationCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelDigitizationCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelDigitizationCLIDDBclean ::
#-- end of cleanup_header ---------------
