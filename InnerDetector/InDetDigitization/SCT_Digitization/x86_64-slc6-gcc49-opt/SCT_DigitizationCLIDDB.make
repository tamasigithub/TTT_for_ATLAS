#-- start of make_header -----------------

#====================================
#  Document SCT_DigitizationCLIDDB
#
#   Generated Tue Jan 29 19:04:12 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_DigitizationCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_DigitizationCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_DigitizationCLIDDB

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationCLIDDB = $(SCT_Digitization_tag)_SCT_DigitizationCLIDDB.make
cmt_local_tagfile_SCT_DigitizationCLIDDB = $(bin)$(SCT_Digitization_tag)_SCT_DigitizationCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationCLIDDB = $(SCT_Digitization_tag).make
cmt_local_tagfile_SCT_DigitizationCLIDDB = $(bin)$(SCT_Digitization_tag).make

endif

include $(cmt_local_tagfile_SCT_DigitizationCLIDDB)
#-include $(cmt_local_tagfile_SCT_DigitizationCLIDDB)

ifdef cmt_SCT_DigitizationCLIDDB_has_target_tag

cmt_final_setup_SCT_DigitizationCLIDDB = $(bin)setup_SCT_DigitizationCLIDDB.make
cmt_dependencies_in_SCT_DigitizationCLIDDB = $(bin)dependencies_SCT_DigitizationCLIDDB.in
#cmt_final_setup_SCT_DigitizationCLIDDB = $(bin)SCT_Digitization_SCT_DigitizationCLIDDBsetup.make
cmt_local_SCT_DigitizationCLIDDB_makefile = $(bin)SCT_DigitizationCLIDDB.make

else

cmt_final_setup_SCT_DigitizationCLIDDB = $(bin)setup.make
cmt_dependencies_in_SCT_DigitizationCLIDDB = $(bin)dependencies.in
#cmt_final_setup_SCT_DigitizationCLIDDB = $(bin)SCT_Digitizationsetup.make
cmt_local_SCT_DigitizationCLIDDB_makefile = $(bin)SCT_DigitizationCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Digitizationsetup.make

#SCT_DigitizationCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_DigitizationCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_DigitizationCLIDDB/
#SCT_DigitizationCLIDDB::
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

.PHONY: SCT_DigitizationCLIDDB SCT_DigitizationCLIDDBclean

outname := clid.db
cliddb  := SCT_Digitization_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)SCT_Digitization.$(shlibsuffix)

SCT_DigitizationCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p SCT_Digitization -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

SCT_DigitizationCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: SCT_DigitizationCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_DigitizationCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_DigitizationCLIDDBclean ::
#-- end of cleanup_header ---------------
