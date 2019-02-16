#-- start of make_header -----------------

#====================================
#  Document FastSiDigitizationComponentsList
#
#   Generated Tue Jan 29 19:11:45 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_FastSiDigitizationComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_FastSiDigitizationComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_FastSiDigitizationComponentsList

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationComponentsList = $(FastSiDigitization_tag)_FastSiDigitizationComponentsList.make
cmt_local_tagfile_FastSiDigitizationComponentsList = $(bin)$(FastSiDigitization_tag)_FastSiDigitizationComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitizationComponentsList = $(FastSiDigitization_tag).make
cmt_local_tagfile_FastSiDigitizationComponentsList = $(bin)$(FastSiDigitization_tag).make

endif

include $(cmt_local_tagfile_FastSiDigitizationComponentsList)
#-include $(cmt_local_tagfile_FastSiDigitizationComponentsList)

ifdef cmt_FastSiDigitizationComponentsList_has_target_tag

cmt_final_setup_FastSiDigitizationComponentsList = $(bin)setup_FastSiDigitizationComponentsList.make
cmt_dependencies_in_FastSiDigitizationComponentsList = $(bin)dependencies_FastSiDigitizationComponentsList.in
#cmt_final_setup_FastSiDigitizationComponentsList = $(bin)FastSiDigitization_FastSiDigitizationComponentsListsetup.make
cmt_local_FastSiDigitizationComponentsList_makefile = $(bin)FastSiDigitizationComponentsList.make

else

cmt_final_setup_FastSiDigitizationComponentsList = $(bin)setup.make
cmt_dependencies_in_FastSiDigitizationComponentsList = $(bin)dependencies.in
#cmt_final_setup_FastSiDigitizationComponentsList = $(bin)FastSiDigitizationsetup.make
cmt_local_FastSiDigitizationComponentsList_makefile = $(bin)FastSiDigitizationComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)FastSiDigitizationsetup.make

#FastSiDigitizationComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'FastSiDigitizationComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = FastSiDigitizationComponentsList/
#FastSiDigitizationComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = FastSiDigitization.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libFastSiDigitization.$(shlibsuffix)

FastSiDigitizationComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: FastSiDigitizationComponentsListinstall
FastSiDigitizationComponentsListinstall :: FastSiDigitizationComponentsList

uninstall :: FastSiDigitizationComponentsListuninstall
FastSiDigitizationComponentsListuninstall :: FastSiDigitizationComponentsListclean

FastSiDigitizationComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: FastSiDigitizationComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(FastSiDigitizationComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

FastSiDigitizationComponentsListclean ::
#-- end of cleanup_header ---------------
