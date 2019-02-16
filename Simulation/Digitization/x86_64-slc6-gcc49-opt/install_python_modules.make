#-- start of make_header -----------------

#====================================
#  Document install_python_modules
#
#   Generated Tue Jan 29 18:58:28 2019  by tkar
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

Digitization_tag = $(tag)

#cmt_local_tagfile_install_python_modules = $(Digitization_tag)_install_python_modules.make
cmt_local_tagfile_install_python_modules = $(bin)$(Digitization_tag)_install_python_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

Digitization_tag = $(tag)

#cmt_local_tagfile_install_python_modules = $(Digitization_tag).make
cmt_local_tagfile_install_python_modules = $(bin)$(Digitization_tag).make

endif

include $(cmt_local_tagfile_install_python_modules)
#-include $(cmt_local_tagfile_install_python_modules)

ifdef cmt_install_python_modules_has_target_tag

cmt_final_setup_install_python_modules = $(bin)setup_install_python_modules.make
cmt_dependencies_in_install_python_modules = $(bin)dependencies_install_python_modules.in
#cmt_final_setup_install_python_modules = $(bin)Digitization_install_python_modulessetup.make
cmt_local_install_python_modules_makefile = $(bin)install_python_modules.make

else

cmt_final_setup_install_python_modules = $(bin)setup.make
cmt_dependencies_in_install_python_modules = $(bin)dependencies.in
#cmt_final_setup_install_python_modules = $(bin)Digitizationsetup.make
cmt_local_install_python_modules_makefile = $(bin)install_python_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)Digitizationsetup.make

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

install_dir = ${installarea}/python/Digitization

install_python_modules :: install_python_modulesinstall ;

install :: install_python_modulesinstall ;

install_python_modulesclean :: install_python_modulesuninstall

uninstall :: install_python_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_python_modulesinstall :: ;

DigiAlgConfig_py_dependencies = ../python/DigiAlgConfig.py
DigiConfigCheckers_py_dependencies = ../python/DigiConfigCheckers.py
DigiOutput_py_dependencies = ../python/DigiOutput.py
DigitizationConfigDb_py_dependencies = ../python/DigitizationConfigDb.py
DigitizationFlags_py_dependencies = ../python/DigitizationFlags.py
DigitizationReadMetaData_py_dependencies = ../python/DigitizationReadMetaData.py
DigitizationWriteMetaData_py_dependencies = ../python/DigitizationWriteMetaData.py
PileUpConfig_py_dependencies = ../python/PileUpConfig.py
PileUpEventType_py_dependencies = ../python/PileUpEventType.py
PileUpMergeSvcConfig_py_dependencies = ../python/PileUpMergeSvcConfig.py
RunDependentConfig_py_dependencies = ../python/RunDependentConfig.py
RunDependentMCTaskIterator_py_dependencies = ../python/RunDependentMCTaskIterator.py
__init___py_dependencies = ../python/__init__.py


install_python_modulesinstall :: ${install_dir}/DigiAlgConfig.py ;

${install_dir}/DigiAlgConfig.py :: ../python/DigiAlgConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigiAlgConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigiAlgConfig.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/DigiAlgConfig.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigiAlgConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigiAlgConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/DigiConfigCheckers.py ;

${install_dir}/DigiConfigCheckers.py :: ../python/DigiConfigCheckers.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigiConfigCheckers.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigiConfigCheckers.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/DigiConfigCheckers.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigiConfigCheckers.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigiConfigCheckers.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/DigiOutput.py ;

${install_dir}/DigiOutput.py :: ../python/DigiOutput.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigiOutput.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigiOutput.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/DigiOutput.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigiOutput.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigiOutput.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/DigitizationConfigDb.py ;

${install_dir}/DigitizationConfigDb.py :: ../python/DigitizationConfigDb.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationConfigDb.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationConfigDb.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/DigitizationConfigDb.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationConfigDb.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationConfigDb.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/DigitizationFlags.py ;

${install_dir}/DigitizationFlags.py :: ../python/DigitizationFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationFlags.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/DigitizationFlags.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/DigitizationReadMetaData.py ;

${install_dir}/DigitizationReadMetaData.py :: ../python/DigitizationReadMetaData.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationReadMetaData.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationReadMetaData.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/DigitizationReadMetaData.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationReadMetaData.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationReadMetaData.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/DigitizationWriteMetaData.py ;

${install_dir}/DigitizationWriteMetaData.py :: ../python/DigitizationWriteMetaData.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationWriteMetaData.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationWriteMetaData.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/DigitizationWriteMetaData.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/DigitizationWriteMetaData.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationWriteMetaData.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/PileUpConfig.py ;

${install_dir}/PileUpConfig.py :: ../python/PileUpConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/PileUpConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PileUpConfig.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/PileUpConfig.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/PileUpConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PileUpConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/PileUpEventType.py ;

${install_dir}/PileUpEventType.py :: ../python/PileUpEventType.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/PileUpEventType.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PileUpEventType.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/PileUpEventType.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/PileUpEventType.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PileUpEventType.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/PileUpMergeSvcConfig.py ;

${install_dir}/PileUpMergeSvcConfig.py :: ../python/PileUpMergeSvcConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/PileUpMergeSvcConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PileUpMergeSvcConfig.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/PileUpMergeSvcConfig.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/PileUpMergeSvcConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PileUpMergeSvcConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/RunDependentConfig.py ;

${install_dir}/RunDependentConfig.py :: ../python/RunDependentConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/RunDependentConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "RunDependentConfig.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/RunDependentConfig.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/RunDependentConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "RunDependentConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_python_modulesinstall :: ${install_dir}/RunDependentMCTaskIterator.py ;

${install_dir}/RunDependentMCTaskIterator.py :: ../python/RunDependentMCTaskIterator.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/RunDependentMCTaskIterator.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "RunDependentMCTaskIterator.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/RunDependentMCTaskIterator.py : ;

install_python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/RunDependentMCTaskIterator.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "RunDependentMCTaskIterator.py" "$(install_dir)" "$($(package)_cmtpath)"; \
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
