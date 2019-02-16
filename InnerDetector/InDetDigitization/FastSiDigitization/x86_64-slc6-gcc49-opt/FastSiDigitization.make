#-- start of make_header -----------------

#====================================
#  Library FastSiDigitization
#
#   Generated Tue Jan 29 19:10:44 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_FastSiDigitization_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_FastSiDigitization_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_FastSiDigitization

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitization = $(FastSiDigitization_tag)_FastSiDigitization.make
cmt_local_tagfile_FastSiDigitization = $(bin)$(FastSiDigitization_tag)_FastSiDigitization.make

else

tags      = $(tag),$(CMTEXTRATAGS)

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitization = $(FastSiDigitization_tag).make
cmt_local_tagfile_FastSiDigitization = $(bin)$(FastSiDigitization_tag).make

endif

include $(cmt_local_tagfile_FastSiDigitization)
#-include $(cmt_local_tagfile_FastSiDigitization)

ifdef cmt_FastSiDigitization_has_target_tag

cmt_final_setup_FastSiDigitization = $(bin)setup_FastSiDigitization.make
cmt_dependencies_in_FastSiDigitization = $(bin)dependencies_FastSiDigitization.in
#cmt_final_setup_FastSiDigitization = $(bin)FastSiDigitization_FastSiDigitizationsetup.make
cmt_local_FastSiDigitization_makefile = $(bin)FastSiDigitization.make

else

cmt_final_setup_FastSiDigitization = $(bin)setup.make
cmt_dependencies_in_FastSiDigitization = $(bin)dependencies.in
#cmt_final_setup_FastSiDigitization = $(bin)FastSiDigitizationsetup.make
cmt_local_FastSiDigitization_makefile = $(bin)FastSiDigitization.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)FastSiDigitizationsetup.make

#FastSiDigitization :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'FastSiDigitization'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = FastSiDigitization/
#FastSiDigitization::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

FastSiDigitizationlibname   = $(bin)$(library_prefix)FastSiDigitization$(library_suffix)
FastSiDigitizationlib       = $(FastSiDigitizationlibname).a
FastSiDigitizationstamp     = $(bin)FastSiDigitization.stamp
FastSiDigitizationshstamp   = $(bin)FastSiDigitization.shstamp

FastSiDigitization :: dirs  FastSiDigitizationLIB
	$(echo) "FastSiDigitization ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#FastSiDigitizationLIB :: $(FastSiDigitizationlib) $(FastSiDigitizationshstamp)
FastSiDigitizationLIB :: $(FastSiDigitizationshstamp)
	$(echo) "FastSiDigitization : library ok"

$(FastSiDigitizationlib) :: $(bin)PixelFastDigitization.o $(bin)PixelFastDigitizationTool.o $(bin)SCT_FastDigitization.o $(bin)SCT_FastDigitizationTool.o $(bin)SCT_SmearedDigitizationTool.o $(bin)SiSmearedDigitization.o $(bin)SiSmearedDigitizationTool.o $(bin)FastSiDigitization_entries.o $(bin)FastSiDigitization_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(FastSiDigitizationlib) $?
	$(lib_silent) $(ranlib) $(FastSiDigitizationlib)
	$(lib_silent) cat /dev/null >$(FastSiDigitizationstamp)

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

$(FastSiDigitizationlibname).$(shlibsuffix) :: $(bin)PixelFastDigitization.o $(bin)PixelFastDigitizationTool.o $(bin)SCT_FastDigitization.o $(bin)SCT_FastDigitizationTool.o $(bin)SCT_SmearedDigitizationTool.o $(bin)SiSmearedDigitization.o $(bin)SiSmearedDigitizationTool.o $(bin)FastSiDigitization_entries.o $(bin)FastSiDigitization_load.o $(use_requirements) $(FastSiDigitizationstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)PixelFastDigitization.o $(bin)PixelFastDigitizationTool.o $(bin)SCT_FastDigitization.o $(bin)SCT_FastDigitizationTool.o $(bin)SCT_SmearedDigitizationTool.o $(bin)SiSmearedDigitization.o $(bin)SiSmearedDigitizationTool.o $(bin)FastSiDigitization_entries.o $(bin)FastSiDigitization_load.o $(FastSiDigitization_shlibflags)
	$(lib_silent) cat /dev/null >$(FastSiDigitizationstamp) && \
	  cat /dev/null >$(FastSiDigitizationshstamp)

$(FastSiDigitizationshstamp) :: $(FastSiDigitizationlibname).$(shlibsuffix)
	$(lib_silent) if test -f $(FastSiDigitizationlibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(FastSiDigitizationstamp) && \
	  cat /dev/null >$(FastSiDigitizationshstamp) ; fi

FastSiDigitizationclean ::
	$(cleanup_echo) objects FastSiDigitization
	$(cleanup_silent) /bin/rm -f $(bin)PixelFastDigitization.o $(bin)PixelFastDigitizationTool.o $(bin)SCT_FastDigitization.o $(bin)SCT_FastDigitizationTool.o $(bin)SCT_SmearedDigitizationTool.o $(bin)SiSmearedDigitization.o $(bin)SiSmearedDigitizationTool.o $(bin)FastSiDigitization_entries.o $(bin)FastSiDigitization_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)PixelFastDigitization.o $(bin)PixelFastDigitizationTool.o $(bin)SCT_FastDigitization.o $(bin)SCT_FastDigitizationTool.o $(bin)SCT_SmearedDigitizationTool.o $(bin)SiSmearedDigitization.o $(bin)SiSmearedDigitizationTool.o $(bin)FastSiDigitization_entries.o $(bin)FastSiDigitization_load.o) $(patsubst %.o,%.dep,$(bin)PixelFastDigitization.o $(bin)PixelFastDigitizationTool.o $(bin)SCT_FastDigitization.o $(bin)SCT_FastDigitizationTool.o $(bin)SCT_SmearedDigitizationTool.o $(bin)SiSmearedDigitization.o $(bin)SiSmearedDigitizationTool.o $(bin)FastSiDigitization_entries.o $(bin)FastSiDigitization_load.o) $(patsubst %.o,%.d.stamp,$(bin)PixelFastDigitization.o $(bin)PixelFastDigitizationTool.o $(bin)SCT_FastDigitization.o $(bin)SCT_FastDigitizationTool.o $(bin)SCT_SmearedDigitizationTool.o $(bin)SiSmearedDigitization.o $(bin)SiSmearedDigitizationTool.o $(bin)FastSiDigitization_entries.o $(bin)FastSiDigitization_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf FastSiDigitization_deps FastSiDigitization_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
FastSiDigitizationinstallname = $(library_prefix)FastSiDigitization$(library_suffix).$(shlibsuffix)

FastSiDigitization :: FastSiDigitizationinstall ;

install :: FastSiDigitizationinstall ;

FastSiDigitizationinstall :: $(install_dir)/$(FastSiDigitizationinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(FastSiDigitizationinstallname) :: $(bin)$(FastSiDigitizationinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(FastSiDigitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##FastSiDigitizationclean :: FastSiDigitizationuninstall

uninstall :: FastSiDigitizationuninstall ;

FastSiDigitizationuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(FastSiDigitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelFastDigitization.d

$(bin)$(binobj)PixelFastDigitization.d :

$(bin)$(binobj)PixelFastDigitization.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)PixelFastDigitization.o : $(src)PixelFastDigitization.cxx
	$(cpp_echo) $(src)PixelFastDigitization.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(PixelFastDigitization_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(PixelFastDigitization_cppflags) $(PixelFastDigitization_cxx_cppflags)  $(src)PixelFastDigitization.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(PixelFastDigitization_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)PixelFastDigitization.cxx

$(bin)$(binobj)PixelFastDigitization.o : $(PixelFastDigitization_cxx_dependencies)
	$(cpp_echo) $(src)PixelFastDigitization.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(PixelFastDigitization_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(PixelFastDigitization_cppflags) $(PixelFastDigitization_cxx_cppflags)  $(src)PixelFastDigitization.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelFastDigitizationTool.d

$(bin)$(binobj)PixelFastDigitizationTool.d :

$(bin)$(binobj)PixelFastDigitizationTool.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)PixelFastDigitizationTool.o : $(src)PixelFastDigitizationTool.cxx
	$(cpp_echo) $(src)PixelFastDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(PixelFastDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(PixelFastDigitizationTool_cppflags) $(PixelFastDigitizationTool_cxx_cppflags)  $(src)PixelFastDigitizationTool.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(PixelFastDigitizationTool_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)PixelFastDigitizationTool.cxx

$(bin)$(binobj)PixelFastDigitizationTool.o : $(PixelFastDigitizationTool_cxx_dependencies)
	$(cpp_echo) $(src)PixelFastDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(PixelFastDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(PixelFastDigitizationTool_cppflags) $(PixelFastDigitizationTool_cxx_cppflags)  $(src)PixelFastDigitizationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_FastDigitization.d

$(bin)$(binobj)SCT_FastDigitization.d :

$(bin)$(binobj)SCT_FastDigitization.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)SCT_FastDigitization.o : $(src)SCT_FastDigitization.cxx
	$(cpp_echo) $(src)SCT_FastDigitization.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SCT_FastDigitization_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SCT_FastDigitization_cppflags) $(SCT_FastDigitization_cxx_cppflags)  $(src)SCT_FastDigitization.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(SCT_FastDigitization_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)SCT_FastDigitization.cxx

$(bin)$(binobj)SCT_FastDigitization.o : $(SCT_FastDigitization_cxx_dependencies)
	$(cpp_echo) $(src)SCT_FastDigitization.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SCT_FastDigitization_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SCT_FastDigitization_cppflags) $(SCT_FastDigitization_cxx_cppflags)  $(src)SCT_FastDigitization.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_FastDigitizationTool.d

$(bin)$(binobj)SCT_FastDigitizationTool.d :

$(bin)$(binobj)SCT_FastDigitizationTool.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)SCT_FastDigitizationTool.o : $(src)SCT_FastDigitizationTool.cxx
	$(cpp_echo) $(src)SCT_FastDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SCT_FastDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SCT_FastDigitizationTool_cppflags) $(SCT_FastDigitizationTool_cxx_cppflags)  $(src)SCT_FastDigitizationTool.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(SCT_FastDigitizationTool_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)SCT_FastDigitizationTool.cxx

$(bin)$(binobj)SCT_FastDigitizationTool.o : $(SCT_FastDigitizationTool_cxx_dependencies)
	$(cpp_echo) $(src)SCT_FastDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SCT_FastDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SCT_FastDigitizationTool_cppflags) $(SCT_FastDigitizationTool_cxx_cppflags)  $(src)SCT_FastDigitizationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_SmearedDigitizationTool.d

$(bin)$(binobj)SCT_SmearedDigitizationTool.d :

$(bin)$(binobj)SCT_SmearedDigitizationTool.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)SCT_SmearedDigitizationTool.o : $(src)SCT_SmearedDigitizationTool.cxx
	$(cpp_echo) $(src)SCT_SmearedDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SCT_SmearedDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SCT_SmearedDigitizationTool_cppflags) $(SCT_SmearedDigitizationTool_cxx_cppflags)  $(src)SCT_SmearedDigitizationTool.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(SCT_SmearedDigitizationTool_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)SCT_SmearedDigitizationTool.cxx

$(bin)$(binobj)SCT_SmearedDigitizationTool.o : $(SCT_SmearedDigitizationTool_cxx_dependencies)
	$(cpp_echo) $(src)SCT_SmearedDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SCT_SmearedDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SCT_SmearedDigitizationTool_cppflags) $(SCT_SmearedDigitizationTool_cxx_cppflags)  $(src)SCT_SmearedDigitizationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiSmearedDigitization.d

$(bin)$(binobj)SiSmearedDigitization.d :

$(bin)$(binobj)SiSmearedDigitization.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)SiSmearedDigitization.o : $(src)SiSmearedDigitization.cxx
	$(cpp_echo) $(src)SiSmearedDigitization.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SiSmearedDigitization_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SiSmearedDigitization_cppflags) $(SiSmearedDigitization_cxx_cppflags)  $(src)SiSmearedDigitization.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(SiSmearedDigitization_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)SiSmearedDigitization.cxx

$(bin)$(binobj)SiSmearedDigitization.o : $(SiSmearedDigitization_cxx_dependencies)
	$(cpp_echo) $(src)SiSmearedDigitization.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SiSmearedDigitization_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SiSmearedDigitization_cppflags) $(SiSmearedDigitization_cxx_cppflags)  $(src)SiSmearedDigitization.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiSmearedDigitizationTool.d

$(bin)$(binobj)SiSmearedDigitizationTool.d :

$(bin)$(binobj)SiSmearedDigitizationTool.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)SiSmearedDigitizationTool.o : $(src)SiSmearedDigitizationTool.cxx
	$(cpp_echo) $(src)SiSmearedDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SiSmearedDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SiSmearedDigitizationTool_cppflags) $(SiSmearedDigitizationTool_cxx_cppflags)  $(src)SiSmearedDigitizationTool.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(SiSmearedDigitizationTool_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)SiSmearedDigitizationTool.cxx

$(bin)$(binobj)SiSmearedDigitizationTool.o : $(SiSmearedDigitizationTool_cxx_dependencies)
	$(cpp_echo) $(src)SiSmearedDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(SiSmearedDigitizationTool_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(SiSmearedDigitizationTool_cppflags) $(SiSmearedDigitizationTool_cxx_cppflags)  $(src)SiSmearedDigitizationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)FastSiDigitization_entries.d

$(bin)$(binobj)FastSiDigitization_entries.d :

$(bin)$(binobj)FastSiDigitization_entries.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)FastSiDigitization_entries.o : $(src)components/FastSiDigitization_entries.cxx
	$(cpp_echo) $(src)components/FastSiDigitization_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(FastSiDigitization_entries_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(FastSiDigitization_entries_cppflags) $(FastSiDigitization_entries_cxx_cppflags) -I../src/components $(src)components/FastSiDigitization_entries.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(FastSiDigitization_entries_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)components/FastSiDigitization_entries.cxx

$(bin)$(binobj)FastSiDigitization_entries.o : $(FastSiDigitization_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/FastSiDigitization_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(FastSiDigitization_entries_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(FastSiDigitization_entries_cppflags) $(FastSiDigitization_entries_cxx_cppflags) -I../src/components $(src)components/FastSiDigitization_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),FastSiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)FastSiDigitization_load.d

$(bin)$(binobj)FastSiDigitization_load.d :

$(bin)$(binobj)FastSiDigitization_load.o : $(cmt_final_setup_FastSiDigitization)

$(bin)$(binobj)FastSiDigitization_load.o : $(src)components/FastSiDigitization_load.cxx
	$(cpp_echo) $(src)components/FastSiDigitization_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(FastSiDigitization_load_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(FastSiDigitization_load_cppflags) $(FastSiDigitization_load_cxx_cppflags) -I../src/components $(src)components/FastSiDigitization_load.cxx
endif
endif

else
$(bin)FastSiDigitization_dependencies.make : $(FastSiDigitization_load_cxx_dependencies)

$(bin)FastSiDigitization_dependencies.make : $(src)components/FastSiDigitization_load.cxx

$(bin)$(binobj)FastSiDigitization_load.o : $(FastSiDigitization_load_cxx_dependencies)
	$(cpp_echo) $(src)components/FastSiDigitization_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(FastSiDigitization_pp_cppflags) $(lib_FastSiDigitization_pp_cppflags) $(FastSiDigitization_load_pp_cppflags) $(use_cppflags) $(FastSiDigitization_cppflags) $(lib_FastSiDigitization_cppflags) $(FastSiDigitization_load_cppflags) $(FastSiDigitization_load_cxx_cppflags) -I../src/components $(src)components/FastSiDigitization_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: FastSiDigitizationclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(FastSiDigitization.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

FastSiDigitizationclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library FastSiDigitization
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)FastSiDigitization$(library_suffix).a $(library_prefix)FastSiDigitization$(library_suffix).$(shlibsuffix) FastSiDigitization.stamp FastSiDigitization.shstamp
#-- end of cleanup_library ---------------
