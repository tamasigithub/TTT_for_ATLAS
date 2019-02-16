#-- start of make_header -----------------

#====================================
#  Document install_joboptions
#
#   Generated Tue Jan 29 18:57:46 2019  by tkar
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

PixelCabling_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(PixelCabling_tag)_install_joboptions.make
cmt_local_tagfile_install_joboptions = $(bin)$(PixelCabling_tag)_install_joboptions.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelCabling_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(PixelCabling_tag).make
cmt_local_tagfile_install_joboptions = $(bin)$(PixelCabling_tag).make

endif

include $(cmt_local_tagfile_install_joboptions)
#-include $(cmt_local_tagfile_install_joboptions)

ifdef cmt_install_joboptions_has_target_tag

cmt_final_setup_install_joboptions = $(bin)setup_install_joboptions.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies_install_joboptions.in
#cmt_final_setup_install_joboptions = $(bin)PixelCabling_install_joboptionssetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

else

cmt_final_setup_install_joboptions = $(bin)setup.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies.in
#cmt_final_setup_install_joboptions = $(bin)PixelCablingsetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelCablingsetup.make

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

install_dir = ${installarea}/jobOptions/PixelCabling

install_joboptions :: install_joboptionsinstall ;

install :: install_joboptionsinstall ;

install_joboptionsclean :: install_joboptionsuninstall

uninstall :: install_joboptionsuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_joboptionsinstall :: ;

SelectPixelMap_py_dependencies = ../share/SelectPixelMap.py
create_dummy_table_py_dependencies = ../share/create_dummy_table.py
postInclude.IBLPixelSvcCablingSetup_py_dependencies = ../share/postInclude.IBLPixelSvcCablingSetup.py
postInclude.IBLPixelSvcCablingSetupDBM_py_dependencies = ../share/postInclude.IBLPixelSvcCablingSetupDBM.py
postInclude.IBLPixelSvcCablingSetupHybridDBM_py_dependencies = ../share/postInclude.IBLPixelSvcCablingSetupHybridDBM.py


install_joboptionsinstall :: ${install_dir}/SelectPixelMap.py ;

${install_dir}/SelectPixelMap.py :: ../share/SelectPixelMap.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/SelectPixelMap.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SelectPixelMap.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/SelectPixelMap.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/SelectPixelMap.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SelectPixelMap.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/create_dummy_table.py ;

${install_dir}/create_dummy_table.py :: ../share/create_dummy_table.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/create_dummy_table.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "create_dummy_table.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/create_dummy_table.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/create_dummy_table.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "create_dummy_table.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/postInclude.IBLPixelSvcCablingSetup.py ;

${install_dir}/postInclude.IBLPixelSvcCablingSetup.py :: ../share/postInclude.IBLPixelSvcCablingSetup.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/postInclude.IBLPixelSvcCablingSetup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "postInclude.IBLPixelSvcCablingSetup.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/postInclude.IBLPixelSvcCablingSetup.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/postInclude.IBLPixelSvcCablingSetup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "postInclude.IBLPixelSvcCablingSetup.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/postInclude.IBLPixelSvcCablingSetupDBM.py ;

${install_dir}/postInclude.IBLPixelSvcCablingSetupDBM.py :: ../share/postInclude.IBLPixelSvcCablingSetupDBM.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/postInclude.IBLPixelSvcCablingSetupDBM.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "postInclude.IBLPixelSvcCablingSetupDBM.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/postInclude.IBLPixelSvcCablingSetupDBM.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/postInclude.IBLPixelSvcCablingSetupDBM.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "postInclude.IBLPixelSvcCablingSetupDBM.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/postInclude.IBLPixelSvcCablingSetupHybridDBM.py ;

${install_dir}/postInclude.IBLPixelSvcCablingSetupHybridDBM.py :: ../share/postInclude.IBLPixelSvcCablingSetupHybridDBM.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/postInclude.IBLPixelSvcCablingSetupHybridDBM.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "postInclude.IBLPixelSvcCablingSetupHybridDBM.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/postInclude.IBLPixelSvcCablingSetupHybridDBM.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/postInclude.IBLPixelSvcCablingSetupHybridDBM.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "postInclude.IBLPixelSvcCablingSetupHybridDBM.py" "$(install_dir)" "$($(package)_cmtpath)"; \
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
