#-- start of make_header -----------------

#====================================
#  Document Digitization_validateXML
#
#   Generated Tue Jan 29 18:58:18 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_Digitization_validateXML_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_Digitization_validateXML_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_Digitization_validateXML

Digitization_tag = $(tag)

#cmt_local_tagfile_Digitization_validateXML = $(Digitization_tag)_Digitization_validateXML.make
cmt_local_tagfile_Digitization_validateXML = $(bin)$(Digitization_tag)_Digitization_validateXML.make

else

tags      = $(tag),$(CMTEXTRATAGS)

Digitization_tag = $(tag)

#cmt_local_tagfile_Digitization_validateXML = $(Digitization_tag).make
cmt_local_tagfile_Digitization_validateXML = $(bin)$(Digitization_tag).make

endif

include $(cmt_local_tagfile_Digitization_validateXML)
#-include $(cmt_local_tagfile_Digitization_validateXML)

ifdef cmt_Digitization_validateXML_has_target_tag

cmt_final_setup_Digitization_validateXML = $(bin)setup_Digitization_validateXML.make
cmt_dependencies_in_Digitization_validateXML = $(bin)dependencies_Digitization_validateXML.in
#cmt_final_setup_Digitization_validateXML = $(bin)Digitization_Digitization_validateXMLsetup.make
cmt_local_Digitization_validateXML_makefile = $(bin)Digitization_validateXML.make

else

cmt_final_setup_Digitization_validateXML = $(bin)setup.make
cmt_dependencies_in_Digitization_validateXML = $(bin)dependencies.in
#cmt_final_setup_Digitization_validateXML = $(bin)Digitizationsetup.make
cmt_local_Digitization_validateXML_makefile = $(bin)Digitization_validateXML.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)Digitizationsetup.make

#Digitization_validateXML :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'Digitization_validateXML'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = Digitization_validateXML/
#Digitization_validateXML::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of cmt_action_runner_header ---------------

ifdef ONCE
Digitization_validateXML_once = 1
endif

ifdef Digitization_validateXML_once

Digitization_validateXMLactionstamp = $(bin)Digitization_validateXML.actionstamp
#Digitization_validateXMLactionstamp = Digitization_validateXML.actionstamp

Digitization_validateXML :: $(Digitization_validateXMLactionstamp)
	$(echo) "Digitization_validateXML ok"
#	@echo Digitization_validateXML ok

#$(Digitization_validateXMLactionstamp) :: $(Digitization_validateXML_dependencies)
$(Digitization_validateXMLactionstamp) ::
	$(silent) python /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/TestPolicy/python/validateXML.py /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/Digitization/test/Digitization_TestConfiguration.xml
	$(silent) cat /dev/null > $(Digitization_validateXMLactionstamp)
#	@echo ok > $(Digitization_validateXMLactionstamp)

Digitization_validateXMLclean ::
	$(cleanup_silent) /bin/rm -f $(Digitization_validateXMLactionstamp)

else

#Digitization_validateXML :: $(Digitization_validateXML_dependencies)
Digitization_validateXML ::
	$(silent) python /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/TestPolicy/python/validateXML.py /afs/cern.ch/work/t/tkar/testarea/20.20.10.7/Simulation/Digitization/test/Digitization_TestConfiguration.xml

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: Digitization_validateXMLclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(Digitization_validateXML.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

Digitization_validateXMLclean ::
#-- end of cleanup_header ---------------
