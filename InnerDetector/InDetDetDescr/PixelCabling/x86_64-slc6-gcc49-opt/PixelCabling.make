#-- start of make_header -----------------

#====================================
#  Library PixelCabling
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

cmt_PixelCabling_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelCabling_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelCabling

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCabling = $(PixelCabling_tag)_PixelCabling.make
cmt_local_tagfile_PixelCabling = $(bin)$(PixelCabling_tag)_PixelCabling.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelCabling_tag = $(tag)

#cmt_local_tagfile_PixelCabling = $(PixelCabling_tag).make
cmt_local_tagfile_PixelCabling = $(bin)$(PixelCabling_tag).make

endif

include $(cmt_local_tagfile_PixelCabling)
#-include $(cmt_local_tagfile_PixelCabling)

ifdef cmt_PixelCabling_has_target_tag

cmt_final_setup_PixelCabling = $(bin)setup_PixelCabling.make
cmt_dependencies_in_PixelCabling = $(bin)dependencies_PixelCabling.in
#cmt_final_setup_PixelCabling = $(bin)PixelCabling_PixelCablingsetup.make
cmt_local_PixelCabling_makefile = $(bin)PixelCabling.make

else

cmt_final_setup_PixelCabling = $(bin)setup.make
cmt_dependencies_in_PixelCabling = $(bin)dependencies.in
#cmt_final_setup_PixelCabling = $(bin)PixelCablingsetup.make
cmt_local_PixelCabling_makefile = $(bin)PixelCabling.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelCablingsetup.make

#PixelCabling :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelCabling'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelCabling/
#PixelCabling::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

PixelCablinglibname   = $(bin)$(library_prefix)PixelCabling$(library_suffix)
PixelCablinglib       = $(PixelCablinglibname).a
PixelCablingstamp     = $(bin)PixelCabling.stamp
PixelCablingshstamp   = $(bin)PixelCabling.shstamp

PixelCabling :: dirs  PixelCablingLIB
	$(echo) "PixelCabling ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#PixelCablingLIB :: $(PixelCablinglib) $(PixelCablingshstamp)
PixelCablingLIB :: $(PixelCablingshstamp)
	$(echo) "PixelCabling : library ok"

$(PixelCablinglib) :: $(bin)PixelCablingData.o $(bin)PixelCablingSvc.o $(bin)PixelFillCablingData.o $(bin)PixelFillCablingData_Final.o $(bin)PixelCabling_entries.o $(bin)PixelCabling_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(PixelCablinglib) $?
	$(lib_silent) $(ranlib) $(PixelCablinglib)
	$(lib_silent) cat /dev/null >$(PixelCablingstamp)

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

$(PixelCablinglibname).$(shlibsuffix) :: $(bin)PixelCablingData.o $(bin)PixelCablingSvc.o $(bin)PixelFillCablingData.o $(bin)PixelFillCablingData_Final.o $(bin)PixelCabling_entries.o $(bin)PixelCabling_load.o $(use_requirements) $(PixelCablingstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)PixelCablingData.o $(bin)PixelCablingSvc.o $(bin)PixelFillCablingData.o $(bin)PixelFillCablingData_Final.o $(bin)PixelCabling_entries.o $(bin)PixelCabling_load.o $(PixelCabling_shlibflags)
	$(lib_silent) cat /dev/null >$(PixelCablingstamp) && \
	  cat /dev/null >$(PixelCablingshstamp)

$(PixelCablingshstamp) :: $(PixelCablinglibname).$(shlibsuffix)
	$(lib_silent) if test -f $(PixelCablinglibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(PixelCablingstamp) && \
	  cat /dev/null >$(PixelCablingshstamp) ; fi

PixelCablingclean ::
	$(cleanup_echo) objects PixelCabling
	$(cleanup_silent) /bin/rm -f $(bin)PixelCablingData.o $(bin)PixelCablingSvc.o $(bin)PixelFillCablingData.o $(bin)PixelFillCablingData_Final.o $(bin)PixelCabling_entries.o $(bin)PixelCabling_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)PixelCablingData.o $(bin)PixelCablingSvc.o $(bin)PixelFillCablingData.o $(bin)PixelFillCablingData_Final.o $(bin)PixelCabling_entries.o $(bin)PixelCabling_load.o) $(patsubst %.o,%.dep,$(bin)PixelCablingData.o $(bin)PixelCablingSvc.o $(bin)PixelFillCablingData.o $(bin)PixelFillCablingData_Final.o $(bin)PixelCabling_entries.o $(bin)PixelCabling_load.o) $(patsubst %.o,%.d.stamp,$(bin)PixelCablingData.o $(bin)PixelCablingSvc.o $(bin)PixelFillCablingData.o $(bin)PixelFillCablingData_Final.o $(bin)PixelCabling_entries.o $(bin)PixelCabling_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf PixelCabling_deps PixelCabling_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
PixelCablinginstallname = $(library_prefix)PixelCabling$(library_suffix).$(shlibsuffix)

PixelCabling :: PixelCablinginstall ;

install :: PixelCablinginstall ;

PixelCablinginstall :: $(install_dir)/$(PixelCablinginstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(PixelCablinginstallname) :: $(bin)$(PixelCablinginstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(PixelCablinginstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##PixelCablingclean :: PixelCablinguninstall

uninstall :: PixelCablinguninstall ;

PixelCablinguninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(PixelCablinginstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelCablingclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelCablingData.d

$(bin)$(binobj)PixelCablingData.d :

$(bin)$(binobj)PixelCablingData.o : $(cmt_final_setup_PixelCabling)

$(bin)$(binobj)PixelCablingData.o : $(src)PixelCablingData.cxx
	$(cpp_echo) $(src)PixelCablingData.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCablingData_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCablingData_cppflags) $(PixelCablingData_cxx_cppflags)  $(src)PixelCablingData.cxx
endif
endif

else
$(bin)PixelCabling_dependencies.make : $(PixelCablingData_cxx_dependencies)

$(bin)PixelCabling_dependencies.make : $(src)PixelCablingData.cxx

$(bin)$(binobj)PixelCablingData.o : $(PixelCablingData_cxx_dependencies)
	$(cpp_echo) $(src)PixelCablingData.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCablingData_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCablingData_cppflags) $(PixelCablingData_cxx_cppflags)  $(src)PixelCablingData.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelCablingclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelCablingSvc.d

$(bin)$(binobj)PixelCablingSvc.d :

$(bin)$(binobj)PixelCablingSvc.o : $(cmt_final_setup_PixelCabling)

$(bin)$(binobj)PixelCablingSvc.o : $(src)PixelCablingSvc.cxx
	$(cpp_echo) $(src)PixelCablingSvc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCablingSvc_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCablingSvc_cppflags) $(PixelCablingSvc_cxx_cppflags)  $(src)PixelCablingSvc.cxx
endif
endif

else
$(bin)PixelCabling_dependencies.make : $(PixelCablingSvc_cxx_dependencies)

$(bin)PixelCabling_dependencies.make : $(src)PixelCablingSvc.cxx

$(bin)$(binobj)PixelCablingSvc.o : $(PixelCablingSvc_cxx_dependencies)
	$(cpp_echo) $(src)PixelCablingSvc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCablingSvc_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCablingSvc_cppflags) $(PixelCablingSvc_cxx_cppflags)  $(src)PixelCablingSvc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelCablingclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelFillCablingData.d

$(bin)$(binobj)PixelFillCablingData.d :

$(bin)$(binobj)PixelFillCablingData.o : $(cmt_final_setup_PixelCabling)

$(bin)$(binobj)PixelFillCablingData.o : $(src)PixelFillCablingData.cxx
	$(cpp_echo) $(src)PixelFillCablingData.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelFillCablingData_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelFillCablingData_cppflags) $(PixelFillCablingData_cxx_cppflags)  $(src)PixelFillCablingData.cxx
endif
endif

else
$(bin)PixelCabling_dependencies.make : $(PixelFillCablingData_cxx_dependencies)

$(bin)PixelCabling_dependencies.make : $(src)PixelFillCablingData.cxx

$(bin)$(binobj)PixelFillCablingData.o : $(PixelFillCablingData_cxx_dependencies)
	$(cpp_echo) $(src)PixelFillCablingData.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelFillCablingData_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelFillCablingData_cppflags) $(PixelFillCablingData_cxx_cppflags)  $(src)PixelFillCablingData.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelCablingclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelFillCablingData_Final.d

$(bin)$(binobj)PixelFillCablingData_Final.d :

$(bin)$(binobj)PixelFillCablingData_Final.o : $(cmt_final_setup_PixelCabling)

$(bin)$(binobj)PixelFillCablingData_Final.o : $(src)PixelFillCablingData_Final.cxx
	$(cpp_echo) $(src)PixelFillCablingData_Final.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelFillCablingData_Final_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelFillCablingData_Final_cppflags) $(PixelFillCablingData_Final_cxx_cppflags)  $(src)PixelFillCablingData_Final.cxx
endif
endif

else
$(bin)PixelCabling_dependencies.make : $(PixelFillCablingData_Final_cxx_dependencies)

$(bin)PixelCabling_dependencies.make : $(src)PixelFillCablingData_Final.cxx

$(bin)$(binobj)PixelFillCablingData_Final.o : $(PixelFillCablingData_Final_cxx_dependencies)
	$(cpp_echo) $(src)PixelFillCablingData_Final.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelFillCablingData_Final_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelFillCablingData_Final_cppflags) $(PixelFillCablingData_Final_cxx_cppflags)  $(src)PixelFillCablingData_Final.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelCablingclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelCabling_entries.d

$(bin)$(binobj)PixelCabling_entries.d :

$(bin)$(binobj)PixelCabling_entries.o : $(cmt_final_setup_PixelCabling)

$(bin)$(binobj)PixelCabling_entries.o : $(src)components/PixelCabling_entries.cxx
	$(cpp_echo) $(src)components/PixelCabling_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCabling_entries_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCabling_entries_cppflags) $(PixelCabling_entries_cxx_cppflags) -I../src/components $(src)components/PixelCabling_entries.cxx
endif
endif

else
$(bin)PixelCabling_dependencies.make : $(PixelCabling_entries_cxx_dependencies)

$(bin)PixelCabling_dependencies.make : $(src)components/PixelCabling_entries.cxx

$(bin)$(binobj)PixelCabling_entries.o : $(PixelCabling_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/PixelCabling_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCabling_entries_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCabling_entries_cppflags) $(PixelCabling_entries_cxx_cppflags) -I../src/components $(src)components/PixelCabling_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelCablingclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelCabling_load.d

$(bin)$(binobj)PixelCabling_load.d :

$(bin)$(binobj)PixelCabling_load.o : $(cmt_final_setup_PixelCabling)

$(bin)$(binobj)PixelCabling_load.o : $(src)components/PixelCabling_load.cxx
	$(cpp_echo) $(src)components/PixelCabling_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCabling_load_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCabling_load_cppflags) $(PixelCabling_load_cxx_cppflags) -I../src/components $(src)components/PixelCabling_load.cxx
endif
endif

else
$(bin)PixelCabling_dependencies.make : $(PixelCabling_load_cxx_dependencies)

$(bin)PixelCabling_dependencies.make : $(src)components/PixelCabling_load.cxx

$(bin)$(binobj)PixelCabling_load.o : $(PixelCabling_load_cxx_dependencies)
	$(cpp_echo) $(src)components/PixelCabling_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelCabling_pp_cppflags) $(lib_PixelCabling_pp_cppflags) $(PixelCabling_load_pp_cppflags) $(use_cppflags) $(PixelCabling_cppflags) $(lib_PixelCabling_cppflags) $(PixelCabling_load_cppflags) $(PixelCabling_load_cxx_cppflags) -I../src/components $(src)components/PixelCabling_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: PixelCablingclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelCabling.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelCablingclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library PixelCabling
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)PixelCabling$(library_suffix).a $(library_prefix)PixelCabling$(library_suffix).$(shlibsuffix) PixelCabling.stamp PixelCabling.shstamp
#-- end of cleanup_library ---------------
