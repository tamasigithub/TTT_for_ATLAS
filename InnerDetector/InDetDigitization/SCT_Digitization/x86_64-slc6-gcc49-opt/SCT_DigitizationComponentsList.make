#-- start of make_header -----------------

#====================================
#  Document SCT_DigitizationComponentsList
#
#   Generated Tue Jan 29 19:04:14 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_DigitizationComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_DigitizationComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_DigitizationComponentsList

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationComponentsList = $(SCT_Digitization_tag)_SCT_DigitizationComponentsList.make
cmt_local_tagfile_SCT_DigitizationComponentsList = $(bin)$(SCT_Digitization_tag)_SCT_DigitizationComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_DigitizationComponentsList = $(SCT_Digitization_tag).make
cmt_local_tagfile_SCT_DigitizationComponentsList = $(bin)$(SCT_Digitization_tag).make

endif

include $(cmt_local_tagfile_SCT_DigitizationComponentsList)
#-include $(cmt_local_tagfile_SCT_DigitizationComponentsList)

ifdef cmt_SCT_DigitizationComponentsList_has_target_tag

cmt_final_setup_SCT_DigitizationComponentsList = $(bin)setup_SCT_DigitizationComponentsList.make
cmt_dependencies_in_SCT_DigitizationComponentsList = $(bin)dependencies_SCT_DigitizationComponentsList.in
#cmt_final_setup_SCT_DigitizationComponentsList = $(bin)SCT_Digitization_SCT_DigitizationComponentsListsetup.make
cmt_local_SCT_DigitizationComponentsList_makefile = $(bin)SCT_DigitizationComponentsList.make

else

cmt_final_setup_SCT_DigitizationComponentsList = $(bin)setup.make
cmt_dependencies_in_SCT_DigitizationComponentsList = $(bin)dependencies.in
#cmt_final_setup_SCT_DigitizationComponentsList = $(bin)SCT_Digitizationsetup.make
cmt_local_SCT_DigitizationComponentsList_makefile = $(bin)SCT_DigitizationComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Digitizationsetup.make

#SCT_DigitizationComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_DigitizationComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_DigitizationComponentsList/
#SCT_DigitizationComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = SCT_Digitization.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libSCT_Digitization.$(shlibsuffix)

SCT_DigitizationComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: SCT_DigitizationComponentsListinstall
SCT_DigitizationComponentsListinstall :: SCT_DigitizationComponentsList

uninstall :: SCT_DigitizationComponentsListuninstall
SCT_DigitizationComponentsListuninstall :: SCT_DigitizationComponentsListclean

SCT_DigitizationComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: SCT_DigitizationComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_DigitizationComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_DigitizationComponentsListclean ::
#-- end of cleanup_header ---------------
