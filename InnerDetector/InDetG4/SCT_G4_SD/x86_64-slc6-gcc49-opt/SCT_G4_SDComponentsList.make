#-- start of make_header -----------------

#====================================
#  Document SCT_G4_SDComponentsList
#
#   Generated Tue Jan 29 18:51:51 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_G4_SDComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_G4_SDComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_G4_SDComponentsList

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDComponentsList = $(SCT_G4_SD_tag)_SCT_G4_SDComponentsList.make
cmt_local_tagfile_SCT_G4_SDComponentsList = $(bin)$(SCT_G4_SD_tag)_SCT_G4_SDComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SDComponentsList = $(SCT_G4_SD_tag).make
cmt_local_tagfile_SCT_G4_SDComponentsList = $(bin)$(SCT_G4_SD_tag).make

endif

include $(cmt_local_tagfile_SCT_G4_SDComponentsList)
#-include $(cmt_local_tagfile_SCT_G4_SDComponentsList)

ifdef cmt_SCT_G4_SDComponentsList_has_target_tag

cmt_final_setup_SCT_G4_SDComponentsList = $(bin)setup_SCT_G4_SDComponentsList.make
cmt_dependencies_in_SCT_G4_SDComponentsList = $(bin)dependencies_SCT_G4_SDComponentsList.in
#cmt_final_setup_SCT_G4_SDComponentsList = $(bin)SCT_G4_SD_SCT_G4_SDComponentsListsetup.make
cmt_local_SCT_G4_SDComponentsList_makefile = $(bin)SCT_G4_SDComponentsList.make

else

cmt_final_setup_SCT_G4_SDComponentsList = $(bin)setup.make
cmt_dependencies_in_SCT_G4_SDComponentsList = $(bin)dependencies.in
#cmt_final_setup_SCT_G4_SDComponentsList = $(bin)SCT_G4_SDsetup.make
cmt_local_SCT_G4_SDComponentsList_makefile = $(bin)SCT_G4_SDComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_G4_SDsetup.make

#SCT_G4_SDComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_G4_SDComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_G4_SDComponentsList/
#SCT_G4_SDComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = SCT_G4_SD.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libSCT_G4_SD.$(shlibsuffix)

SCT_G4_SDComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: SCT_G4_SDComponentsListinstall
SCT_G4_SDComponentsListinstall :: SCT_G4_SDComponentsList

uninstall :: SCT_G4_SDComponentsListuninstall
SCT_G4_SDComponentsListuninstall :: SCT_G4_SDComponentsListclean

SCT_G4_SDComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: SCT_G4_SDComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_G4_SDComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_G4_SDComponentsListclean ::
#-- end of cleanup_header ---------------
