#-- start of make_header -----------------

#====================================
#  Document SiClusterizationToolComponentsList
#
#   Generated Tue Jan 29 19:06:04 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiClusterizationToolComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiClusterizationToolComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiClusterizationToolComponentsList

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolComponentsList = $(SiClusterizationTool_tag)_SiClusterizationToolComponentsList.make
cmt_local_tagfile_SiClusterizationToolComponentsList = $(bin)$(SiClusterizationTool_tag)_SiClusterizationToolComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolComponentsList = $(SiClusterizationTool_tag).make
cmt_local_tagfile_SiClusterizationToolComponentsList = $(bin)$(SiClusterizationTool_tag).make

endif

include $(cmt_local_tagfile_SiClusterizationToolComponentsList)
#-include $(cmt_local_tagfile_SiClusterizationToolComponentsList)

ifdef cmt_SiClusterizationToolComponentsList_has_target_tag

cmt_final_setup_SiClusterizationToolComponentsList = $(bin)setup_SiClusterizationToolComponentsList.make
cmt_dependencies_in_SiClusterizationToolComponentsList = $(bin)dependencies_SiClusterizationToolComponentsList.in
#cmt_final_setup_SiClusterizationToolComponentsList = $(bin)SiClusterizationTool_SiClusterizationToolComponentsListsetup.make
cmt_local_SiClusterizationToolComponentsList_makefile = $(bin)SiClusterizationToolComponentsList.make

else

cmt_final_setup_SiClusterizationToolComponentsList = $(bin)setup.make
cmt_dependencies_in_SiClusterizationToolComponentsList = $(bin)dependencies.in
#cmt_final_setup_SiClusterizationToolComponentsList = $(bin)SiClusterizationToolsetup.make
cmt_local_SiClusterizationToolComponentsList_makefile = $(bin)SiClusterizationToolComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiClusterizationToolsetup.make

#SiClusterizationToolComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiClusterizationToolComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiClusterizationToolComponentsList/
#SiClusterizationToolComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = SiClusterizationTool.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libSiClusterizationTool.$(shlibsuffix)

SiClusterizationToolComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: SiClusterizationToolComponentsListinstall
SiClusterizationToolComponentsListinstall :: SiClusterizationToolComponentsList

uninstall :: SiClusterizationToolComponentsListuninstall
SiClusterizationToolComponentsListuninstall :: SiClusterizationToolComponentsListclean

SiClusterizationToolComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: SiClusterizationToolComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiClusterizationToolComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiClusterizationToolComponentsListclean ::
#-- end of cleanup_header ---------------
