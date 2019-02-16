#-- start of make_header -----------------

#====================================
#  Library SCT_G4_SD
#
#   Generated Tue Jan 29 18:51:17 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_G4_SD_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_G4_SD_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_G4_SD

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SD = $(SCT_G4_SD_tag)_SCT_G4_SD.make
cmt_local_tagfile_SCT_G4_SD = $(bin)$(SCT_G4_SD_tag)_SCT_G4_SD.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_G4_SD_tag = $(tag)

#cmt_local_tagfile_SCT_G4_SD = $(SCT_G4_SD_tag).make
cmt_local_tagfile_SCT_G4_SD = $(bin)$(SCT_G4_SD_tag).make

endif

include $(cmt_local_tagfile_SCT_G4_SD)
#-include $(cmt_local_tagfile_SCT_G4_SD)

ifdef cmt_SCT_G4_SD_has_target_tag

cmt_final_setup_SCT_G4_SD = $(bin)setup_SCT_G4_SD.make
cmt_dependencies_in_SCT_G4_SD = $(bin)dependencies_SCT_G4_SD.in
#cmt_final_setup_SCT_G4_SD = $(bin)SCT_G4_SD_SCT_G4_SDsetup.make
cmt_local_SCT_G4_SD_makefile = $(bin)SCT_G4_SD.make

else

cmt_final_setup_SCT_G4_SD = $(bin)setup.make
cmt_dependencies_in_SCT_G4_SD = $(bin)dependencies.in
#cmt_final_setup_SCT_G4_SD = $(bin)SCT_G4_SDsetup.make
cmt_local_SCT_G4_SD_makefile = $(bin)SCT_G4_SD.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_G4_SDsetup.make

#SCT_G4_SD :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_G4_SD'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_G4_SD/
#SCT_G4_SD::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

SCT_G4_SDlibname   = $(bin)$(library_prefix)SCT_G4_SD$(library_suffix)
SCT_G4_SDlib       = $(SCT_G4_SDlibname).a
SCT_G4_SDstamp     = $(bin)SCT_G4_SD.stamp
SCT_G4_SDshstamp   = $(bin)SCT_G4_SD.shstamp

SCT_G4_SD :: dirs  SCT_G4_SDLIB
	$(echo) "SCT_G4_SD ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#SCT_G4_SDLIB :: $(SCT_G4_SDlib) $(SCT_G4_SDshstamp)
SCT_G4_SDLIB :: $(SCT_G4_SDshstamp)
	$(echo) "SCT_G4_SD : library ok"

$(SCT_G4_SDlib) :: $(bin)SctSensorGmxSD.o $(bin)SctSensorSD.o $(bin)SctSensorSDTool.o $(bin)SctSensor_CTB.o $(bin)SctSensor_CTBTool.o $(bin)SCT_G4_SD_entries.o $(bin)SCT_G4_SD_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(SCT_G4_SDlib) $?
	$(lib_silent) $(ranlib) $(SCT_G4_SDlib)
	$(lib_silent) cat /dev/null >$(SCT_G4_SDstamp)

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

$(SCT_G4_SDlibname).$(shlibsuffix) :: $(bin)SctSensorGmxSD.o $(bin)SctSensorSD.o $(bin)SctSensorSDTool.o $(bin)SctSensor_CTB.o $(bin)SctSensor_CTBTool.o $(bin)SCT_G4_SD_entries.o $(bin)SCT_G4_SD_load.o $(use_requirements) $(SCT_G4_SDstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)SctSensorGmxSD.o $(bin)SctSensorSD.o $(bin)SctSensorSDTool.o $(bin)SctSensor_CTB.o $(bin)SctSensor_CTBTool.o $(bin)SCT_G4_SD_entries.o $(bin)SCT_G4_SD_load.o $(SCT_G4_SD_shlibflags)
	$(lib_silent) cat /dev/null >$(SCT_G4_SDstamp) && \
	  cat /dev/null >$(SCT_G4_SDshstamp)

$(SCT_G4_SDshstamp) :: $(SCT_G4_SDlibname).$(shlibsuffix)
	$(lib_silent) if test -f $(SCT_G4_SDlibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(SCT_G4_SDstamp) && \
	  cat /dev/null >$(SCT_G4_SDshstamp) ; fi

SCT_G4_SDclean ::
	$(cleanup_echo) objects SCT_G4_SD
	$(cleanup_silent) /bin/rm -f $(bin)SctSensorGmxSD.o $(bin)SctSensorSD.o $(bin)SctSensorSDTool.o $(bin)SctSensor_CTB.o $(bin)SctSensor_CTBTool.o $(bin)SCT_G4_SD_entries.o $(bin)SCT_G4_SD_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)SctSensorGmxSD.o $(bin)SctSensorSD.o $(bin)SctSensorSDTool.o $(bin)SctSensor_CTB.o $(bin)SctSensor_CTBTool.o $(bin)SCT_G4_SD_entries.o $(bin)SCT_G4_SD_load.o) $(patsubst %.o,%.dep,$(bin)SctSensorGmxSD.o $(bin)SctSensorSD.o $(bin)SctSensorSDTool.o $(bin)SctSensor_CTB.o $(bin)SctSensor_CTBTool.o $(bin)SCT_G4_SD_entries.o $(bin)SCT_G4_SD_load.o) $(patsubst %.o,%.d.stamp,$(bin)SctSensorGmxSD.o $(bin)SctSensorSD.o $(bin)SctSensorSDTool.o $(bin)SctSensor_CTB.o $(bin)SctSensor_CTBTool.o $(bin)SCT_G4_SD_entries.o $(bin)SCT_G4_SD_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf SCT_G4_SD_deps SCT_G4_SD_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
SCT_G4_SDinstallname = $(library_prefix)SCT_G4_SD$(library_suffix).$(shlibsuffix)

SCT_G4_SD :: SCT_G4_SDinstall ;

install :: SCT_G4_SDinstall ;

SCT_G4_SDinstall :: $(install_dir)/$(SCT_G4_SDinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(SCT_G4_SDinstallname) :: $(bin)$(SCT_G4_SDinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SCT_G4_SDinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##SCT_G4_SDclean :: SCT_G4_SDuninstall

uninstall :: SCT_G4_SDuninstall ;

SCT_G4_SDuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SCT_G4_SDinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_G4_SDclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SctSensorGmxSD.d

$(bin)$(binobj)SctSensorGmxSD.d :

$(bin)$(binobj)SctSensorGmxSD.o : $(cmt_final_setup_SCT_G4_SD)

$(bin)$(binobj)SctSensorGmxSD.o : $(src)SctSensorGmxSD.cxx
	$(cpp_echo) $(src)SctSensorGmxSD.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensorGmxSD_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensorGmxSD_cppflags) $(SctSensorGmxSD_cxx_cppflags)  $(src)SctSensorGmxSD.cxx
endif
endif

else
$(bin)SCT_G4_SD_dependencies.make : $(SctSensorGmxSD_cxx_dependencies)

$(bin)SCT_G4_SD_dependencies.make : $(src)SctSensorGmxSD.cxx

$(bin)$(binobj)SctSensorGmxSD.o : $(SctSensorGmxSD_cxx_dependencies)
	$(cpp_echo) $(src)SctSensorGmxSD.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensorGmxSD_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensorGmxSD_cppflags) $(SctSensorGmxSD_cxx_cppflags)  $(src)SctSensorGmxSD.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_G4_SDclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SctSensorSD.d

$(bin)$(binobj)SctSensorSD.d :

$(bin)$(binobj)SctSensorSD.o : $(cmt_final_setup_SCT_G4_SD)

$(bin)$(binobj)SctSensorSD.o : $(src)SctSensorSD.cxx
	$(cpp_echo) $(src)SctSensorSD.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensorSD_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensorSD_cppflags) $(SctSensorSD_cxx_cppflags)  $(src)SctSensorSD.cxx
endif
endif

else
$(bin)SCT_G4_SD_dependencies.make : $(SctSensorSD_cxx_dependencies)

$(bin)SCT_G4_SD_dependencies.make : $(src)SctSensorSD.cxx

$(bin)$(binobj)SctSensorSD.o : $(SctSensorSD_cxx_dependencies)
	$(cpp_echo) $(src)SctSensorSD.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensorSD_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensorSD_cppflags) $(SctSensorSD_cxx_cppflags)  $(src)SctSensorSD.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_G4_SDclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SctSensorSDTool.d

$(bin)$(binobj)SctSensorSDTool.d :

$(bin)$(binobj)SctSensorSDTool.o : $(cmt_final_setup_SCT_G4_SD)

$(bin)$(binobj)SctSensorSDTool.o : $(src)SctSensorSDTool.cxx
	$(cpp_echo) $(src)SctSensorSDTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensorSDTool_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensorSDTool_cppflags) $(SctSensorSDTool_cxx_cppflags)  $(src)SctSensorSDTool.cxx
endif
endif

else
$(bin)SCT_G4_SD_dependencies.make : $(SctSensorSDTool_cxx_dependencies)

$(bin)SCT_G4_SD_dependencies.make : $(src)SctSensorSDTool.cxx

$(bin)$(binobj)SctSensorSDTool.o : $(SctSensorSDTool_cxx_dependencies)
	$(cpp_echo) $(src)SctSensorSDTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensorSDTool_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensorSDTool_cppflags) $(SctSensorSDTool_cxx_cppflags)  $(src)SctSensorSDTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_G4_SDclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SctSensor_CTB.d

$(bin)$(binobj)SctSensor_CTB.d :

$(bin)$(binobj)SctSensor_CTB.o : $(cmt_final_setup_SCT_G4_SD)

$(bin)$(binobj)SctSensor_CTB.o : $(src)SctSensor_CTB.cxx
	$(cpp_echo) $(src)SctSensor_CTB.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensor_CTB_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensor_CTB_cppflags) $(SctSensor_CTB_cxx_cppflags)  $(src)SctSensor_CTB.cxx
endif
endif

else
$(bin)SCT_G4_SD_dependencies.make : $(SctSensor_CTB_cxx_dependencies)

$(bin)SCT_G4_SD_dependencies.make : $(src)SctSensor_CTB.cxx

$(bin)$(binobj)SctSensor_CTB.o : $(SctSensor_CTB_cxx_dependencies)
	$(cpp_echo) $(src)SctSensor_CTB.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensor_CTB_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensor_CTB_cppflags) $(SctSensor_CTB_cxx_cppflags)  $(src)SctSensor_CTB.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_G4_SDclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SctSensor_CTBTool.d

$(bin)$(binobj)SctSensor_CTBTool.d :

$(bin)$(binobj)SctSensor_CTBTool.o : $(cmt_final_setup_SCT_G4_SD)

$(bin)$(binobj)SctSensor_CTBTool.o : $(src)SctSensor_CTBTool.cxx
	$(cpp_echo) $(src)SctSensor_CTBTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensor_CTBTool_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensor_CTBTool_cppflags) $(SctSensor_CTBTool_cxx_cppflags)  $(src)SctSensor_CTBTool.cxx
endif
endif

else
$(bin)SCT_G4_SD_dependencies.make : $(SctSensor_CTBTool_cxx_dependencies)

$(bin)SCT_G4_SD_dependencies.make : $(src)SctSensor_CTBTool.cxx

$(bin)$(binobj)SctSensor_CTBTool.o : $(SctSensor_CTBTool_cxx_dependencies)
	$(cpp_echo) $(src)SctSensor_CTBTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SctSensor_CTBTool_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SctSensor_CTBTool_cppflags) $(SctSensor_CTBTool_cxx_cppflags)  $(src)SctSensor_CTBTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_G4_SDclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_G4_SD_entries.d

$(bin)$(binobj)SCT_G4_SD_entries.d :

$(bin)$(binobj)SCT_G4_SD_entries.o : $(cmt_final_setup_SCT_G4_SD)

$(bin)$(binobj)SCT_G4_SD_entries.o : $(src)components/SCT_G4_SD_entries.cxx
	$(cpp_echo) $(src)components/SCT_G4_SD_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SCT_G4_SD_entries_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SCT_G4_SD_entries_cppflags) $(SCT_G4_SD_entries_cxx_cppflags) -I../src/components $(src)components/SCT_G4_SD_entries.cxx
endif
endif

else
$(bin)SCT_G4_SD_dependencies.make : $(SCT_G4_SD_entries_cxx_dependencies)

$(bin)SCT_G4_SD_dependencies.make : $(src)components/SCT_G4_SD_entries.cxx

$(bin)$(binobj)SCT_G4_SD_entries.o : $(SCT_G4_SD_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/SCT_G4_SD_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SCT_G4_SD_entries_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SCT_G4_SD_entries_cppflags) $(SCT_G4_SD_entries_cxx_cppflags) -I../src/components $(src)components/SCT_G4_SD_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SCT_G4_SDclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_G4_SD_load.d

$(bin)$(binobj)SCT_G4_SD_load.d :

$(bin)$(binobj)SCT_G4_SD_load.o : $(cmt_final_setup_SCT_G4_SD)

$(bin)$(binobj)SCT_G4_SD_load.o : $(src)components/SCT_G4_SD_load.cxx
	$(cpp_echo) $(src)components/SCT_G4_SD_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SCT_G4_SD_load_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SCT_G4_SD_load_cppflags) $(SCT_G4_SD_load_cxx_cppflags) -I../src/components $(src)components/SCT_G4_SD_load.cxx
endif
endif

else
$(bin)SCT_G4_SD_dependencies.make : $(SCT_G4_SD_load_cxx_dependencies)

$(bin)SCT_G4_SD_dependencies.make : $(src)components/SCT_G4_SD_load.cxx

$(bin)$(binobj)SCT_G4_SD_load.o : $(SCT_G4_SD_load_cxx_dependencies)
	$(cpp_echo) $(src)components/SCT_G4_SD_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SCT_G4_SD_pp_cppflags) $(lib_SCT_G4_SD_pp_cppflags) $(SCT_G4_SD_load_pp_cppflags) $(use_cppflags) $(SCT_G4_SD_cppflags) $(lib_SCT_G4_SD_cppflags) $(SCT_G4_SD_load_cppflags) $(SCT_G4_SD_load_cxx_cppflags) -I../src/components $(src)components/SCT_G4_SD_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: SCT_G4_SDclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_G4_SD.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_G4_SDclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library SCT_G4_SD
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)SCT_G4_SD$(library_suffix).a $(library_prefix)SCT_G4_SD$(library_suffix).$(shlibsuffix) SCT_G4_SD.stamp SCT_G4_SD.shstamp
#-- end of cleanup_library ---------------
