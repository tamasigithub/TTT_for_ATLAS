#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryXMLComponentsList
#
#   Generated Tue Jan 29 18:51:13 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryXMLComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryXMLComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryXMLComponentsList

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLComponentsList = $(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLComponentsList.make
cmt_local_tagfile_InDetTrackingGeometryXMLComponentsList = $(bin)$(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXMLComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXMLComponentsList = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_InDetTrackingGeometryXMLComponentsList = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryXMLComponentsList)
#-include $(cmt_local_tagfile_InDetTrackingGeometryXMLComponentsList)

ifdef cmt_InDetTrackingGeometryXMLComponentsList_has_target_tag

cmt_final_setup_InDetTrackingGeometryXMLComponentsList = $(bin)setup_InDetTrackingGeometryXMLComponentsList.make
cmt_dependencies_in_InDetTrackingGeometryXMLComponentsList = $(bin)dependencies_InDetTrackingGeometryXMLComponentsList.in
#cmt_final_setup_InDetTrackingGeometryXMLComponentsList = $(bin)InDetTrackingGeometryXML_InDetTrackingGeometryXMLComponentsListsetup.make
cmt_local_InDetTrackingGeometryXMLComponentsList_makefile = $(bin)InDetTrackingGeometryXMLComponentsList.make

else

cmt_final_setup_InDetTrackingGeometryXMLComponentsList = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryXMLComponentsList = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryXMLComponentsList = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXMLComponentsList_makefile = $(bin)InDetTrackingGeometryXMLComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#InDetTrackingGeometryXMLComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryXMLComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryXMLComponentsList/
#InDetTrackingGeometryXMLComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = InDetTrackingGeometryXML.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libInDetTrackingGeometryXML.$(shlibsuffix)

InDetTrackingGeometryXMLComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: InDetTrackingGeometryXMLComponentsListinstall
InDetTrackingGeometryXMLComponentsListinstall :: InDetTrackingGeometryXMLComponentsList

uninstall :: InDetTrackingGeometryXMLComponentsListuninstall
InDetTrackingGeometryXMLComponentsListuninstall :: InDetTrackingGeometryXMLComponentsListclean

InDetTrackingGeometryXMLComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryXMLComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryXMLComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryXMLComponentsListclean ::
#-- end of cleanup_header ---------------
