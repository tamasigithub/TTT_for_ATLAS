#-- start of make_header -----------------

#====================================
#  Document FastSiDigitizationCLIDDB
#
#   Generated Tue Jan 29 19:11:42 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_FastSiDigitizationCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_FastSiDigitizationCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_FastSiDigitizationCLIDDB

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationCLIDDB = $(FastSiDigitization_tag)_FastSiDigitizationCLIDDB.make
cmt_local_tagfile_FastSiDigitizationCLIDDB = $(bin)$(FastSiDigitization_tag)_FastSiDigitizationCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationCLIDDB = $(FastSiDigitization_tag).make
cmt_local_tagfile_FastSiDigitizationCLIDDB = $(bin)$(FastSiDigitization_tag).make

endif

include $(cmt_local_tagfile_FastSiDigitizationCLIDDB)
#-include $(cmt_local_tagfile_FastSiDigitizationCLIDDB)

ifdef cmt_FastSiDigitizationCLIDDB_has_target_tag

cmt_final_setup_FastSiDigitizationCLIDDB = $(bin)setup_FastSiDigitizationCLIDDB.make
cmt_dependencies_in_FastSiDigitizationCLIDDB = $(bin)dependencies_FastSiDigitizationCLIDDB.in
#cmt_final_setup_FastSiDigitizationCLIDDB = $(bin)FastSiDigitization_FastSiDigitizationCLIDDBsetup.make
cmt_local_FastSiDigitizationCLIDDB_makefile = $(bin)FastSiDigitizationCLIDDB.make

else

cmt_final_setup_FastSiDigitizationCLIDDB = $(bin)setup.make
cmt_dependencies_in_FastSiDigitizationCLIDDB = $(bin)dependencies.in
#cmt_final_setup_FastSiDigitizationCLIDDB = $(bin)FastSiDigitizationsetup.make
cmt_local_FastSiDigitizationCLIDDB_makefile = $(bin)FastSiDigitizationCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)FastSiDigitizationsetup.make

#FastSiDigitizationCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'FastSiDigitizationCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = FastSiDigitizationCLIDDB/
#FastSiDigitizationCLIDDB::
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

.PHONY: FastSiDigitizationCLIDDB FastSiDigitizationCLIDDBclean

outname := clid.db
cliddb  := FastSiDigitization_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)FastSiDigitization.$(shlibsuffix)

FastSiDigitizationCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p FastSiDigitization -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

FastSiDigitizationCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: FastSiDigitizationCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(FastSiDigitizationCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

FastSiDigitizationCLIDDBclean ::
#-- end of cleanup_header ---------------
