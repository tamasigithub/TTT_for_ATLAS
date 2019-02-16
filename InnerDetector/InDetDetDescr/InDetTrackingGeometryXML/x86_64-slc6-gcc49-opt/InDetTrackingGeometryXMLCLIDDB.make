#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryXMLCLIDDB
#
#   Generated Tue Jan 29 18:51:10 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryXMLCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryXMLCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryXMLCLIDDB

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLCLIDDB = $(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLCLIDDB.make
cmt_local_tagfile_InDetTrackingGeometryXMLCLIDDB = $(bin)$(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLCLIDDB = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_InDetTrackingGeometryXMLCLIDDB = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryXMLCLIDDB)
#-include $(cmt_local_tagfile_InDetTrackingGeometryXMLCLIDDB)

ifdef cmt_InDetTrackingGeometryXMLCLIDDB_has_target_tag

cmt_final_setup_InDetTrackingGeometryXMLCLIDDB = $(bin)setup_InDetTrackingGeometryXMLCLIDDB.make
cmt_dependencies_in_InDetTrackingGeometryXMLCLIDDB = $(bin)dependencies_InDetTrackingGeometryXMLCLIDDB.in
#cmt_final_setup_InDetTrackingGeometryXMLCLIDDB = $(bin)InDetTrackingGeometryXML_InDetTrackingGeometryXMLCLIDDBsetup.make
cmt_local_InDetTrackingGeometryXMLCLIDDB_makefile = $(bin)InDetTrackingGeometryXMLCLIDDB.make

else

cmt_final_setup_InDetTrackingGeometryXMLCLIDDB = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryXMLCLIDDB = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryXMLCLIDDB = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXMLCLIDDB_makefile = $(bin)InDetTrackingGeometryXMLCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#InDetTrackingGeometryXMLCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryXMLCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryXMLCLIDDB/
#InDetTrackingGeometryXMLCLIDDB::
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

.PHONY: InDetTrackingGeometryXMLCLIDDB InDetTrackingGeometryXMLCLIDDBclean

outname := clid.db
cliddb  := InDetTrackingGeometryXML_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)InDetTrackingGeometryXML.$(shlibsuffix)

InDetTrackingGeometryXMLCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p InDetTrackingGeometryXML -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

InDetTrackingGeometryXMLCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryXMLCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryXMLCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryXMLCLIDDBclean ::
#-- end of cleanup_header ---------------
