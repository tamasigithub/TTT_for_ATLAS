#-- start of make_header -----------------

#====================================
#  Library SiHitAnalysis
#
#   Generated Tue Jan 29 18:44:17 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiHitAnalysis_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiHitAnalysis_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiHitAnalysis

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysis = $(SiHitAnalysis_tag)_SiHitAnalysis.make
cmt_local_tagfile_SiHitAnalysis = $(bin)$(SiHitAnalysis_tag)_SiHitAnalysis.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiHitAnalysis_tag = $(tag)

#cmt_local_tagfile_SiHitAnalysis = $(SiHitAnalysis_tag).make
cmt_local_tagfile_SiHitAnalysis = $(bin)$(SiHitAnalysis_tag).make

endif

include $(cmt_local_tagfile_SiHitAnalysis)
#-include $(cmt_local_tagfile_SiHitAnalysis)

ifdef cmt_SiHitAnalysis_has_target_tag

cmt_final_setup_SiHitAnalysis = $(bin)setup_SiHitAnalysis.make
cmt_dependencies_in_SiHitAnalysis = $(bin)dependencies_SiHitAnalysis.in
#cmt_final_setup_SiHitAnalysis = $(bin)SiHitAnalysis_SiHitAnalysissetup.make
cmt_local_SiHitAnalysis_makefile = $(bin)SiHitAnalysis.make

else

cmt_final_setup_SiHitAnalysis = $(bin)setup.make
cmt_dependencies_in_SiHitAnalysis = $(bin)dependencies.in
#cmt_final_setup_SiHitAnalysis = $(bin)SiHitAnalysissetup.make
cmt_local_SiHitAnalysis_makefile = $(bin)SiHitAnalysis.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiHitAnalysissetup.make

#SiHitAnalysis :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiHitAnalysis'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiHitAnalysis/
#SiHitAnalysis::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

SiHitAnalysislibname   = $(bin)$(library_prefix)SiHitAnalysis$(library_suffix)
SiHitAnalysislib       = $(SiHitAnalysislibname).a
SiHitAnalysisstamp     = $(bin)SiHitAnalysis.stamp
SiHitAnalysisshstamp   = $(bin)SiHitAnalysis.shstamp

SiHitAnalysis :: dirs  SiHitAnalysisLIB
	$(echo) "SiHitAnalysis ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#SiHitAnalysisLIB :: $(SiHitAnalysislib) $(SiHitAnalysisshstamp)
SiHitAnalysisLIB :: $(SiHitAnalysisshstamp)
	$(echo) "SiHitAnalysis : library ok"

$(SiHitAnalysislib) :: $(bin)SiHitAnalysis.o $(bin)SiHitAnalysis_entries.o $(bin)SiHitAnalysis_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(SiHitAnalysislib) $?
	$(lib_silent) $(ranlib) $(SiHitAnalysislib)
	$(lib_silent) cat /dev/null >$(SiHitAnalysisstamp)

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

$(SiHitAnalysislibname).$(shlibsuffix) :: $(bin)SiHitAnalysis.o $(bin)SiHitAnalysis_entries.o $(bin)SiHitAnalysis_load.o $(use_requirements) $(SiHitAnalysisstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)SiHitAnalysis.o $(bin)SiHitAnalysis_entries.o $(bin)SiHitAnalysis_load.o $(SiHitAnalysis_shlibflags)
	$(lib_silent) cat /dev/null >$(SiHitAnalysisstamp) && \
	  cat /dev/null >$(SiHitAnalysisshstamp)

$(SiHitAnalysisshstamp) :: $(SiHitAnalysislibname).$(shlibsuffix)
	$(lib_silent) if test -f $(SiHitAnalysislibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(SiHitAnalysisstamp) && \
	  cat /dev/null >$(SiHitAnalysisshstamp) ; fi

SiHitAnalysisclean ::
	$(cleanup_echo) objects SiHitAnalysis
	$(cleanup_silent) /bin/rm -f $(bin)SiHitAnalysis.o $(bin)SiHitAnalysis_entries.o $(bin)SiHitAnalysis_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)SiHitAnalysis.o $(bin)SiHitAnalysis_entries.o $(bin)SiHitAnalysis_load.o) $(patsubst %.o,%.dep,$(bin)SiHitAnalysis.o $(bin)SiHitAnalysis_entries.o $(bin)SiHitAnalysis_load.o) $(patsubst %.o,%.d.stamp,$(bin)SiHitAnalysis.o $(bin)SiHitAnalysis_entries.o $(bin)SiHitAnalysis_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf SiHitAnalysis_deps SiHitAnalysis_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
SiHitAnalysisinstallname = $(library_prefix)SiHitAnalysis$(library_suffix).$(shlibsuffix)

SiHitAnalysis :: SiHitAnalysisinstall ;

install :: SiHitAnalysisinstall ;

SiHitAnalysisinstall :: $(install_dir)/$(SiHitAnalysisinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(SiHitAnalysisinstallname) :: $(bin)$(SiHitAnalysisinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiHitAnalysisinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##SiHitAnalysisclean :: SiHitAnalysisuninstall

uninstall :: SiHitAnalysisuninstall ;

SiHitAnalysisuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiHitAnalysisinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiHitAnalysisclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiHitAnalysis.d

$(bin)$(binobj)SiHitAnalysis.d :

$(bin)$(binobj)SiHitAnalysis.o : $(cmt_final_setup_SiHitAnalysis)

$(bin)$(binobj)SiHitAnalysis.o : $(src)SiHitAnalysis.cxx
	$(cpp_echo) $(src)SiHitAnalysis.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(lib_SiHitAnalysis_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(use_cppflags) $(SiHitAnalysis_cppflags) $(lib_SiHitAnalysis_cppflags) $(SiHitAnalysis_cppflags) $(SiHitAnalysis_cxx_cppflags)  $(src)SiHitAnalysis.cxx
endif
endif

else
$(bin)SiHitAnalysis_dependencies.make : $(SiHitAnalysis_cxx_dependencies)

$(bin)SiHitAnalysis_dependencies.make : $(src)SiHitAnalysis.cxx

$(bin)$(binobj)SiHitAnalysis.o : $(SiHitAnalysis_cxx_dependencies)
	$(cpp_echo) $(src)SiHitAnalysis.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(lib_SiHitAnalysis_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(use_cppflags) $(SiHitAnalysis_cppflags) $(lib_SiHitAnalysis_cppflags) $(SiHitAnalysis_cppflags) $(SiHitAnalysis_cxx_cppflags)  $(src)SiHitAnalysis.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiHitAnalysisclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiHitAnalysis_entries.d

$(bin)$(binobj)SiHitAnalysis_entries.d :

$(bin)$(binobj)SiHitAnalysis_entries.o : $(cmt_final_setup_SiHitAnalysis)

$(bin)$(binobj)SiHitAnalysis_entries.o : $(src)components/SiHitAnalysis_entries.cxx
	$(cpp_echo) $(src)components/SiHitAnalysis_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(lib_SiHitAnalysis_pp_cppflags) $(SiHitAnalysis_entries_pp_cppflags) $(use_cppflags) $(SiHitAnalysis_cppflags) $(lib_SiHitAnalysis_cppflags) $(SiHitAnalysis_entries_cppflags) $(SiHitAnalysis_entries_cxx_cppflags) -I../src/components $(src)components/SiHitAnalysis_entries.cxx
endif
endif

else
$(bin)SiHitAnalysis_dependencies.make : $(SiHitAnalysis_entries_cxx_dependencies)

$(bin)SiHitAnalysis_dependencies.make : $(src)components/SiHitAnalysis_entries.cxx

$(bin)$(binobj)SiHitAnalysis_entries.o : $(SiHitAnalysis_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/SiHitAnalysis_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(lib_SiHitAnalysis_pp_cppflags) $(SiHitAnalysis_entries_pp_cppflags) $(use_cppflags) $(SiHitAnalysis_cppflags) $(lib_SiHitAnalysis_cppflags) $(SiHitAnalysis_entries_cppflags) $(SiHitAnalysis_entries_cxx_cppflags) -I../src/components $(src)components/SiHitAnalysis_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiHitAnalysisclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiHitAnalysis_load.d

$(bin)$(binobj)SiHitAnalysis_load.d :

$(bin)$(binobj)SiHitAnalysis_load.o : $(cmt_final_setup_SiHitAnalysis)

$(bin)$(binobj)SiHitAnalysis_load.o : $(src)components/SiHitAnalysis_load.cxx
	$(cpp_echo) $(src)components/SiHitAnalysis_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(lib_SiHitAnalysis_pp_cppflags) $(SiHitAnalysis_load_pp_cppflags) $(use_cppflags) $(SiHitAnalysis_cppflags) $(lib_SiHitAnalysis_cppflags) $(SiHitAnalysis_load_cppflags) $(SiHitAnalysis_load_cxx_cppflags) -I../src/components $(src)components/SiHitAnalysis_load.cxx
endif
endif

else
$(bin)SiHitAnalysis_dependencies.make : $(SiHitAnalysis_load_cxx_dependencies)

$(bin)SiHitAnalysis_dependencies.make : $(src)components/SiHitAnalysis_load.cxx

$(bin)$(binobj)SiHitAnalysis_load.o : $(SiHitAnalysis_load_cxx_dependencies)
	$(cpp_echo) $(src)components/SiHitAnalysis_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiHitAnalysis_pp_cppflags) $(lib_SiHitAnalysis_pp_cppflags) $(SiHitAnalysis_load_pp_cppflags) $(use_cppflags) $(SiHitAnalysis_cppflags) $(lib_SiHitAnalysis_cppflags) $(SiHitAnalysis_load_cppflags) $(SiHitAnalysis_load_cxx_cppflags) -I../src/components $(src)components/SiHitAnalysis_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: SiHitAnalysisclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiHitAnalysis.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiHitAnalysisclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library SiHitAnalysis
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)SiHitAnalysis$(library_suffix).a $(library_prefix)SiHitAnalysis$(library_suffix).$(shlibsuffix) SiHitAnalysis.stamp SiHitAnalysis.shstamp
#-- end of cleanup_library ---------------
