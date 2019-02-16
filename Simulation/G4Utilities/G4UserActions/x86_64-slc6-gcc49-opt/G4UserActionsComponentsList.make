#-- start of make_header -----------------

#====================================
#  Document G4UserActionsComponentsList
#
#   Generated Tue Jan 29 18:53:28 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_G4UserActionsComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_G4UserActionsComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_G4UserActionsComponentsList

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsComponentsList = $(G4UserActions_tag)_G4UserActionsComponentsList.make
cmt_local_tagfile_G4UserActionsComponentsList = $(bin)$(G4UserActions_tag)_G4UserActionsComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActionsComponentsList = $(G4UserActions_tag).make
cmt_local_tagfile_G4UserActionsComponentsList = $(bin)$(G4UserActions_tag).make

endif

include $(cmt_local_tagfile_G4UserActionsComponentsList)
#-include $(cmt_local_tagfile_G4UserActionsComponentsList)

ifdef cmt_G4UserActionsComponentsList_has_target_tag

cmt_final_setup_G4UserActionsComponentsList = $(bin)setup_G4UserActionsComponentsList.make
cmt_dependencies_in_G4UserActionsComponentsList = $(bin)dependencies_G4UserActionsComponentsList.in
#cmt_final_setup_G4UserActionsComponentsList = $(bin)G4UserActions_G4UserActionsComponentsListsetup.make
cmt_local_G4UserActionsComponentsList_makefile = $(bin)G4UserActionsComponentsList.make

else

cmt_final_setup_G4UserActionsComponentsList = $(bin)setup.make
cmt_dependencies_in_G4UserActionsComponentsList = $(bin)dependencies.in
#cmt_final_setup_G4UserActionsComponentsList = $(bin)G4UserActionssetup.make
cmt_local_G4UserActionsComponentsList_makefile = $(bin)G4UserActionsComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)G4UserActionssetup.make

#G4UserActionsComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'G4UserActionsComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = G4UserActionsComponentsList/
#G4UserActionsComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = G4UserActions.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libG4UserActions.$(shlibsuffix)

G4UserActionsComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: G4UserActionsComponentsListinstall
G4UserActionsComponentsListinstall :: G4UserActionsComponentsList

uninstall :: G4UserActionsComponentsListuninstall
G4UserActionsComponentsListuninstall :: G4UserActionsComponentsListclean

G4UserActionsComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: G4UserActionsComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(G4UserActionsComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

G4UserActionsComponentsListclean ::
#-- end of cleanup_header ---------------
