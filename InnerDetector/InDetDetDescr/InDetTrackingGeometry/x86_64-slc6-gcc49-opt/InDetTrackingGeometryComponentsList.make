#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryComponentsList
#
#   Generated Tue Jan 29 18:57:42 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryComponentsList

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryComponentsList = $(InDetTrackingGeometry_tag)_InDetTrackingGeometryComponentsList.make
cmt_local_tagfile_InDetTrackingGeometryComponentsList = $(bin)$(InDetTrackingGeometry_tag)_InDetTrackingGeometryComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryComponentsList = $(InDetTrackingGeometry_tag).make
cmt_local_tagfile_InDetTrackingGeometryComponentsList = $(bin)$(InDetTrackingGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryComponentsList)
#-include $(cmt_local_tagfile_InDetTrackingGeometryComponentsList)

ifdef cmt_InDetTrackingGeometryComponentsList_has_target_tag

cmt_final_setup_InDetTrackingGeometryComponentsList = $(bin)setup_InDetTrackingGeometryComponentsList.make
cmt_dependencies_in_InDetTrackingGeometryComponentsList = $(bin)dependencies_InDetTrackingGeometryComponentsList.in
#cmt_final_setup_InDetTrackingGeometryComponentsList = $(bin)InDetTrackingGeometry_InDetTrackingGeometryComponentsListsetup.make
cmt_local_InDetTrackingGeometryComponentsList_makefile = $(bin)InDetTrackingGeometryComponentsList.make

else

cmt_final_setup_InDetTrackingGeometryComponentsList = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryComponentsList = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryComponentsList = $(bin)InDetTrackingGeometrysetup.make
cmt_local_InDetTrackingGeometryComponentsList_makefile = $(bin)InDetTrackingGeometryComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometrysetup.make

#InDetTrackingGeometryComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryComponentsList/
#InDetTrackingGeometryComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = InDetTrackingGeometry.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libInDetTrackingGeometry.$(shlibsuffix)

InDetTrackingGeometryComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: InDetTrackingGeometryComponentsListinstall
InDetTrackingGeometryComponentsListinstall :: InDetTrackingGeometryComponentsList

uninstall :: InDetTrackingGeometryComponentsListuninstall
InDetTrackingGeometryComponentsListuninstall :: InDetTrackingGeometryComponentsListclean

InDetTrackingGeometryComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryComponentsListclean ::
#-- end of cleanup_header ---------------
