#-- start of make_header -----------------

#====================================
#  Document install_runtime
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

cmt_install_runtime_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_runtime_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_runtime

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(PixelDigitization_tag)_install_runtime.make
cmt_local_tagfile_install_runtime = $(bin)$(PixelDigitization_tag)_install_runtime.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_install_runtime = $(PixelDigitization_tag).make
cmt_local_tagfile_install_runtime = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_install_runtime)
#-include $(cmt_local_tagfile_install_runtime)

ifdef cmt_install_runtime_has_target_tag

cmt_final_setup_install_runtime = $(bin)setup_install_runtime.make
cmt_dependencies_in_install_runtime = $(bin)dependencies_install_runtime.in
#cmt_final_setup_install_runtime = $(bin)PixelDigitization_install_runtimesetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

else

cmt_final_setup_install_runtime = $(bin)setup.make
cmt_dependencies_in_install_runtime = $(bin)dependencies.in
#cmt_final_setup_install_runtime = $(bin)PixelDigitizationsetup.make
cmt_local_install_runtime_makefile = $(bin)install_runtime.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#install_runtime :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_runtime'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_runtime/
#install_runtime::
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

install_dir = ${installarea}/share

install_runtime :: install_runtimeinstall ;

install :: install_runtimeinstall ;

install_runtimeclean :: install_runtimeuninstall

uninstall :: install_runtimeuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_runtimeinstall :: ;

3DFEI3-3E-problist-1um_v1_txt_dependencies = ../share/3DFEI3-3E-problist-1um_v1.txt
3DFEI4-2E-problist-1um_v0_txt_dependencies = ../share/3DFEI4-2E-problist-1um_v0.txt
Bichsel_1_dat_dependencies = ../share/Bichsel_1.dat
Bichsel_2_dat_dependencies = ../share/Bichsel_2.dat
Bichsel_3_dat_dependencies = ../share/Bichsel_3.dat
Bichsel_4_dat_dependencies = ../share/Bichsel_4.dat
Bichsel_5_dat_dependencies = ../share/Bichsel_5.dat
Bichsel_6_dat_dependencies = ../share/Bichsel_6.dat


install_runtimeinstall :: ${install_dir}/3DFEI3-3E-problist-1um_v1.txt
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/3DFEI3-3E-problist-1um_v1.txt :: ../share/3DFEI3-3E-problist-1um_v1.txt
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/3DFEI3-3E-problist-1um_v1.txt`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "3DFEI3-3E-problist-1um_v1.txt" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/3DFEI3-3E-problist-1um_v1.txt : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/3DFEI3-3E-problist-1um_v1.txt`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "3DFEI3-3E-problist-1um_v1.txt" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/3DFEI4-2E-problist-1um_v0.txt
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/3DFEI4-2E-problist-1um_v0.txt :: ../share/3DFEI4-2E-problist-1um_v0.txt
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/3DFEI4-2E-problist-1um_v0.txt`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "3DFEI4-2E-problist-1um_v0.txt" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/3DFEI4-2E-problist-1um_v0.txt : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/3DFEI4-2E-problist-1um_v0.txt`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "3DFEI4-2E-problist-1um_v0.txt" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Bichsel_1.dat
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/Bichsel_1.dat :: ../share/Bichsel_1.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_1.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Bichsel_1.dat" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/Bichsel_1.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_1.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Bichsel_1.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Bichsel_2.dat
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/Bichsel_2.dat :: ../share/Bichsel_2.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Bichsel_2.dat" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/Bichsel_2.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_2.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Bichsel_2.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Bichsel_3.dat
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/Bichsel_3.dat :: ../share/Bichsel_3.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_3.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Bichsel_3.dat" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/Bichsel_3.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_3.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Bichsel_3.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Bichsel_4.dat
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/Bichsel_4.dat :: ../share/Bichsel_4.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Bichsel_4.dat" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/Bichsel_4.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_4.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Bichsel_4.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Bichsel_5.dat
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/Bichsel_5.dat :: ../share/Bichsel_5.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_5.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Bichsel_5.dat" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/Bichsel_5.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_5.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Bichsel_5.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_runtimeinstall :: ${install_dir}/Bichsel_6.dat
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/Bichsel_6.dat :: ../share/Bichsel_6.dat
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_6.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Bichsel_6.dat" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/Bichsel_6.dat : ;

install_runtimeuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Bichsel_6.dat`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Bichsel_6.dat" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_runtimeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_runtime.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_runtimeclean ::
#-- end of cleanup_header ---------------
