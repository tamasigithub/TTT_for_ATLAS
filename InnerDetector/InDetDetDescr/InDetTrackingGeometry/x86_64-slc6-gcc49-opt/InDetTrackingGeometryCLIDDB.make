#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryCLIDDB
#
#   Generated Tue Jan 29 18:57:38 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryCLIDDB

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryCLIDDB = $(InDetTrackingGeometry_tag)_InDetTrackingGeometryCLIDDB.make
cmt_local_tagfile_InDetTrackingGeometryCLIDDB = $(bin)$(InDetTrackingGeometry_tag)_InDetTrackingGeometryCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryCLIDDB = $(InDetTrackingGeometry_tag).make
cmt_local_tagfile_InDetTrackingGeometryCLIDDB = $(bin)$(InDetTrackingGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryCLIDDB)
#-include $(cmt_local_tagfile_InDetTrackingGeometryCLIDDB)

ifdef cmt_InDetTrackingGeometryCLIDDB_has_target_tag

cmt_final_setup_InDetTrackingGeometryCLIDDB = $(bin)setup_InDetTrackingGeometryCLIDDB.make
cmt_dependencies_in_InDetTrackingGeometryCLIDDB = $(bin)dependencies_InDetTrackingGeometryCLIDDB.in
#cmt_final_setup_InDetTrackingGeometryCLIDDB = $(bin)InDetTrackingGeometry_InDetTrackingGeometryCLIDDBsetup.make
cmt_local_InDetTrackingGeometryCLIDDB_makefile = $(bin)InDetTrackingGeometryCLIDDB.make

else

cmt_final_setup_InDetTrackingGeometryCLIDDB = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryCLIDDB = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryCLIDDB = $(bin)InDetTrackingGeometrysetup.make
cmt_local_InDetTrackingGeometryCLIDDB_makefile = $(bin)InDetTrackingGeometryCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometrysetup.make

#InDetTrackingGeometryCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryCLIDDB/
#InDetTrackingGeometryCLIDDB::
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

.PHONY: InDetTrackingGeometryCLIDDB InDetTrackingGeometryCLIDDBclean

outname := clid.db
cliddb  := InDetTrackingGeometry_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)InDetTrackingGeometry.$(shlibsuffix)

InDetTrackingGeometryCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p InDetTrackingGeometry -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

InDetTrackingGeometryCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryCLIDDBclean ::
#-- end of cleanup_header ---------------
