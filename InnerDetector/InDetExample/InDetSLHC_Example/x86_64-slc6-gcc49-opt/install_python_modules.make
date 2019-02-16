#-- start of make_header -----------------

#====================================
#  Document install_python_modules
#
#   Generated Tue Jan 29 19:13:56 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_python_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_python_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_python_modules

InDetSLHC_Example_tag = $(tag)

#cmt_local_tagfile_install_python_modules = $(InDetSLHC_Example_tag)_install_python_modules.make
cmt_local_tagfile_install_python_modules = $(bin)$(InDetSLHC_Example_tag)_install_python_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetSLHC_Example_tag = $(tag)

#cmt_local_tagfile_install_python_modules = $(InDetSLHC_Example_tag).make
cmt_local_tagfile_install_python_modules = $(bin)$(InDetSLHC_Example_tag).make

endif

include $(cmt_local_tagfile_install_python_modules)
#-include $(cmt_local_tagfile_install_python_modules)

ifdef cmt_install_python_modules_has_target_tag

cmt_final_setup_install_python_modules = $(bin)setup_install_python_modules.make
cmt_dependencies_in_install_python_modules = $(bin)dependencies_install_python_modules.in
#cmt_final_setup_install_python_modules = $(bin)InDetSLHC_Example_install_python_modulessetup.make
cmt_local_install_python_modules_makefile = $(bin)install_python_modules.make

else

cmt_final_setup_install_python_modules = $(bin)setup.make
cmt_dependencies_in_install_python_modules = $(bin)dependencies.in
#cmt_final_setup_install_python_modules = $(bin)InDetSLHC_Examplesetup.make
cmt_local_install_python_modules_makefile = $(bin)install_python_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetSLHC_Examplesetup.make

#install_python_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_python_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_python_modules/
#install_python_modules::
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

install_dir = ${installarea}/python/InDetSLHC_Example

install_python_modules :: install_python_modulesinstall ;

install :: install_python_modulesinstall ;

install_python_modulesclean :: install_python_modulesuninstall

uninstall :: install_python_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_python_modulesinstall :: ;

SLHC_JobProperties_py_dependencies = ../python/SLHC_JobProperties.py
SLHC_Setup_py_dependencies = ../python/SLHC_Setup.py
SLHC_Setup_ATLAS_py_dependencies = ../python/SLHC_Setup_ATLAS.py
SLHC_Setup_Alpine_py_dependencies = ../python/SLHC_Setup_Alpine.py
SLHC_Setup_Alpine_ECRing_py_dependencies = ../python/SLHC_Setup_Alpine_ECRing.py
SLHC_Setup_Alpine_VF_py_dependencies = ../python/SLHC_Setup_Alpine_VF.py
SLHC_Setup_BeamPipe_py_dependencies = ../python/SLHC_Setup_BeamPipe.py
SLHC_Setup_ExtBrl_32_py_dependencies = ../python/SLHC_Setup_ExtBrl_32.py
SLHC_Setup_ExtBrl_4_py_dependencies = ../python/SLHC_Setup_ExtBrl_4.py
SLHC_Setup_ExtBrl_4_25x100_py_dependencies = ../python/SLHC_Setup_ExtBrl_4_25x100.py
SLHC_Setup_ExtBrl_4_33mm_py_dependencies = ../python/SLHC_Setup_ExtBrl_4_33mm.py
SLHC_Setup_IExtBrl_4_py_dependencies = ../python/SLHC_Setup_IExtBrl_4.py
SLHC_Setup_IExtBrl_4_OptRing_py_dependencies = ../python/SLHC_Setup_IExtBrl_4_OptRing.py
SLHC_Setup_InclBrl_4_py_dependencies = ../python/SLHC_Setup_InclBrl_4.py
SLHC_Setup_InclBrl_4_25x100_py_dependencies = ../python/SLHC_Setup_InclBrl_4_25x100.py
SLHC_Setup_InclBrl_4_OptRing_py_dependencies = ../python/SLHC_Setup_InclBrl_4_OptRing.py
SLHC_Setup_InclBrl_4_OptRing_25x100_py_dependencies = ../python/SLHC_Setup_InclBrl_4_OptRing_25x100.py
SLHC_Setup_InclBrl_obsolete_py_dependencies = ../python/SLHC_Setup_InclBrl_obsolete.py
SLHC_Setup_InnerInclined_obsolete_py_dependencies = ../python/SLHC_Setup_InnerInclined_obsolete.py
SLHC_Setup_LoI_py_dependencies = ../python/SLHC_Setup_LoI.py
SLHC_Setup_LoI_ECRing_py_dependencies = ../python/SLHC_Setup_LoI_ECRing.py
SLHC_Setup_LoI_VF_py_dependencies = ../python/SLHC_Setup_LoI_VF.py
SLHC_Setup_XML_py_dependencies = ../python/SLHC_Setup_XML.py
__init___py_dependencies = ../python/__init__.py


install_python_modulesinstall :: ${install_dir}/SLHC_JobProperties.py ;

${install_dir}/SLHC_JobProperties.py :: ../python/SLHC_JobProperties.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_JobProperties.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_JobProperties.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_JobProperties.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_JobProperties.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_JobProperties.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup.py ;

${install_dir}/SLHC_Setup.py :: ../python/SLHC_Setup.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_ATLAS.py ;

${install_dir}/SLHC_Setup_ATLAS.py :: ../python/SLHC_Setup_ATLAS.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ATLAS.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_ATLAS.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_ATLAS.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ATLAS.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_ATLAS.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_Alpine.py ;

${install_dir}/SLHC_Setup_Alpine.py :: ../python/SLHC_Setup_Alpine.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_Alpine.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_Alpine.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_Alpine.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_Alpine.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_Alpine.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_Alpine_ECRing.py ;

${install_dir}/SLHC_Setup_Alpine_ECRing.py :: ../python/SLHC_Setup_Alpine_ECRing.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_Alpine_ECRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_Alpine_ECRing.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_Alpine_ECRing.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_Alpine_ECRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_Alpine_ECRing.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_Alpine_VF.py ;

${install_dir}/SLHC_Setup_Alpine_VF.py :: ../python/SLHC_Setup_Alpine_VF.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_Alpine_VF.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_Alpine_VF.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_Alpine_VF.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_Alpine_VF.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_Alpine_VF.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_BeamPipe.py ;

${install_dir}/SLHC_Setup_BeamPipe.py :: ../python/SLHC_Setup_BeamPipe.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_BeamPipe.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_BeamPipe.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_BeamPipe.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_BeamPipe.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_BeamPipe.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_ExtBrl_32.py ;

${install_dir}/SLHC_Setup_ExtBrl_32.py :: ../python/SLHC_Setup_ExtBrl_32.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_32.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_ExtBrl_32.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_ExtBrl_32.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_32.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_ExtBrl_32.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_ExtBrl_4.py ;

${install_dir}/SLHC_Setup_ExtBrl_4.py :: ../python/SLHC_Setup_ExtBrl_4.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_4.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_ExtBrl_4.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_ExtBrl_4.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_4.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_ExtBrl_4.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_ExtBrl_4_25x100.py ;

${install_dir}/SLHC_Setup_ExtBrl_4_25x100.py :: ../python/SLHC_Setup_ExtBrl_4_25x100.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_4_25x100.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_ExtBrl_4_25x100.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_ExtBrl_4_25x100.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_4_25x100.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_ExtBrl_4_25x100.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_ExtBrl_4_33mm.py ;

${install_dir}/SLHC_Setup_ExtBrl_4_33mm.py :: ../python/SLHC_Setup_ExtBrl_4_33mm.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_4_33mm.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_ExtBrl_4_33mm.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_ExtBrl_4_33mm.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_ExtBrl_4_33mm.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_ExtBrl_4_33mm.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_IExtBrl_4.py ;

${install_dir}/SLHC_Setup_IExtBrl_4.py :: ../python/SLHC_Setup_IExtBrl_4.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_IExtBrl_4.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_IExtBrl_4.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_IExtBrl_4.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_IExtBrl_4.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_IExtBrl_4.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_IExtBrl_4_OptRing.py ;

${install_dir}/SLHC_Setup_IExtBrl_4_OptRing.py :: ../python/SLHC_Setup_IExtBrl_4_OptRing.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_IExtBrl_4_OptRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_IExtBrl_4_OptRing.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_IExtBrl_4_OptRing.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_IExtBrl_4_OptRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_IExtBrl_4_OptRing.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_InclBrl_4.py ;

${install_dir}/SLHC_Setup_InclBrl_4.py :: ../python/SLHC_Setup_InclBrl_4.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_InclBrl_4.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_InclBrl_4.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_InclBrl_4.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_InclBrl_4_25x100.py ;

${install_dir}/SLHC_Setup_InclBrl_4_25x100.py :: ../python/SLHC_Setup_InclBrl_4_25x100.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4_25x100.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_InclBrl_4_25x100.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_InclBrl_4_25x100.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4_25x100.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_InclBrl_4_25x100.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_InclBrl_4_OptRing.py ;

${install_dir}/SLHC_Setup_InclBrl_4_OptRing.py :: ../python/SLHC_Setup_InclBrl_4_OptRing.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4_OptRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_InclBrl_4_OptRing.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_InclBrl_4_OptRing.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4_OptRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_InclBrl_4_OptRing.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_InclBrl_4_OptRing_25x100.py ;

${install_dir}/SLHC_Setup_InclBrl_4_OptRing_25x100.py :: ../python/SLHC_Setup_InclBrl_4_OptRing_25x100.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4_OptRing_25x100.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_InclBrl_4_OptRing_25x100.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_InclBrl_4_OptRing_25x100.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_4_OptRing_25x100.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_InclBrl_4_OptRing_25x100.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_InclBrl_obsolete.py ;

${install_dir}/SLHC_Setup_InclBrl_obsolete.py :: ../python/SLHC_Setup_InclBrl_obsolete.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_obsolete.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_InclBrl_obsolete.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_InclBrl_obsolete.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InclBrl_obsolete.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_InclBrl_obsolete.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_InnerInclined_obsolete.py ;

${install_dir}/SLHC_Setup_InnerInclined_obsolete.py :: ../python/SLHC_Setup_InnerInclined_obsolete.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InnerInclined_obsolete.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_InnerInclined_obsolete.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_InnerInclined_obsolete.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_InnerInclined_obsolete.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_InnerInclined_obsolete.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_LoI.py ;

${install_dir}/SLHC_Setup_LoI.py :: ../python/SLHC_Setup_LoI.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_LoI.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_LoI.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_LoI.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_LoI.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_LoI.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_LoI_ECRing.py ;

${install_dir}/SLHC_Setup_LoI_ECRing.py :: ../python/SLHC_Setup_LoI_ECRing.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_LoI_ECRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_LoI_ECRing.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_LoI_ECRing.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_LoI_ECRing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_LoI_ECRing.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_LoI_VF.py ;

${install_dir}/SLHC_Setup_LoI_VF.py :: ../python/SLHC_Setup_LoI_VF.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_LoI_VF.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_LoI_VF.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_LoI_VF.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_LoI_VF.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_LoI_VF.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/SLHC_Setup_XML.py ;

${install_dir}/SLHC_Setup_XML.py :: ../python/SLHC_Setup_XML.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_XML.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SLHC_Setup_XML.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/SLHC_Setup_XML.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/SLHC_Setup_XML.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SLHC_Setup_XML.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/__init__.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_python_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_python_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_python_modulesclean ::
#-- end of cleanup_header ---------------
