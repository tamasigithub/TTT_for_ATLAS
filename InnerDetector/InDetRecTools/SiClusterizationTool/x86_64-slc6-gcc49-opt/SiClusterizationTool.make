#-- start of make_header -----------------

#====================================
#  Library SiClusterizationTool
#
#   Generated Tue Jan 29 19:05:37 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiClusterizationTool_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiClusterizationTool_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiClusterizationTool

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationTool = $(SiClusterizationTool_tag)_SiClusterizationTool.make
cmt_local_tagfile_SiClusterizationTool = $(bin)$(SiClusterizationTool_tag)_SiClusterizationTool.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationTool = $(SiClusterizationTool_tag).make
cmt_local_tagfile_SiClusterizationTool = $(bin)$(SiClusterizationTool_tag).make

endif

include $(cmt_local_tagfile_SiClusterizationTool)
#-include $(cmt_local_tagfile_SiClusterizationTool)

ifdef cmt_SiClusterizationTool_has_target_tag

cmt_final_setup_SiClusterizationTool = $(bin)setup_SiClusterizationTool.make
cmt_dependencies_in_SiClusterizationTool = $(bin)dependencies_SiClusterizationTool.in
#cmt_final_setup_SiClusterizationTool = $(bin)SiClusterizationTool_SiClusterizationToolsetup.make
cmt_local_SiClusterizationTool_makefile = $(bin)SiClusterizationTool.make

else

cmt_final_setup_SiClusterizationTool = $(bin)setup.make
cmt_dependencies_in_SiClusterizationTool = $(bin)dependencies.in
#cmt_final_setup_SiClusterizationTool = $(bin)SiClusterizationToolsetup.make
cmt_local_SiClusterizationTool_makefile = $(bin)SiClusterizationTool.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiClusterizationToolsetup.make

#SiClusterizationTool :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiClusterizationTool'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiClusterizationTool/
#SiClusterizationTool::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

SiClusterizationToollibname   = $(bin)$(library_prefix)SiClusterizationTool$(library_suffix)
SiClusterizationToollib       = $(SiClusterizationToollibname).a
SiClusterizationToolstamp     = $(bin)SiClusterizationTool.stamp
SiClusterizationToolshstamp   = $(bin)SiClusterizationTool.shstamp

SiClusterizationTool :: dirs  SiClusterizationToolLIB
	$(echo) "SiClusterizationTool ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#SiClusterizationToolLIB :: $(SiClusterizationToollib) $(SiClusterizationToolshstamp)
SiClusterizationToolLIB :: $(SiClusterizationToolshstamp)
	$(echo) "SiClusterizationTool : library ok"

$(SiClusterizationToollib) :: $(bin)SiClusterizationTool_entries.o $(bin)SiClusterizationTool_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(SiClusterizationToollib) $?
	$(lib_silent) $(ranlib) $(SiClusterizationToollib)
	$(lib_silent) cat /dev/null >$(SiClusterizationToolstamp)

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

$(SiClusterizationToollibname).$(shlibsuffix) :: $(bin)SiClusterizationTool_entries.o $(bin)SiClusterizationTool_load.o $(use_requirements) $(SiClusterizationToolstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)SiClusterizationTool_entries.o $(bin)SiClusterizationTool_load.o $(SiClusterizationTool_shlibflags)
	$(lib_silent) cat /dev/null >$(SiClusterizationToolstamp) && \
	  cat /dev/null >$(SiClusterizationToolshstamp)

$(SiClusterizationToolshstamp) :: $(SiClusterizationToollibname).$(shlibsuffix)
	$(lib_silent) if test -f $(SiClusterizationToollibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(SiClusterizationToolstamp) && \
	  cat /dev/null >$(SiClusterizationToolshstamp) ; fi

SiClusterizationToolclean ::
	$(cleanup_echo) objects SiClusterizationTool
	$(cleanup_silent) /bin/rm -f $(bin)SiClusterizationTool_entries.o $(bin)SiClusterizationTool_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)SiClusterizationTool_entries.o $(bin)SiClusterizationTool_load.o) $(patsubst %.o,%.dep,$(bin)SiClusterizationTool_entries.o $(bin)SiClusterizationTool_load.o) $(patsubst %.o,%.d.stamp,$(bin)SiClusterizationTool_entries.o $(bin)SiClusterizationTool_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf SiClusterizationTool_deps SiClusterizationTool_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
SiClusterizationToolinstallname = $(library_prefix)SiClusterizationTool$(library_suffix).$(shlibsuffix)

SiClusterizationTool :: SiClusterizationToolinstall ;

install :: SiClusterizationToolinstall ;

SiClusterizationToolinstall :: $(install_dir)/$(SiClusterizationToolinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(SiClusterizationToolinstallname) :: $(bin)$(SiClusterizationToolinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiClusterizationToolinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##SiClusterizationToolclean :: SiClusterizationTooluninstall

uninstall :: SiClusterizationTooluninstall ;

SiClusterizationTooluninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiClusterizationToolinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiClusterizationTool_entries.d

$(bin)$(binobj)SiClusterizationTool_entries.d :

$(bin)$(binobj)SiClusterizationTool_entries.o : $(cmt_final_setup_SiClusterizationTool)

$(bin)$(binobj)SiClusterizationTool_entries.o : $(src)components/SiClusterizationTool_entries.cxx
	$(cpp_echo) $(src)components/SiClusterizationTool_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationTool_pp_cppflags) $(lib_SiClusterizationTool_pp_cppflags) $(SiClusterizationTool_entries_pp_cppflags) $(use_cppflags) $(SiClusterizationTool_cppflags) $(lib_SiClusterizationTool_cppflags) $(SiClusterizationTool_entries_cppflags) $(SiClusterizationTool_entries_cxx_cppflags) -I../src/components $(src)components/SiClusterizationTool_entries.cxx
endif
endif

else
$(bin)SiClusterizationTool_dependencies.make : $(SiClusterizationTool_entries_cxx_dependencies)

$(bin)SiClusterizationTool_dependencies.make : $(src)components/SiClusterizationTool_entries.cxx

$(bin)$(binobj)SiClusterizationTool_entries.o : $(SiClusterizationTool_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/SiClusterizationTool_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationTool_pp_cppflags) $(lib_SiClusterizationTool_pp_cppflags) $(SiClusterizationTool_entries_pp_cppflags) $(use_cppflags) $(SiClusterizationTool_cppflags) $(lib_SiClusterizationTool_cppflags) $(SiClusterizationTool_entries_cppflags) $(SiClusterizationTool_entries_cxx_cppflags) -I../src/components $(src)components/SiClusterizationTool_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiClusterizationTool_load.d

$(bin)$(binobj)SiClusterizationTool_load.d :

$(bin)$(binobj)SiClusterizationTool_load.o : $(cmt_final_setup_SiClusterizationTool)

$(bin)$(binobj)SiClusterizationTool_load.o : $(src)components/SiClusterizationTool_load.cxx
	$(cpp_echo) $(src)components/SiClusterizationTool_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationTool_pp_cppflags) $(lib_SiClusterizationTool_pp_cppflags) $(SiClusterizationTool_load_pp_cppflags) $(use_cppflags) $(SiClusterizationTool_cppflags) $(lib_SiClusterizationTool_cppflags) $(SiClusterizationTool_load_cppflags) $(SiClusterizationTool_load_cxx_cppflags) -I../src/components $(src)components/SiClusterizationTool_load.cxx
endif
endif

else
$(bin)SiClusterizationTool_dependencies.make : $(SiClusterizationTool_load_cxx_dependencies)

$(bin)SiClusterizationTool_dependencies.make : $(src)components/SiClusterizationTool_load.cxx

$(bin)$(binobj)SiClusterizationTool_load.o : $(SiClusterizationTool_load_cxx_dependencies)
	$(cpp_echo) $(src)components/SiClusterizationTool_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationTool_pp_cppflags) $(lib_SiClusterizationTool_pp_cppflags) $(SiClusterizationTool_load_pp_cppflags) $(use_cppflags) $(SiClusterizationTool_cppflags) $(lib_SiClusterizationTool_cppflags) $(SiClusterizationTool_load_cppflags) $(SiClusterizationTool_load_cxx_cppflags) -I../src/components $(src)components/SiClusterizationTool_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: SiClusterizationToolclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiClusterizationTool.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiClusterizationToolclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library SiClusterizationTool
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)SiClusterizationTool$(library_suffix).a $(library_prefix)SiClusterizationTool$(library_suffix).$(shlibsuffix) SiClusterizationTool.stamp SiClusterizationTool.shstamp
#-- end of cleanup_library ---------------
