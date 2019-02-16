#-- start of make_header -----------------

#====================================
#  Document PixelDigitizationComponentsList
#
#   Generated Tue Jan 29 19:13:50 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelDigitizationComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelDigitizationComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelDigitizationComponentsList

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationComponentsList = $(PixelDigitization_tag)_PixelDigitizationComponentsList.make
cmt_local_tagfile_PixelDigitizationComponentsList = $(bin)$(PixelDigitization_tag)_PixelDigitizationComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitizationComponentsList = $(PixelDigitization_tag).make
cmt_local_tagfile_PixelDigitizationComponentsList = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_PixelDigitizationComponentsList)
#-include $(cmt_local_tagfile_PixelDigitizationComponentsList)

ifdef cmt_PixelDigitizationComponentsList_has_target_tag

cmt_final_setup_PixelDigitizationComponentsList = $(bin)setup_PixelDigitizationComponentsList.make
cmt_dependencies_in_PixelDigitizationComponentsList = $(bin)dependencies_PixelDigitizationComponentsList.in
#cmt_final_setup_PixelDigitizationComponentsList = $(bin)PixelDigitization_PixelDigitizationComponentsListsetup.make
cmt_local_PixelDigitizationComponentsList_makefile = $(bin)PixelDigitizationComponentsList.make

else

cmt_final_setup_PixelDigitizationComponentsList = $(bin)setup.make
cmt_dependencies_in_PixelDigitizationComponentsList = $(bin)dependencies.in
#cmt_final_setup_PixelDigitizationComponentsList = $(bin)PixelDigitizationsetup.make
cmt_local_PixelDigitizationComponentsList_makefile = $(bin)PixelDigitizationComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#PixelDigitizationComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelDigitizationComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelDigitizationComponentsList/
#PixelDigitizationComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = PixelDigitization.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libPixelDigitization.$(shlibsuffix)

PixelDigitizationComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: PixelDigitizationComponentsListinstall
PixelDigitizationComponentsListinstall :: PixelDigitizationComponentsList

uninstall :: PixelDigitizationComponentsListuninstall
PixelDigitizationComponentsListuninstall :: PixelDigitizationComponentsListclean

PixelDigitizationComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: PixelDigitizationComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelDigitizationComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelDigitizationComponentsListclean ::
#-- end of cleanup_header ---------------
