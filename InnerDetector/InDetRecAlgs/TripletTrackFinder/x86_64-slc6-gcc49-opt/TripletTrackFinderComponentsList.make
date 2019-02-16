#-- start of make_header -----------------

#====================================
#  Document TripletTrackFinderComponentsList
#
#   Generated Thu Feb 14 18:23:47 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TripletTrackFinderComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TripletTrackFinderComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TripletTrackFinderComponentsList

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderComponentsList = $(TripletTrackFinder_tag)_TripletTrackFinderComponentsList.make
cmt_local_tagfile_TripletTrackFinderComponentsList = $(bin)$(TripletTrackFinder_tag)_TripletTrackFinderComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinderComponentsList = $(TripletTrackFinder_tag).make
cmt_local_tagfile_TripletTrackFinderComponentsList = $(bin)$(TripletTrackFinder_tag).make

endif

include $(cmt_local_tagfile_TripletTrackFinderComponentsList)
#-include $(cmt_local_tagfile_TripletTrackFinderComponentsList)

ifdef cmt_TripletTrackFinderComponentsList_has_target_tag

cmt_final_setup_TripletTrackFinderComponentsList = $(bin)setup_TripletTrackFinderComponentsList.make
cmt_dependencies_in_TripletTrackFinderComponentsList = $(bin)dependencies_TripletTrackFinderComponentsList.in
#cmt_final_setup_TripletTrackFinderComponentsList = $(bin)TripletTrackFinder_TripletTrackFinderComponentsListsetup.make
cmt_local_TripletTrackFinderComponentsList_makefile = $(bin)TripletTrackFinderComponentsList.make

else

cmt_final_setup_TripletTrackFinderComponentsList = $(bin)setup.make
cmt_dependencies_in_TripletTrackFinderComponentsList = $(bin)dependencies.in
#cmt_final_setup_TripletTrackFinderComponentsList = $(bin)TripletTrackFindersetup.make
cmt_local_TripletTrackFinderComponentsList_makefile = $(bin)TripletTrackFinderComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TripletTrackFindersetup.make

#TripletTrackFinderComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TripletTrackFinderComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TripletTrackFinderComponentsList/
#TripletTrackFinderComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = TripletTrackFinder.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libTripletTrackFinder.$(shlibsuffix)

TripletTrackFinderComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: TripletTrackFinderComponentsListinstall
TripletTrackFinderComponentsListinstall :: TripletTrackFinderComponentsList

uninstall :: TripletTrackFinderComponentsListuninstall
TripletTrackFinderComponentsListuninstall :: TripletTrackFinderComponentsListclean

TripletTrackFinderComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: TripletTrackFinderComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TripletTrackFinderComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TripletTrackFinderComponentsListclean ::
#-- end of cleanup_header ---------------
