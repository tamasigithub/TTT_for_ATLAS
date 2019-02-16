#-- start of make_header -----------------

#====================================
#  Document install_joboptions
#
#   Generated Tue Jan 29 19:11:48 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_joboptions_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_joboptions_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_joboptions

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(PixelDigitization_tag)_install_joboptions.make
cmt_local_tagfile_install_joboptions = $(bin)$(PixelDigitization_tag)_install_joboptions.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(PixelDigitization_tag).make
cmt_local_tagfile_install_joboptions = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_install_joboptions)
#-include $(cmt_local_tagfile_install_joboptions)

ifdef cmt_install_joboptions_has_target_tag

cmt_final_setup_install_joboptions = $(bin)setup_install_joboptions.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies_install_joboptions.in
#cmt_final_setup_install_joboptions = $(bin)PixelDigitization_install_joboptionssetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

else

cmt_final_setup_install_joboptions = $(bin)setup.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies.in
#cmt_final_setup_install_joboptions = $(bin)PixelDigitizationsetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#install_joboptions :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_joboptions'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_joboptions/
#install_joboptions::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------


ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/jobOptions/PixelDigitization

install_joboptions :: install_joboptionsinstall ;

install :: install_joboptionsinstall ;

install_joboptionsclean :: install_joboptionsuninstall

uninstall :: install_joboptionsuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_joboptionsinstall :: ;

PixelDigitization_jobOptions_py_dependencies = ../share/PixelDigitization_jobOptions.py
PixelDigiTool_jobOptions_py_dependencies = ../share/PixelDigiTool_jobOptions.py


install_joboptionsinstall :: ${install_dir}/PixelDigitization_jobOptions.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/PixelDigitization_jobOptions.py :: ../share/PixelDigitization_jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/PixelDigitization_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PixelDigitization_jobOptions.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/PixelDigitization_jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/PixelDigitization_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PixelDigitization_jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/PixelDigiTool_jobOptions.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/PixelDigiTool_jobOptions.py :: ../share/PixelDigiTool_jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/PixelDigiTool_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PixelDigiTool_jobOptions.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/PixelDigiTool_jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/PixelDigiTool_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PixelDigiTool_jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_joboptionsclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_joboptions.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_joboptionsclean ::
#-- end of cleanup_header ---------------
