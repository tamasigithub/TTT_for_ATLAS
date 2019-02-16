#-- start of make_header -----------------

#====================================
#  Document SiHitAnalysisComponentsList
#
#   Generated Tue Jan 29 18:44:37 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiHitAnalysisComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiHitAnalysisComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiHitAnalysisComponentsList

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisComponentsList = $(SiHitAnalysis_tag)_SiHitAnalysisComponentsList.make
cmt_local_tagfile_SiHitAnalysisComponentsList = $(bin)$(SiHitAnalysis_tag)_SiHitAnalysisComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysisComponentsList = $(SiHitAnalysis_tag).make
cmt_local_tagfile_SiHitAnalysisComponentsList = $(bin)$(SiHitAnalysis_tag).make

endif

include $(cmt_local_tagfile_SiHitAnalysisComponentsList)
#-include $(cmt_local_tagfile_SiHitAnalysisComponentsList)

ifdef cmt_SiHitAnalysisComponentsList_has_target_tag

cmt_final_setup_SiHitAnalysisComponentsList = $(bin)setup_SiHitAnalysisComponentsList.make
cmt_dependencies_in_SiHitAnalysisComponentsList = $(bin)dependencies_SiHitAnalysisComponentsList.in
#cmt_final_setup_SiHitAnalysisComponentsList = $(bin)SiHitAnalysis_SiHitAnalysisComponentsListsetup.make
cmt_local_SiHitAnalysisComponentsList_makefile = $(bin)SiHitAnalysisComponentsList.make

else

cmt_final_setup_SiHitAnalysisComponentsList = $(bin)setup.make
cmt_dependencies_in_SiHitAnalysisComponentsList = $(bin)dependencies.in
#cmt_final_setup_SiHitAnalysisComponentsList = $(bin)SiHitAnalysissetup.make
cmt_local_SiHitAnalysisComponentsList_makefile = $(bin)SiHitAnalysisComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiHitAnalysissetup.make

#SiHitAnalysisComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiHitAnalysisComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiHitAnalysisComponentsList/
#SiHitAnalysisComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = SiHitAnalysis.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libSiHitAnalysis.$(shlibsuffix)

SiHitAnalysisComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: SiHitAnalysisComponentsListinstall
SiHitAnalysisComponentsListinstall :: SiHitAnalysisComponentsList

uninstall :: SiHitAnalysisComponentsListuninstall
SiHitAnalysisComponentsListuninstall :: SiHitAnalysisComponentsListclean

SiHitAnalysisComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: SiHitAnalysisComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiHitAnalysisComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiHitAnalysisComponentsListclean ::
#-- end of cleanup_header ---------------
