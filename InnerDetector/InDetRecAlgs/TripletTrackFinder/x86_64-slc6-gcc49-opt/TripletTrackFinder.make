#-- start of make_header -----------------

#====================================
#  Library TripletTrackFinder
#
#   Generated Thu Feb 14 18:23:02 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TripletTrackFinder_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TripletTrackFinder_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TripletTrackFinder

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinder = $(TripletTrackFinder_tag)_TripletTrackFinder.make
cmt_local_tagfile_TripletTrackFinder = $(bin)$(TripletTrackFinder_tag)_TripletTrackFinder.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TripletTrackFinder_tag = $(tag)

#cmt_local_tagfile_TripletTrackFinder = $(TripletTrackFinder_tag).make
cmt_local_tagfile_TripletTrackFinder = $(bin)$(TripletTrackFinder_tag).make

endif

include $(cmt_local_tagfile_TripletTrackFinder)
#-include $(cmt_local_tagfile_TripletTrackFinder)

ifdef cmt_TripletTrackFinder_has_target_tag

cmt_final_setup_TripletTrackFinder = $(bin)setup_TripletTrackFinder.make
cmt_dependencies_in_TripletTrackFinder = $(bin)dependencies_TripletTrackFinder.in
#cmt_final_setup_TripletTrackFinder = $(bin)TripletTrackFinder_TripletTrackFindersetup.make
cmt_local_TripletTrackFinder_makefile = $(bin)TripletTrackFinder.make

else

cmt_final_setup_TripletTrackFinder = $(bin)setup.make
cmt_dependencies_in_TripletTrackFinder = $(bin)dependencies.in
#cmt_final_setup_TripletTrackFinder = $(bin)TripletTrackFindersetup.make
cmt_local_TripletTrackFinder_makefile = $(bin)TripletTrackFinder.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TripletTrackFindersetup.make

#TripletTrackFinder :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TripletTrackFinder'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TripletTrackFinder/
#TripletTrackFinder::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

TripletTrackFinderlibname   = $(bin)$(library_prefix)TripletTrackFinder$(library_suffix)
TripletTrackFinderlib       = $(TripletTrackFinderlibname).a
TripletTrackFinderstamp     = $(bin)TripletTrackFinder.stamp
TripletTrackFindershstamp   = $(bin)TripletTrackFinder.shstamp

TripletTrackFinder :: dirs  TripletTrackFinderLIB
	$(echo) "TripletTrackFinder ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#TripletTrackFinderLIB :: $(TripletTrackFinderlib) $(TripletTrackFindershstamp)
TripletTrackFinderLIB :: $(TripletTrackFindershstamp)
	$(echo) "TripletTrackFinder : library ok"

$(TripletTrackFinderlib) :: $(bin)Frame.o $(bin)ReadRDO.o $(bin)SiDet.o $(bin)Track.o $(bin)TripletParticleReader.o $(bin)TripletTrackFinder_entries.o $(bin)TripletTrackFinder_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(TripletTrackFinderlib) $?
	$(lib_silent) $(ranlib) $(TripletTrackFinderlib)
	$(lib_silent) cat /dev/null >$(TripletTrackFinderstamp)

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

$(TripletTrackFinderlibname).$(shlibsuffix) :: $(bin)Frame.o $(bin)ReadRDO.o $(bin)SiDet.o $(bin)Track.o $(bin)TripletParticleReader.o $(bin)TripletTrackFinder_entries.o $(bin)TripletTrackFinder_load.o $(use_requirements) $(TripletTrackFinderstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)Frame.o $(bin)ReadRDO.o $(bin)SiDet.o $(bin)Track.o $(bin)TripletParticleReader.o $(bin)TripletTrackFinder_entries.o $(bin)TripletTrackFinder_load.o $(TripletTrackFinder_shlibflags)
	$(lib_silent) cat /dev/null >$(TripletTrackFinderstamp) && \
	  cat /dev/null >$(TripletTrackFindershstamp)

$(TripletTrackFindershstamp) :: $(TripletTrackFinderlibname).$(shlibsuffix)
	$(lib_silent) if test -f $(TripletTrackFinderlibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(TripletTrackFinderstamp) && \
	  cat /dev/null >$(TripletTrackFindershstamp) ; fi

TripletTrackFinderclean ::
	$(cleanup_echo) objects TripletTrackFinder
	$(cleanup_silent) /bin/rm -f $(bin)Frame.o $(bin)ReadRDO.o $(bin)SiDet.o $(bin)Track.o $(bin)TripletParticleReader.o $(bin)TripletTrackFinder_entries.o $(bin)TripletTrackFinder_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)Frame.o $(bin)ReadRDO.o $(bin)SiDet.o $(bin)Track.o $(bin)TripletParticleReader.o $(bin)TripletTrackFinder_entries.o $(bin)TripletTrackFinder_load.o) $(patsubst %.o,%.dep,$(bin)Frame.o $(bin)ReadRDO.o $(bin)SiDet.o $(bin)Track.o $(bin)TripletParticleReader.o $(bin)TripletTrackFinder_entries.o $(bin)TripletTrackFinder_load.o) $(patsubst %.o,%.d.stamp,$(bin)Frame.o $(bin)ReadRDO.o $(bin)SiDet.o $(bin)Track.o $(bin)TripletParticleReader.o $(bin)TripletTrackFinder_entries.o $(bin)TripletTrackFinder_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf TripletTrackFinder_deps TripletTrackFinder_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
TripletTrackFinderinstallname = $(library_prefix)TripletTrackFinder$(library_suffix).$(shlibsuffix)

TripletTrackFinder :: TripletTrackFinderinstall ;

install :: TripletTrackFinderinstall ;

TripletTrackFinderinstall :: $(install_dir)/$(TripletTrackFinderinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(TripletTrackFinderinstallname) :: $(bin)$(TripletTrackFinderinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TripletTrackFinderinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##TripletTrackFinderclean :: TripletTrackFinderuninstall

uninstall :: TripletTrackFinderuninstall ;

TripletTrackFinderuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TripletTrackFinderinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TripletTrackFinderclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Frame.d

$(bin)$(binobj)Frame.d :

$(bin)$(binobj)Frame.o : $(cmt_final_setup_TripletTrackFinder)

$(bin)$(binobj)Frame.o : $(src)Frame.cxx
	$(cpp_echo) $(src)Frame.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(Frame_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(Frame_cppflags) $(Frame_cxx_cppflags)  $(src)Frame.cxx
endif
endif

else
$(bin)TripletTrackFinder_dependencies.make : $(Frame_cxx_dependencies)

$(bin)TripletTrackFinder_dependencies.make : $(src)Frame.cxx

$(bin)$(binobj)Frame.o : $(Frame_cxx_dependencies)
	$(cpp_echo) $(src)Frame.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(Frame_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(Frame_cppflags) $(Frame_cxx_cppflags)  $(src)Frame.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TripletTrackFinderclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ReadRDO.d

$(bin)$(binobj)ReadRDO.d :

$(bin)$(binobj)ReadRDO.o : $(cmt_final_setup_TripletTrackFinder)

$(bin)$(binobj)ReadRDO.o : $(src)ReadRDO.cxx
	$(cpp_echo) $(src)ReadRDO.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(ReadRDO_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(ReadRDO_cppflags) $(ReadRDO_cxx_cppflags)  $(src)ReadRDO.cxx
endif
endif

else
$(bin)TripletTrackFinder_dependencies.make : $(ReadRDO_cxx_dependencies)

$(bin)TripletTrackFinder_dependencies.make : $(src)ReadRDO.cxx

$(bin)$(binobj)ReadRDO.o : $(ReadRDO_cxx_dependencies)
	$(cpp_echo) $(src)ReadRDO.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(ReadRDO_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(ReadRDO_cppflags) $(ReadRDO_cxx_cppflags)  $(src)ReadRDO.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TripletTrackFinderclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiDet.d

$(bin)$(binobj)SiDet.d :

$(bin)$(binobj)SiDet.o : $(cmt_final_setup_TripletTrackFinder)

$(bin)$(binobj)SiDet.o : $(src)SiDet.cxx
	$(cpp_echo) $(src)SiDet.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(SiDet_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(SiDet_cppflags) $(SiDet_cxx_cppflags)  $(src)SiDet.cxx
endif
endif

else
$(bin)TripletTrackFinder_dependencies.make : $(SiDet_cxx_dependencies)

$(bin)TripletTrackFinder_dependencies.make : $(src)SiDet.cxx

$(bin)$(binobj)SiDet.o : $(SiDet_cxx_dependencies)
	$(cpp_echo) $(src)SiDet.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(SiDet_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(SiDet_cppflags) $(SiDet_cxx_cppflags)  $(src)SiDet.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TripletTrackFinderclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Track.d

$(bin)$(binobj)Track.d :

$(bin)$(binobj)Track.o : $(cmt_final_setup_TripletTrackFinder)

$(bin)$(binobj)Track.o : $(src)Track.cxx
	$(cpp_echo) $(src)Track.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(Track_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(Track_cppflags) $(Track_cxx_cppflags)  $(src)Track.cxx
endif
endif

else
$(bin)TripletTrackFinder_dependencies.make : $(Track_cxx_dependencies)

$(bin)TripletTrackFinder_dependencies.make : $(src)Track.cxx

$(bin)$(binobj)Track.o : $(Track_cxx_dependencies)
	$(cpp_echo) $(src)Track.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(Track_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(Track_cppflags) $(Track_cxx_cppflags)  $(src)Track.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TripletTrackFinderclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TripletParticleReader.d

$(bin)$(binobj)TripletParticleReader.d :

$(bin)$(binobj)TripletParticleReader.o : $(cmt_final_setup_TripletTrackFinder)

$(bin)$(binobj)TripletParticleReader.o : $(src)TripletParticleReader.cxx
	$(cpp_echo) $(src)TripletParticleReader.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(TripletParticleReader_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(TripletParticleReader_cppflags) $(TripletParticleReader_cxx_cppflags)  $(src)TripletParticleReader.cxx
endif
endif

else
$(bin)TripletTrackFinder_dependencies.make : $(TripletParticleReader_cxx_dependencies)

$(bin)TripletTrackFinder_dependencies.make : $(src)TripletParticleReader.cxx

$(bin)$(binobj)TripletParticleReader.o : $(TripletParticleReader_cxx_dependencies)
	$(cpp_echo) $(src)TripletParticleReader.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(TripletParticleReader_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(TripletParticleReader_cppflags) $(TripletParticleReader_cxx_cppflags)  $(src)TripletParticleReader.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TripletTrackFinderclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TripletTrackFinder_entries.d

$(bin)$(binobj)TripletTrackFinder_entries.d :

$(bin)$(binobj)TripletTrackFinder_entries.o : $(cmt_final_setup_TripletTrackFinder)

$(bin)$(binobj)TripletTrackFinder_entries.o : $(src)components/TripletTrackFinder_entries.cxx
	$(cpp_echo) $(src)components/TripletTrackFinder_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(TripletTrackFinder_entries_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(TripletTrackFinder_entries_cppflags) $(TripletTrackFinder_entries_cxx_cppflags) -I../src/components $(src)components/TripletTrackFinder_entries.cxx
endif
endif

else
$(bin)TripletTrackFinder_dependencies.make : $(TripletTrackFinder_entries_cxx_dependencies)

$(bin)TripletTrackFinder_dependencies.make : $(src)components/TripletTrackFinder_entries.cxx

$(bin)$(binobj)TripletTrackFinder_entries.o : $(TripletTrackFinder_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/TripletTrackFinder_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(TripletTrackFinder_entries_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(TripletTrackFinder_entries_cppflags) $(TripletTrackFinder_entries_cxx_cppflags) -I../src/components $(src)components/TripletTrackFinder_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TripletTrackFinderclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TripletTrackFinder_load.d

$(bin)$(binobj)TripletTrackFinder_load.d :

$(bin)$(binobj)TripletTrackFinder_load.o : $(cmt_final_setup_TripletTrackFinder)

$(bin)$(binobj)TripletTrackFinder_load.o : $(src)components/TripletTrackFinder_load.cxx
	$(cpp_echo) $(src)components/TripletTrackFinder_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(TripletTrackFinder_load_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(TripletTrackFinder_load_cppflags) $(TripletTrackFinder_load_cxx_cppflags) -I../src/components $(src)components/TripletTrackFinder_load.cxx
endif
endif

else
$(bin)TripletTrackFinder_dependencies.make : $(TripletTrackFinder_load_cxx_dependencies)

$(bin)TripletTrackFinder_dependencies.make : $(src)components/TripletTrackFinder_load.cxx

$(bin)$(binobj)TripletTrackFinder_load.o : $(TripletTrackFinder_load_cxx_dependencies)
	$(cpp_echo) $(src)components/TripletTrackFinder_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TripletTrackFinder_pp_cppflags) $(lib_TripletTrackFinder_pp_cppflags) $(TripletTrackFinder_load_pp_cppflags) $(use_cppflags) $(TripletTrackFinder_cppflags) $(lib_TripletTrackFinder_cppflags) $(TripletTrackFinder_load_cppflags) $(TripletTrackFinder_load_cxx_cppflags) -I../src/components $(src)components/TripletTrackFinder_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: TripletTrackFinderclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TripletTrackFinder.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TripletTrackFinderclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library TripletTrackFinder
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)TripletTrackFinder$(library_suffix).a $(library_prefix)TripletTrackFinder$(library_suffix).$(shlibsuffix) TripletTrackFinder.stamp TripletTrackFinder.shstamp
#-- end of cleanup_library ---------------
