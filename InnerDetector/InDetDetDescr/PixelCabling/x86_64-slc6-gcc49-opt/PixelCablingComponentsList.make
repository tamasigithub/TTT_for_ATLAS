#-- start of make_header -----------------

#====================================
#  Document PixelCablingComponentsList
#
#   Generated Tue Jan 29 18:58:13 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_PixelCablingComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelCablingComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelCablingComponentsList

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingComponentsList = $(PixelCabling_tag)_PixelCablingComponentsList.make
cmt_local_tagfile_PixelCablingComponentsList = $(bin)$(PixelCabling_tag)_PixelCablingComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCablingComponentsList = $(PixelCabling_tag).make
cmt_local_tagfile_PixelCablingComponentsList = $(bin)$(PixelCabling_tag).make

endif

include $(cmt_local_tagfile_PixelCablingComponentsList)
#-include $(cmt_local_tagfile_PixelCablingComponentsList)

ifdef cmt_PixelCablingComponentsList_has_target_tag

cmt_final_setup_PixelCablingComponentsList = $(bin)setup_PixelCablingComponentsList.make
cmt_dependencies_in_PixelCablingComponentsList = $(bin)dependencies_PixelCablingComponentsList.in
#cmt_final_setup_PixelCablingComponentsList = $(bin)PixelCabling_PixelCablingComponentsListsetup.make
cmt_local_PixelCablingComponentsList_makefile = $(bin)PixelCablingComponentsList.make

else

cmt_final_setup_PixelCablingComponentsList = $(bin)setup.make
cmt_dependencies_in_PixelCablingComponentsList = $(bin)dependencies.in
#cmt_final_setup_PixelCablingComponentsList = $(bin)PixelCablingsetup.make
cmt_local_PixelCablingComponentsList_makefile = $(bin)PixelCablingComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelCablingsetup.make

#PixelCablingComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelCablingComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelCablingComponentsList/
#PixelCablingComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = PixelCabling.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libPixelCabling.$(shlibsuffix)

PixelCablingComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: PixelCablingComponentsListinstall
PixelCablingComponentsListinstall :: PixelCablingComponentsList

uninstall :: PixelCablingComponentsListuninstall
PixelCablingComponentsListuninstall :: PixelCablingComponentsListclean

PixelCablingComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: PixelCablingComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelCablingComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelCablingComponentsListclean ::
#-- end of cleanup_header ---------------
