#-- start of make_header -----------------

#====================================
#  Document TripletTrackFinderCLIDDB
#
#   Generated Thu Feb 14 18:23:45 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TripletTrackFinderCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TripletTrackFinderCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TripletTrackFinderCLIDDB

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderCLIDDB = $(TripletTrackFinder_tag)_TripletTrackFinderCLIDDB.make
cmt_local_tagfile_TripletTrackFinderCLIDDB = $(bin)$(TripletTrackFinder_tag)_TripletTrackFinderCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderCLIDDB = $(TripletTrackFinder_tag).make
cmt_local_tagfile_TripletTrackFinderCLIDDB = $(bin)$(TripletTrackFinder_tag).make

endif

include $(cmt_local_tagfile_TripletTrackFinderCLIDDB)
#-include $(cmt_local_tagfile_TripletTrackFinderCLIDDB)

ifdef cmt_TripletTrackFinderCLIDDB_has_target_tag

cmt_final_setup_TripletTrackFinderCLIDDB = $(bin)setup_TripletTrackFinderCLIDDB.make
cmt_dependencies_in_TripletTrackFinderCLIDDB = $(bin)dependencies_TripletTrackFinderCLIDDB.in
#cmt_final_setup_TripletTrackFinderCLIDDB = $(bin)TripletTrackFinder_TripletTrackFinderCLIDDBsetup.make
cmt_local_TripletTrackFinderCLIDDB_makefile = $(bin)TripletTrackFinderCLIDDB.make

else

cmt_final_setup_TripletTrackFinderCLIDDB = $(bin)setup.make
cmt_dependencies_in_TripletTrackFinderCLIDDB = $(bin)dependencies.in
#cmt_final_setup_TripletTrackFinderCLIDDB = $(bin)TripletTrackFindersetup.make
cmt_local_TripletTrackFinderCLIDDB_makefile = $(bin)TripletTrackFinderCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TripletTrackFindersetup.make

#TripletTrackFinderCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TripletTrackFinderCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TripletTrackFinderCLIDDB/
#TripletTrackFinderCLIDDB::
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

.PHONY: TripletTrackFinderCLIDDB TripletTrackFinderCLIDDBclean

outname := clid.db
cliddb  := TripletTrackFinder_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)TripletTrackFinder.$(shlibsuffix)

TripletTrackFinderCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p TripletTrackFinder -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

TripletTrackFinderCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: TripletTrackFinderCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TripletTrackFinderCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TripletTrackFinderCLIDDBclean ::
#-- end of cleanup_header ---------------
