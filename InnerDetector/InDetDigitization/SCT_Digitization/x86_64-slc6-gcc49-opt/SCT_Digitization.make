#-- start of make_header -----------------

#====================================
#  Library SCT_Digitization
#
#   Generated Tue Jan 29 19:03:05 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_Digitization_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_Digitization_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_Digitization

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_Digitization = $(SCT_Digitization_tag)_SCT_Digitization.make
cmt_local_tagfile_SCT_Digitization = $(bin)$(SCT_Digitization_tag)_SCT_Digitization.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Digitization_tag = $(tag)

#cmt_local_tagfile_SCT_Digitization = $(SCT_Digitization_tag).make
cmt_local_tagfile_SCT_Digitization = $(bin)$(SCT_Digitization_tag).make

endif

include $(cmt_local_tagfile_SCT_Digitization)
#-include $(cmt_local_tagfile_SCT_Digitization)

ifdef cmt_SCT_Digitization_has_target_tag

cmt_final_setup_SCT_Digitization = $(bin)setup_SCT_Digitization.make
cmt_dependencies_in_SCT_Digitization = $(bin)dependencies_SCT_Digitization.in
#cmt_final_setup_SCT_Digitization = $(bin)SCT_Digitization_SCT_Digitizationsetup.make
cmt_local_SCT_Digitization_makefile = $(bin)SCT_Digitization.make

else

cmt_final_setup_SCT_Digitization = $(bin)setup.make
cmt_dependencies_in_SCT_Digitization = $(bin)dependencies.in
#cmt_final_setup_SCT_Digitization = $(bin)SCT_Digitizationsetup.make
cmt_local_SCT_Digitization_makefile = $(bin)SCT_Digitization.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Digitizationsetup.make

#SCT_Digitization :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_Digitization'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_Digitization/
#SCT_Digitization::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

SCT_Digitizationlibname   = $(bin)$(library_prefix)SCT_Digitization$(library_suffix)
SCT_Digitizationlib       = $(SCT_Digitizationlibname).a
SCT_Digitizationstamp     = $(bin)SCT_Digitization.stamp
SCT_Digitizationshstamp   = $(bin)SCT_Digitization.shstamp

SCT_Digitization :: dirs  SCT_DigitizationLIB
	$(echo) "SCT_Digitization ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#SCT_DigitizationLIB :: $(SCT_Digitizationlib) $(SCT_Digitizationshstamp)
SCT_DigitizationLIB :: $(SCT_Digitizationshstamp)
	$(echo) "SCT_Digitization : library ok"

$(SCT_Digitizationlib) :: $(bin)GetExEy_150V.o $(bin)GetPotential.o $(bin)SCT_Amp.o $(bin)SCT_DetailedSurfaceChargesGenerator.o $(bin)SCT_Digitization.o $(bin)SCT_DigitizationTool.o $(bin)SCT_FrontEnd.o $(bin)SCT_FrontEndDev.o $(bin)SCT_RandomDisabledCellGenerator.o $(bin)SCT_StripDiscriminator.o $(bin)SCT_SurfaceChargesGenerator.o $(bin)SCT_TimeWalkGenerator.o $(bin)getMemUsage.o $(bin)SCT_Digitization_entries.o $(bin)SCT_Digitization_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(SCT_Digitizationlib) $?
	$(lib_silent) $(ranlib) $(SCT_Digitizationlib)
	$(lib_silent) cat /dev/null >$(SCT_Digitizationstamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

#
# We add one level of dependency upon the true shared library 
# (rather than simply upon the stamp file)
# this is for cases where the shared library has not been built
# while the stamp was created (error??) 
#

$(SCT_Digitizationlibname).$(shlibsuffix) :: $(bin)GetExEy_150V.o $(bin)GetPotential.o $(bin)SCT_Amp.o $(bin)SCT_DetailedSurfaceChargesGenerator.o $(bin)SCT_Digitization.o $(bin)SCT_DigitizationTool.o $(bin)SCT_FrontEnd.o $(bin)SCT_FrontEndDev.o $(bin)SCT_RandomDisabledCellGenerator.o $(bin)SCT_StripDiscriminator.o $(bin)SCT_SurfaceChargesGenerator.o $(bin)SCT_TimeWalkGenerator.o $(bin)getMemUsage.o $(bin)SCT_Digitization_entries.o $(bin)SCT_Digitization_load.o $(use_requirements) $(SCT_Digitizationstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)GetExEy_150V.o $(bin)GetPotential.o $(bin)SCT_Amp.o $(bin)SCT_DetailedSurfaceChargesGenerator.o $(bin)SCT_Digitization.o $(bin)SCT_DigitizationTool.o $(bin)SCT_FrontEnd.o $(bin)SCT_FrontEndDev.o $(bin)SCT_RandomDisabledCellGenerator.o $(bin)SCT_StripDiscriminator.o $(bin)SCT_SurfaceChargesGenerator.o $(bin)SCT_TimeWalkGenerator.o $(bin)getMemUsage.o $(bin)SCT_Digitization_entries.o $(bin)SCT_Digitization_load.o $(SCT_Digitization_shlibflags)
	$(lib_silent) cat /dev/null >$(SCT_Digitizationstamp) && \
	  cat /dev/null >$(SCT_Digitizationshstamp)

$(SCT_Digitizationshstamp) :: $(SCT_Digitizationlibname).$(shlibsuffix)
	$(lib_silent) if test -f $(SCT_Digitizationlibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(SCT_Digitizationstamp) && \
	  cat /dev/null >$(SCT_Digitizationshstamp) ; fi

SCT_Digitizationclean ::
	$(cleanup_echo) objects SCT_Digitization
	$(cleanup_silent) /bin/rm -f $(bin)GetExEy_150V.o $(bin)GetPotential.o $(bin)SCT_Amp.o $(bin)SCT_DetailedSurfaceChargesGenerator.o $(bin)SCT_Digitization.o $(bin)SCT_DigitizationTool.o $(bin)SCT_FrontEnd.o $(bin)SCT_FrontEndDev.o $(bin)SCT_RandomDisabledCellGenerator.o $(bin)SCT_StripDiscriminator.o $(bin)SCT_SurfaceChargesGenerator.o $(bin)SCT_TimeWalkGenerator.o $(bin)getMemUsage.o $(bin)SCT_Digitization_entries.o $(bin)SCT_Digitization_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)GetExEy_150V.o $(bin)GetPotential.o $(bin)SCT_Amp.o $(bin)SCT_DetailedSurfaceChargesGenerator.o $(bin)SCT_Digitization.o $(bin)SCT_DigitizationTool.o $(bin)SCT_FrontEnd.o $(bin)SCT_FrontEndDev.o $(bin)SCT_RandomDisabledCellGenerator.o $(bin)SCT_StripDiscriminator.o $(bin)SCT_SurfaceChargesGenerator.o $(bin)SCT_TimeWalkGenerator.o $(bin)getMemUsage.o $(bin)SCT_Digitization_entries.o $(bin)SCT_Digitization_load.o) $(patsubst %.o,%.dep,$(bin)GetExEy_150V.o $(bin)GetPotential.o $(bin)SCT_Amp.o $(bin)SCT_DetailedSurfaceChargesGenerator.o $(bin)SCT_Digitization.o $(bin)SCT_DigitizationTool.o $(bin)SCT_FrontEnd.o $(bin)SCT_FrontEndDev.o $(bin)SCT_RandomDisabledCellGenerator.o $(bin)SCT_StripDiscriminator.o $(bin)SCT_SurfaceChargesGenerator.o $(bin)SCT_TimeWalkGenerator.o $(bin)getMemUsage.o $(bin)SCT_Digitization_entries.o $(bin)SCT_Digitization_load.o) $(patsubst %.o,%.d.stamp,$(bin)GetExEy_150V.o $(bin)GetPotential.o $(bin)SCT_Amp.o $(bin)SCT_DetailedSurfaceChargesGenerator.o $(bin)SCT_Digitization.o $(bin)SCT_DigitizationTool.o $(bin)SCT_FrontEnd.o $(bin)SCT_FrontEndDev.o $(bin)SCT_RandomDisabledCellGenerator.o $(bin)SCT_StripDiscriminator.o $(bin)SCT_SurfaceChargesGenerator.o $(bin)SCT_TimeWalkGenerator.o $(bin)getMemUsage.o $(bin)SCT_Digitization_entries.o $(bin)SCT_Digitization_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf SCT_Digitization_deps SCT_Digitization_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
SCT_Digitizationinstallname = $(library_prefix)SCT_Digitization$(library_suffix).$(shlibsuffix)

SCT_Digitization :: SCT_Digitizationinstall ;

install :: SCT_Digitizationinstall ;

SCT_Digitizationinstall :: $(install_dir)/$(SCT_Digitizationinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(SCT_Digitizationinstallname) :: $(bin)$(SCT_Digitizationinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SCT_Digitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##SCT_Digitizationclean :: SCT_Digitizationuninstall

uninstall :: SCT_Digitizationuninstall ;

SCT_Digitizationuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SCT_Digitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GetExEy_150V.d

$(bin)$(binobj)GetExEy_150V.d :

$(bin)$(binobj)GetExEy_150V.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)GetExEy_150V.o : $(src)GetExEy_150V.cxx
	$(cpp_echo) $(src)GetExEy_150V.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(GetExEy_150V_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(GetExEy_150V_cppflags) $(GetExEy_150V_cxx_cppflags)  $(src)GetExEy_150V.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(GetExEy_150V_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)GetExEy_150V.cxx

$(bin)$(binobj)GetExEy_150V.o : $(GetExEy_150V_cxx_dependencies)
	$(cpp_echo) $(src)GetExEy_150V.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(GetExEy_150V_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(GetExEy_150V_cppflags) $(GetExEy_150V_cxx_cppflags)  $(src)GetExEy_150V.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GetPotential.d

$(bin)$(binobj)GetPotential.d :

$(bin)$(binobj)GetPotential.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)GetPotential.o : $(src)GetPotential.cxx
	$(cpp_echo) $(src)GetPotential.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(GetPotential_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(GetPotential_cppflags) $(GetPotential_cxx_cppflags)  $(src)GetPotential.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(GetPotential_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)GetPotential.cxx

$(bin)$(binobj)GetPotential.o : $(GetPotential_cxx_dependencies)
	$(cpp_echo) $(src)GetPotential.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(GetPotential_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(GetPotential_cppflags) $(GetPotential_cxx_cppflags)  $(src)GetPotential.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_Amp.d

$(bin)$(binobj)SCT_Amp.d :

$(bin)$(binobj)SCT_Amp.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_Amp.o : $(src)SCT_Amp.cxx
	$(cpp_echo) $(src)SCT_Amp.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Amp_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Amp_cppflags) $(SCT_Amp_cxx_cppflags)  $(src)SCT_Amp.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_Amp_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_Amp.cxx

$(bin)$(binobj)SCT_Amp.o : $(SCT_Amp_cxx_dependencies)
	$(cpp_echo) $(src)SCT_Amp.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Amp_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Amp_cppflags) $(SCT_Amp_cxx_cppflags)  $(src)SCT_Amp.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_DetailedSurfaceChargesGenerator.d

$(bin)$(binobj)SCT_DetailedSurfaceChargesGenerator.d :

$(bin)$(binobj)SCT_DetailedSurfaceChargesGenerator.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_DetailedSurfaceChargesGenerator.o : $(src)SCT_DetailedSurfaceChargesGenerator.cxx
	$(cpp_echo) $(src)SCT_DetailedSurfaceChargesGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_DetailedSurfaceChargesGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_DetailedSurfaceChargesGenerator_cppflags) $(SCT_DetailedSurfaceChargesGenerator_cxx_cppflags)  $(src)SCT_DetailedSurfaceChargesGenerator.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_DetailedSurfaceChargesGenerator_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_DetailedSurfaceChargesGenerator.cxx

$(bin)$(binobj)SCT_DetailedSurfaceChargesGenerator.o : $(SCT_DetailedSurfaceChargesGenerator_cxx_dependencies)
	$(cpp_echo) $(src)SCT_DetailedSurfaceChargesGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_DetailedSurfaceChargesGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_DetailedSurfaceChargesGenerator_cppflags) $(SCT_DetailedSurfaceChargesGenerator_cxx_cppflags)  $(src)SCT_DetailedSurfaceChargesGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_Digitization.d

$(bin)$(binobj)SCT_Digitization.d :

$(bin)$(binobj)SCT_Digitization.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_Digitization.o : $(src)SCT_Digitization.cxx
	$(cpp_echo) $(src)SCT_Digitization.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Digitization_cppflags) $(SCT_Digitization_cxx_cppflags)  $(src)SCT_Digitization.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_Digitization_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_Digitization.cxx

$(bin)$(binobj)SCT_Digitization.o : $(SCT_Digitization_cxx_dependencies)
	$(cpp_echo) $(src)SCT_Digitization.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Digitization_cppflags) $(SCT_Digitization_cxx_cppflags)  $(src)SCT_Digitization.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_DigitizationTool.d

$(bin)$(binobj)SCT_DigitizationTool.d :

$(bin)$(binobj)SCT_DigitizationTool.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_DigitizationTool.o : $(src)SCT_DigitizationTool.cxx
	$(cpp_echo) $(src)SCT_DigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_DigitizationTool_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_DigitizationTool_cppflags) $(SCT_DigitizationTool_cxx_cppflags)  $(src)SCT_DigitizationTool.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_DigitizationTool_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_DigitizationTool.cxx

$(bin)$(binobj)SCT_DigitizationTool.o : $(SCT_DigitizationTool_cxx_dependencies)
	$(cpp_echo) $(src)SCT_DigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_DigitizationTool_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_DigitizationTool_cppflags) $(SCT_DigitizationTool_cxx_cppflags)  $(src)SCT_DigitizationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_FrontEnd.d

$(bin)$(binobj)SCT_FrontEnd.d :

$(bin)$(binobj)SCT_FrontEnd.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_FrontEnd.o : $(src)SCT_FrontEnd.cxx
	$(cpp_echo) $(src)SCT_FrontEnd.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_FrontEnd_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_FrontEnd_cppflags) $(SCT_FrontEnd_cxx_cppflags)  $(src)SCT_FrontEnd.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_FrontEnd_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_FrontEnd.cxx

$(bin)$(binobj)SCT_FrontEnd.o : $(SCT_FrontEnd_cxx_dependencies)
	$(cpp_echo) $(src)SCT_FrontEnd.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_FrontEnd_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_FrontEnd_cppflags) $(SCT_FrontEnd_cxx_cppflags)  $(src)SCT_FrontEnd.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_FrontEndDev.d

$(bin)$(binobj)SCT_FrontEndDev.d :

$(bin)$(binobj)SCT_FrontEndDev.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_FrontEndDev.o : $(src)SCT_FrontEndDev.cxx
	$(cpp_echo) $(src)SCT_FrontEndDev.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_FrontEndDev_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_FrontEndDev_cppflags) $(SCT_FrontEndDev_cxx_cppflags)  $(src)SCT_FrontEndDev.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_FrontEndDev_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_FrontEndDev.cxx

$(bin)$(binobj)SCT_FrontEndDev.o : $(SCT_FrontEndDev_cxx_dependencies)
	$(cpp_echo) $(src)SCT_FrontEndDev.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_FrontEndDev_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_FrontEndDev_cppflags) $(SCT_FrontEndDev_cxx_cppflags)  $(src)SCT_FrontEndDev.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_RandomDisabledCellGenerator.d

$(bin)$(binobj)SCT_RandomDisabledCellGenerator.d :

$(bin)$(binobj)SCT_RandomDisabledCellGenerator.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_RandomDisabledCellGenerator.o : $(src)SCT_RandomDisabledCellGenerator.cxx
	$(cpp_echo) $(src)SCT_RandomDisabledCellGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_RandomDisabledCellGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_RandomDisabledCellGenerator_cppflags) $(SCT_RandomDisabledCellGenerator_cxx_cppflags)  $(src)SCT_RandomDisabledCellGenerator.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_RandomDisabledCellGenerator_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_RandomDisabledCellGenerator.cxx

$(bin)$(binobj)SCT_RandomDisabledCellGenerator.o : $(SCT_RandomDisabledCellGenerator_cxx_dependencies)
	$(cpp_echo) $(src)SCT_RandomDisabledCellGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_RandomDisabledCellGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_RandomDisabledCellGenerator_cppflags) $(SCT_RandomDisabledCellGenerator_cxx_cppflags)  $(src)SCT_RandomDisabledCellGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_StripDiscriminator.d

$(bin)$(binobj)SCT_StripDiscriminator.d :

$(bin)$(binobj)SCT_StripDiscriminator.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_StripDiscriminator.o : $(src)SCT_StripDiscriminator.cxx
	$(cpp_echo) $(src)SCT_StripDiscriminator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_StripDiscriminator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_StripDiscriminator_cppflags) $(SCT_StripDiscriminator_cxx_cppflags)  $(src)SCT_StripDiscriminator.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_StripDiscriminator_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_StripDiscriminator.cxx

$(bin)$(binobj)SCT_StripDiscriminator.o : $(SCT_StripDiscriminator_cxx_dependencies)
	$(cpp_echo) $(src)SCT_StripDiscriminator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_StripDiscriminator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_StripDiscriminator_cppflags) $(SCT_StripDiscriminator_cxx_cppflags)  $(src)SCT_StripDiscriminator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_SurfaceChargesGenerator.d

$(bin)$(binobj)SCT_SurfaceChargesGenerator.d :

$(bin)$(binobj)SCT_SurfaceChargesGenerator.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_SurfaceChargesGenerator.o : $(src)SCT_SurfaceChargesGenerator.cxx
	$(cpp_echo) $(src)SCT_SurfaceChargesGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_SurfaceChargesGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_SurfaceChargesGenerator_cppflags) $(SCT_SurfaceChargesGenerator_cxx_cppflags)  $(src)SCT_SurfaceChargesGenerator.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_SurfaceChargesGenerator_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_SurfaceChargesGenerator.cxx

$(bin)$(binobj)SCT_SurfaceChargesGenerator.o : $(SCT_SurfaceChargesGenerator_cxx_dependencies)
	$(cpp_echo) $(src)SCT_SurfaceChargesGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_SurfaceChargesGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_SurfaceChargesGenerator_cppflags) $(SCT_SurfaceChargesGenerator_cxx_cppflags)  $(src)SCT_SurfaceChargesGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_TimeWalkGenerator.d

$(bin)$(binobj)SCT_TimeWalkGenerator.d :

$(bin)$(binobj)SCT_TimeWalkGenerator.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_TimeWalkGenerator.o : $(src)SCT_TimeWalkGenerator.cxx
	$(cpp_echo) $(src)SCT_TimeWalkGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_TimeWalkGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_TimeWalkGenerator_cppflags) $(SCT_TimeWalkGenerator_cxx_cppflags)  $(src)SCT_TimeWalkGenerator.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_TimeWalkGenerator_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)SCT_TimeWalkGenerator.cxx

$(bin)$(binobj)SCT_TimeWalkGenerator.o : $(SCT_TimeWalkGenerator_cxx_dependencies)
	$(cpp_echo) $(src)SCT_TimeWalkGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_TimeWalkGenerator_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_TimeWalkGenerator_cppflags) $(SCT_TimeWalkGenerator_cxx_cppflags)  $(src)SCT_TimeWalkGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)getMemUsage.d

$(bin)$(binobj)getMemUsage.d :

$(bin)$(binobj)getMemUsage.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)getMemUsage.o : $(src)getMemUsage.cxx
	$(cpp_echo) $(src)getMemUsage.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(getMemUsage_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(getMemUsage_cppflags) $(getMemUsage_cxx_cppflags)  $(src)getMemUsage.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(getMemUsage_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)getMemUsage.cxx

$(bin)$(binobj)getMemUsage.o : $(getMemUsage_cxx_dependencies)
	$(cpp_echo) $(src)getMemUsage.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(getMemUsage_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(getMemUsage_cppflags) $(getMemUsage_cxx_cppflags)  $(src)getMemUsage.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_Digitization_entries.d

$(bin)$(binobj)SCT_Digitization_entries.d :

$(bin)$(binobj)SCT_Digitization_entries.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_Digitization_entries.o : $(src)components/SCT_Digitization_entries.cxx
	$(cpp_echo) $(src)components/SCT_Digitization_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Digitization_entries_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Digitization_entries_cppflags) $(SCT_Digitization_entries_cxx_cppflags) -I../src/components $(src)components/SCT_Digitization_entries.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_Digitization_entries_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)components/SCT_Digitization_entries.cxx

$(bin)$(binobj)SCT_Digitization_entries.o : $(SCT_Digitization_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/SCT_Digitization_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Digitization_entries_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Digitization_entries_cppflags) $(SCT_Digitization_entries_cxx_cppflags) -I../src/components $(src)components/SCT_Digitization_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_Digitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_Digitization_load.d

$(bin)$(binobj)SCT_Digitization_load.d :

$(bin)$(binobj)SCT_Digitization_load.o : $(cmt_final_setup_SCT_Digitization)

$(bin)$(binobj)SCT_Digitization_load.o : $(src)components/SCT_Digitization_load.cxx
	$(cpp_echo) $(src)components/SCT_Digitization_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Digitization_load_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Digitization_load_cppflags) $(SCT_Digitization_load_cxx_cppflags) -I../src/components $(src)components/SCT_Digitization_load.cxx
endif
endif

else
$(bin)SCT_Digitization_dependencies.make : $(SCT_Digitization_load_cxx_dependencies)

$(bin)SCT_Digitization_dependencies.make : $(src)components/SCT_Digitization_load.cxx

$(bin)$(binobj)SCT_Digitization_load.o : $(SCT_Digitization_load_cxx_dependencies)
	$(cpp_echo) $(src)components/SCT_Digitization_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_Digitization_pp_cppflags) $(lib_SCT_Digitization_pp_cppflags) $(SCT_Digitization_load_pp_cppflags) $(use_cppflags) $(SCT_Digitization_cppflags) $(lib_SCT_Digitization_cppflags) $(SCT_Digitization_load_cppflags) $(SCT_Digitization_load_cxx_cppflags) -I../src/components $(src)components/SCT_Digitization_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: SCT_Digitizationclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_Digitization.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_Digitizationclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library SCT_Digitization
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)SCT_Digitization$(library_suffix).a $(library_prefix)SCT_Digitization$(library_suffix).$(shlibsuffix) SCT_Digitization.stamp SCT_Digitization.shstamp
#-- end of cleanup_library ---------------
