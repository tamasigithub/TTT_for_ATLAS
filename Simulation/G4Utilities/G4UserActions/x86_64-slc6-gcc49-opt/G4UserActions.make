#-- start of make_header -----------------

#====================================
#  Library G4UserActions
#
#   Generated Tue Jan 29 18:51:55 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_G4UserActions_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_G4UserActions_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_G4UserActions

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActions = $(G4UserActions_tag)_G4UserActions.make
cmt_local_tagfile_G4UserActions = $(bin)$(G4UserActions_tag)_G4UserActions.make

else

tags      = $(tag),$(CMTEXTRATAGS)

G4UserActions_tag = $(tag)

#cmt_local_tagfile_G4UserActions = $(G4UserActions_tag).make
cmt_local_tagfile_G4UserActions = $(bin)$(G4UserActions_tag).make

endif

include $(cmt_local_tagfile_G4UserActions)
#-include $(cmt_local_tagfile_G4UserActions)

ifdef cmt_G4UserActions_has_target_tag

cmt_final_setup_G4UserActions = $(bin)setup_G4UserActions.make
cmt_dependencies_in_G4UserActions = $(bin)dependencies_G4UserActions.in
#cmt_final_setup_G4UserActions = $(bin)G4UserActions_G4UserActionssetup.make
cmt_local_G4UserActions_makefile = $(bin)G4UserActions.make

else

cmt_final_setup_G4UserActions = $(bin)setup.make
cmt_dependencies_in_G4UserActions = $(bin)dependencies.in
#cmt_final_setup_G4UserActions = $(bin)G4UserActionssetup.make
cmt_local_G4UserActions_makefile = $(bin)G4UserActions.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)G4UserActionssetup.make

#G4UserActions :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'G4UserActions'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = G4UserActions/
#G4UserActions::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

G4UserActionslibname   = $(bin)$(library_prefix)G4UserActions$(library_suffix)
G4UserActionslib       = $(G4UserActionslibname).a
G4UserActionsstamp     = $(bin)G4UserActions.stamp
G4UserActionsshstamp   = $(bin)G4UserActions.shstamp

G4UserActions :: dirs  G4UserActionsLIB
	$(echo) "G4UserActions ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#G4UserActionsLIB :: $(G4UserActionslib) $(G4UserActionsshstamp)
G4UserActionsLIB :: $(G4UserActionsshstamp)
	$(echo) "G4UserActions : library ok"

$(G4UserActionslib) :: $(bin)CosmicPerigeeAction.o $(bin)CosmicPerigeeActionTool.o $(bin)FastIDKiller.o $(bin)FastIDKillerTool.o $(bin)FluxRecorder.o $(bin)FluxRecorderTool.o $(bin)G4SimTimer.o $(bin)G4SimTimerTool.o $(bin)G4TrackCounter.o $(bin)G4TrackCounterTool.o $(bin)HIPKiller.o $(bin)HIPKillerTool.o $(bin)HIPLArVolumeAccept.o $(bin)HIPLArVolumeAcceptTool.o $(bin)HitWrapper.o $(bin)HitWrapperTool.o $(bin)LengthIntegrator.o $(bin)LengthIntegratorTool.o $(bin)LooperKiller.o $(bin)LooperKillerTool.o $(bin)MomentumConservation.o $(bin)MomentumConservationTool.o $(bin)PhotonKiller.o $(bin)PhotonKillerTool.o $(bin)ScoringPlane.o $(bin)ScoringPlaneTool.o $(bin)ScoringVolumeTrackKiller.o $(bin)ScoringVolumeTrackKillerTool.o $(bin)StoppedParticleAction.o $(bin)StoppedParticleActionTool.o $(bin)G4UserActions_entries.o $(bin)G4UserActions_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(G4UserActionslib) $?
	$(lib_silent) $(ranlib) $(G4UserActionslib)
	$(lib_silent) cat /dev/null >$(G4UserActionsstamp)

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

$(G4UserActionslibname).$(shlibsuffix) :: $(bin)CosmicPerigeeAction.o $(bin)CosmicPerigeeActionTool.o $(bin)FastIDKiller.o $(bin)FastIDKillerTool.o $(bin)FluxRecorder.o $(bin)FluxRecorderTool.o $(bin)G4SimTimer.o $(bin)G4SimTimerTool.o $(bin)G4TrackCounter.o $(bin)G4TrackCounterTool.o $(bin)HIPKiller.o $(bin)HIPKillerTool.o $(bin)HIPLArVolumeAccept.o $(bin)HIPLArVolumeAcceptTool.o $(bin)HitWrapper.o $(bin)HitWrapperTool.o $(bin)LengthIntegrator.o $(bin)LengthIntegratorTool.o $(bin)LooperKiller.o $(bin)LooperKillerTool.o $(bin)MomentumConservation.o $(bin)MomentumConservationTool.o $(bin)PhotonKiller.o $(bin)PhotonKillerTool.o $(bin)ScoringPlane.o $(bin)ScoringPlaneTool.o $(bin)ScoringVolumeTrackKiller.o $(bin)ScoringVolumeTrackKillerTool.o $(bin)StoppedParticleAction.o $(bin)StoppedParticleActionTool.o $(bin)G4UserActions_entries.o $(bin)G4UserActions_load.o $(use_requirements) $(G4UserActionsstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)CosmicPerigeeAction.o $(bin)CosmicPerigeeActionTool.o $(bin)FastIDKiller.o $(bin)FastIDKillerTool.o $(bin)FluxRecorder.o $(bin)FluxRecorderTool.o $(bin)G4SimTimer.o $(bin)G4SimTimerTool.o $(bin)G4TrackCounter.o $(bin)G4TrackCounterTool.o $(bin)HIPKiller.o $(bin)HIPKillerTool.o $(bin)HIPLArVolumeAccept.o $(bin)HIPLArVolumeAcceptTool.o $(bin)HitWrapper.o $(bin)HitWrapperTool.o $(bin)LengthIntegrator.o $(bin)LengthIntegratorTool.o $(bin)LooperKiller.o $(bin)LooperKillerTool.o $(bin)MomentumConservation.o $(bin)MomentumConservationTool.o $(bin)PhotonKiller.o $(bin)PhotonKillerTool.o $(bin)ScoringPlane.o $(bin)ScoringPlaneTool.o $(bin)ScoringVolumeTrackKiller.o $(bin)ScoringVolumeTrackKillerTool.o $(bin)StoppedParticleAction.o $(bin)StoppedParticleActionTool.o $(bin)G4UserActions_entries.o $(bin)G4UserActions_load.o $(G4UserActions_shlibflags)
	$(lib_silent) cat /dev/null >$(G4UserActionsstamp) && \
	  cat /dev/null >$(G4UserActionsshstamp)

$(G4UserActionsshstamp) :: $(G4UserActionslibname).$(shlibsuffix)
	$(lib_silent) if test -f $(G4UserActionslibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(G4UserActionsstamp) && \
	  cat /dev/null >$(G4UserActionsshstamp) ; fi

G4UserActionsclean ::
	$(cleanup_echo) objects G4UserActions
	$(cleanup_silent) /bin/rm -f $(bin)CosmicPerigeeAction.o $(bin)CosmicPerigeeActionTool.o $(bin)FastIDKiller.o $(bin)FastIDKillerTool.o $(bin)FluxRecorder.o $(bin)FluxRecorderTool.o $(bin)G4SimTimer.o $(bin)G4SimTimerTool.o $(bin)G4TrackCounter.o $(bin)G4TrackCounterTool.o $(bin)HIPKiller.o $(bin)HIPKillerTool.o $(bin)HIPLArVolumeAccept.o $(bin)HIPLArVolumeAcceptTool.o $(bin)HitWrapper.o $(bin)HitWrapperTool.o $(bin)LengthIntegrator.o $(bin)LengthIntegratorTool.o $(bin)LooperKiller.o $(bin)LooperKillerTool.o $(bin)MomentumConservation.o $(bin)MomentumConservationTool.o $(bin)PhotonKiller.o $(bin)PhotonKillerTool.o $(bin)ScoringPlane.o $(bin)ScoringPlaneTool.o $(bin)ScoringVolumeTrackKiller.o $(bin)ScoringVolumeTrackKillerTool.o $(bin)StoppedParticleAction.o $(bin)StoppedParticleActionTool.o $(bin)G4UserActions_entries.o $(bin)G4UserActions_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)CosmicPerigeeAction.o $(bin)CosmicPerigeeActionTool.o $(bin)FastIDKiller.o $(bin)FastIDKillerTool.o $(bin)FluxRecorder.o $(bin)FluxRecorderTool.o $(bin)G4SimTimer.o $(bin)G4SimTimerTool.o $(bin)G4TrackCounter.o $(bin)G4TrackCounterTool.o $(bin)HIPKiller.o $(bin)HIPKillerTool.o $(bin)HIPLArVolumeAccept.o $(bin)HIPLArVolumeAcceptTool.o $(bin)HitWrapper.o $(bin)HitWrapperTool.o $(bin)LengthIntegrator.o $(bin)LengthIntegratorTool.o $(bin)LooperKiller.o $(bin)LooperKillerTool.o $(bin)MomentumConservation.o $(bin)MomentumConservationTool.o $(bin)PhotonKiller.o $(bin)PhotonKillerTool.o $(bin)ScoringPlane.o $(bin)ScoringPlaneTool.o $(bin)ScoringVolumeTrackKiller.o $(bin)ScoringVolumeTrackKillerTool.o $(bin)StoppedParticleAction.o $(bin)StoppedParticleActionTool.o $(bin)G4UserActions_entries.o $(bin)G4UserActions_load.o) $(patsubst %.o,%.dep,$(bin)CosmicPerigeeAction.o $(bin)CosmicPerigeeActionTool.o $(bin)FastIDKiller.o $(bin)FastIDKillerTool.o $(bin)FluxRecorder.o $(bin)FluxRecorderTool.o $(bin)G4SimTimer.o $(bin)G4SimTimerTool.o $(bin)G4TrackCounter.o $(bin)G4TrackCounterTool.o $(bin)HIPKiller.o $(bin)HIPKillerTool.o $(bin)HIPLArVolumeAccept.o $(bin)HIPLArVolumeAcceptTool.o $(bin)HitWrapper.o $(bin)HitWrapperTool.o $(bin)LengthIntegrator.o $(bin)LengthIntegratorTool.o $(bin)LooperKiller.o $(bin)LooperKillerTool.o $(bin)MomentumConservation.o $(bin)MomentumConservationTool.o $(bin)PhotonKiller.o $(bin)PhotonKillerTool.o $(bin)ScoringPlane.o $(bin)ScoringPlaneTool.o $(bin)ScoringVolumeTrackKiller.o $(bin)ScoringVolumeTrackKillerTool.o $(bin)StoppedParticleAction.o $(bin)StoppedParticleActionTool.o $(bin)G4UserActions_entries.o $(bin)G4UserActions_load.o) $(patsubst %.o,%.d.stamp,$(bin)CosmicPerigeeAction.o $(bin)CosmicPerigeeActionTool.o $(bin)FastIDKiller.o $(bin)FastIDKillerTool.o $(bin)FluxRecorder.o $(bin)FluxRecorderTool.o $(bin)G4SimTimer.o $(bin)G4SimTimerTool.o $(bin)G4TrackCounter.o $(bin)G4TrackCounterTool.o $(bin)HIPKiller.o $(bin)HIPKillerTool.o $(bin)HIPLArVolumeAccept.o $(bin)HIPLArVolumeAcceptTool.o $(bin)HitWrapper.o $(bin)HitWrapperTool.o $(bin)LengthIntegrator.o $(bin)LengthIntegratorTool.o $(bin)LooperKiller.o $(bin)LooperKillerTool.o $(bin)MomentumConservation.o $(bin)MomentumConservationTool.o $(bin)PhotonKiller.o $(bin)PhotonKillerTool.o $(bin)ScoringPlane.o $(bin)ScoringPlaneTool.o $(bin)ScoringVolumeTrackKiller.o $(bin)ScoringVolumeTrackKillerTool.o $(bin)StoppedParticleAction.o $(bin)StoppedParticleActionTool.o $(bin)G4UserActions_entries.o $(bin)G4UserActions_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf G4UserActions_deps G4UserActions_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
G4UserActionsinstallname = $(library_prefix)G4UserActions$(library_suffix).$(shlibsuffix)

G4UserActions :: G4UserActionsinstall ;

install :: G4UserActionsinstall ;

G4UserActionsinstall :: $(install_dir)/$(G4UserActionsinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(G4UserActionsinstallname) :: $(bin)$(G4UserActionsinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(G4UserActionsinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##G4UserActionsclean :: G4UserActionsuninstall

uninstall :: G4UserActionsuninstall ;

G4UserActionsuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(G4UserActionsinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)CosmicPerigeeAction.d

$(bin)$(binobj)CosmicPerigeeAction.d :

$(bin)$(binobj)CosmicPerigeeAction.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)CosmicPerigeeAction.o : $(src)CosmicPerigeeAction.cxx
	$(cpp_echo) $(src)CosmicPerigeeAction.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(CosmicPerigeeAction_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(CosmicPerigeeAction_cppflags) $(CosmicPerigeeAction_cxx_cppflags)  $(src)CosmicPerigeeAction.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(CosmicPerigeeAction_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)CosmicPerigeeAction.cxx

$(bin)$(binobj)CosmicPerigeeAction.o : $(CosmicPerigeeAction_cxx_dependencies)
	$(cpp_echo) $(src)CosmicPerigeeAction.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(CosmicPerigeeAction_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(CosmicPerigeeAction_cppflags) $(CosmicPerigeeAction_cxx_cppflags)  $(src)CosmicPerigeeAction.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)CosmicPerigeeActionTool.d

$(bin)$(binobj)CosmicPerigeeActionTool.d :

$(bin)$(binobj)CosmicPerigeeActionTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)CosmicPerigeeActionTool.o : $(src)CosmicPerigeeActionTool.cxx
	$(cpp_echo) $(src)CosmicPerigeeActionTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(CosmicPerigeeActionTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(CosmicPerigeeActionTool_cppflags) $(CosmicPerigeeActionTool_cxx_cppflags)  $(src)CosmicPerigeeActionTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(CosmicPerigeeActionTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)CosmicPerigeeActionTool.cxx

$(bin)$(binobj)CosmicPerigeeActionTool.o : $(CosmicPerigeeActionTool_cxx_dependencies)
	$(cpp_echo) $(src)CosmicPerigeeActionTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(CosmicPerigeeActionTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(CosmicPerigeeActionTool_cppflags) $(CosmicPerigeeActionTool_cxx_cppflags)  $(src)CosmicPerigeeActionTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)FastIDKiller.d

$(bin)$(binobj)FastIDKiller.d :

$(bin)$(binobj)FastIDKiller.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)FastIDKiller.o : $(src)FastIDKiller.cxx
	$(cpp_echo) $(src)FastIDKiller.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FastIDKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FastIDKiller_cppflags) $(FastIDKiller_cxx_cppflags)  $(src)FastIDKiller.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(FastIDKiller_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)FastIDKiller.cxx

$(bin)$(binobj)FastIDKiller.o : $(FastIDKiller_cxx_dependencies)
	$(cpp_echo) $(src)FastIDKiller.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FastIDKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FastIDKiller_cppflags) $(FastIDKiller_cxx_cppflags)  $(src)FastIDKiller.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)FastIDKillerTool.d

$(bin)$(binobj)FastIDKillerTool.d :

$(bin)$(binobj)FastIDKillerTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)FastIDKillerTool.o : $(src)FastIDKillerTool.cxx
	$(cpp_echo) $(src)FastIDKillerTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FastIDKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FastIDKillerTool_cppflags) $(FastIDKillerTool_cxx_cppflags)  $(src)FastIDKillerTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(FastIDKillerTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)FastIDKillerTool.cxx

$(bin)$(binobj)FastIDKillerTool.o : $(FastIDKillerTool_cxx_dependencies)
	$(cpp_echo) $(src)FastIDKillerTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FastIDKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FastIDKillerTool_cppflags) $(FastIDKillerTool_cxx_cppflags)  $(src)FastIDKillerTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)FluxRecorder.d

$(bin)$(binobj)FluxRecorder.d :

$(bin)$(binobj)FluxRecorder.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)FluxRecorder.o : $(src)FluxRecorder.cxx
	$(cpp_echo) $(src)FluxRecorder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FluxRecorder_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FluxRecorder_cppflags) $(FluxRecorder_cxx_cppflags)  $(src)FluxRecorder.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(FluxRecorder_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)FluxRecorder.cxx

$(bin)$(binobj)FluxRecorder.o : $(FluxRecorder_cxx_dependencies)
	$(cpp_echo) $(src)FluxRecorder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FluxRecorder_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FluxRecorder_cppflags) $(FluxRecorder_cxx_cppflags)  $(src)FluxRecorder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)FluxRecorderTool.d

$(bin)$(binobj)FluxRecorderTool.d :

$(bin)$(binobj)FluxRecorderTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)FluxRecorderTool.o : $(src)FluxRecorderTool.cxx
	$(cpp_echo) $(src)FluxRecorderTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FluxRecorderTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FluxRecorderTool_cppflags) $(FluxRecorderTool_cxx_cppflags)  $(src)FluxRecorderTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(FluxRecorderTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)FluxRecorderTool.cxx

$(bin)$(binobj)FluxRecorderTool.o : $(FluxRecorderTool_cxx_dependencies)
	$(cpp_echo) $(src)FluxRecorderTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(FluxRecorderTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(FluxRecorderTool_cppflags) $(FluxRecorderTool_cxx_cppflags)  $(src)FluxRecorderTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)G4SimTimer.d

$(bin)$(binobj)G4SimTimer.d :

$(bin)$(binobj)G4SimTimer.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)G4SimTimer.o : $(src)G4SimTimer.cxx
	$(cpp_echo) $(src)G4SimTimer.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4SimTimer_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4SimTimer_cppflags) $(G4SimTimer_cxx_cppflags)  $(src)G4SimTimer.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(G4SimTimer_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)G4SimTimer.cxx

$(bin)$(binobj)G4SimTimer.o : $(G4SimTimer_cxx_dependencies)
	$(cpp_echo) $(src)G4SimTimer.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4SimTimer_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4SimTimer_cppflags) $(G4SimTimer_cxx_cppflags)  $(src)G4SimTimer.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)G4SimTimerTool.d

$(bin)$(binobj)G4SimTimerTool.d :

$(bin)$(binobj)G4SimTimerTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)G4SimTimerTool.o : $(src)G4SimTimerTool.cxx
	$(cpp_echo) $(src)G4SimTimerTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4SimTimerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4SimTimerTool_cppflags) $(G4SimTimerTool_cxx_cppflags)  $(src)G4SimTimerTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(G4SimTimerTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)G4SimTimerTool.cxx

$(bin)$(binobj)G4SimTimerTool.o : $(G4SimTimerTool_cxx_dependencies)
	$(cpp_echo) $(src)G4SimTimerTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4SimTimerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4SimTimerTool_cppflags) $(G4SimTimerTool_cxx_cppflags)  $(src)G4SimTimerTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)G4TrackCounter.d

$(bin)$(binobj)G4TrackCounter.d :

$(bin)$(binobj)G4TrackCounter.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)G4TrackCounter.o : $(src)G4TrackCounter.cxx
	$(cpp_echo) $(src)G4TrackCounter.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4TrackCounter_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4TrackCounter_cppflags) $(G4TrackCounter_cxx_cppflags)  $(src)G4TrackCounter.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(G4TrackCounter_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)G4TrackCounter.cxx

$(bin)$(binobj)G4TrackCounter.o : $(G4TrackCounter_cxx_dependencies)
	$(cpp_echo) $(src)G4TrackCounter.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4TrackCounter_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4TrackCounter_cppflags) $(G4TrackCounter_cxx_cppflags)  $(src)G4TrackCounter.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)G4TrackCounterTool.d

$(bin)$(binobj)G4TrackCounterTool.d :

$(bin)$(binobj)G4TrackCounterTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)G4TrackCounterTool.o : $(src)G4TrackCounterTool.cxx
	$(cpp_echo) $(src)G4TrackCounterTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4TrackCounterTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4TrackCounterTool_cppflags) $(G4TrackCounterTool_cxx_cppflags)  $(src)G4TrackCounterTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(G4TrackCounterTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)G4TrackCounterTool.cxx

$(bin)$(binobj)G4TrackCounterTool.o : $(G4TrackCounterTool_cxx_dependencies)
	$(cpp_echo) $(src)G4TrackCounterTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4TrackCounterTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4TrackCounterTool_cppflags) $(G4TrackCounterTool_cxx_cppflags)  $(src)G4TrackCounterTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HIPKiller.d

$(bin)$(binobj)HIPKiller.d :

$(bin)$(binobj)HIPKiller.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)HIPKiller.o : $(src)HIPKiller.cxx
	$(cpp_echo) $(src)HIPKiller.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPKiller_cppflags) $(HIPKiller_cxx_cppflags)  $(src)HIPKiller.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(HIPKiller_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)HIPKiller.cxx

$(bin)$(binobj)HIPKiller.o : $(HIPKiller_cxx_dependencies)
	$(cpp_echo) $(src)HIPKiller.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPKiller_cppflags) $(HIPKiller_cxx_cppflags)  $(src)HIPKiller.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HIPKillerTool.d

$(bin)$(binobj)HIPKillerTool.d :

$(bin)$(binobj)HIPKillerTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)HIPKillerTool.o : $(src)HIPKillerTool.cxx
	$(cpp_echo) $(src)HIPKillerTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPKillerTool_cppflags) $(HIPKillerTool_cxx_cppflags)  $(src)HIPKillerTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(HIPKillerTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)HIPKillerTool.cxx

$(bin)$(binobj)HIPKillerTool.o : $(HIPKillerTool_cxx_dependencies)
	$(cpp_echo) $(src)HIPKillerTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPKillerTool_cppflags) $(HIPKillerTool_cxx_cppflags)  $(src)HIPKillerTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HIPLArVolumeAccept.d

$(bin)$(binobj)HIPLArVolumeAccept.d :

$(bin)$(binobj)HIPLArVolumeAccept.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)HIPLArVolumeAccept.o : $(src)HIPLArVolumeAccept.cxx
	$(cpp_echo) $(src)HIPLArVolumeAccept.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPLArVolumeAccept_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPLArVolumeAccept_cppflags) $(HIPLArVolumeAccept_cxx_cppflags)  $(src)HIPLArVolumeAccept.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(HIPLArVolumeAccept_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)HIPLArVolumeAccept.cxx

$(bin)$(binobj)HIPLArVolumeAccept.o : $(HIPLArVolumeAccept_cxx_dependencies)
	$(cpp_echo) $(src)HIPLArVolumeAccept.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPLArVolumeAccept_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPLArVolumeAccept_cppflags) $(HIPLArVolumeAccept_cxx_cppflags)  $(src)HIPLArVolumeAccept.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HIPLArVolumeAcceptTool.d

$(bin)$(binobj)HIPLArVolumeAcceptTool.d :

$(bin)$(binobj)HIPLArVolumeAcceptTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)HIPLArVolumeAcceptTool.o : $(src)HIPLArVolumeAcceptTool.cxx
	$(cpp_echo) $(src)HIPLArVolumeAcceptTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPLArVolumeAcceptTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPLArVolumeAcceptTool_cppflags) $(HIPLArVolumeAcceptTool_cxx_cppflags)  $(src)HIPLArVolumeAcceptTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(HIPLArVolumeAcceptTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)HIPLArVolumeAcceptTool.cxx

$(bin)$(binobj)HIPLArVolumeAcceptTool.o : $(HIPLArVolumeAcceptTool_cxx_dependencies)
	$(cpp_echo) $(src)HIPLArVolumeAcceptTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HIPLArVolumeAcceptTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HIPLArVolumeAcceptTool_cppflags) $(HIPLArVolumeAcceptTool_cxx_cppflags)  $(src)HIPLArVolumeAcceptTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HitWrapper.d

$(bin)$(binobj)HitWrapper.d :

$(bin)$(binobj)HitWrapper.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)HitWrapper.o : $(src)HitWrapper.cxx
	$(cpp_echo) $(src)HitWrapper.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HitWrapper_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HitWrapper_cppflags) $(HitWrapper_cxx_cppflags)  $(src)HitWrapper.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(HitWrapper_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)HitWrapper.cxx

$(bin)$(binobj)HitWrapper.o : $(HitWrapper_cxx_dependencies)
	$(cpp_echo) $(src)HitWrapper.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HitWrapper_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HitWrapper_cppflags) $(HitWrapper_cxx_cppflags)  $(src)HitWrapper.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HitWrapperTool.d

$(bin)$(binobj)HitWrapperTool.d :

$(bin)$(binobj)HitWrapperTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)HitWrapperTool.o : $(src)HitWrapperTool.cxx
	$(cpp_echo) $(src)HitWrapperTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HitWrapperTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HitWrapperTool_cppflags) $(HitWrapperTool_cxx_cppflags)  $(src)HitWrapperTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(HitWrapperTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)HitWrapperTool.cxx

$(bin)$(binobj)HitWrapperTool.o : $(HitWrapperTool_cxx_dependencies)
	$(cpp_echo) $(src)HitWrapperTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(HitWrapperTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(HitWrapperTool_cppflags) $(HitWrapperTool_cxx_cppflags)  $(src)HitWrapperTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)LengthIntegrator.d

$(bin)$(binobj)LengthIntegrator.d :

$(bin)$(binobj)LengthIntegrator.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)LengthIntegrator.o : $(src)LengthIntegrator.cxx
	$(cpp_echo) $(src)LengthIntegrator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LengthIntegrator_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LengthIntegrator_cppflags) $(LengthIntegrator_cxx_cppflags)  $(src)LengthIntegrator.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(LengthIntegrator_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)LengthIntegrator.cxx

$(bin)$(binobj)LengthIntegrator.o : $(LengthIntegrator_cxx_dependencies)
	$(cpp_echo) $(src)LengthIntegrator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LengthIntegrator_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LengthIntegrator_cppflags) $(LengthIntegrator_cxx_cppflags)  $(src)LengthIntegrator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)LengthIntegratorTool.d

$(bin)$(binobj)LengthIntegratorTool.d :

$(bin)$(binobj)LengthIntegratorTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)LengthIntegratorTool.o : $(src)LengthIntegratorTool.cxx
	$(cpp_echo) $(src)LengthIntegratorTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LengthIntegratorTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LengthIntegratorTool_cppflags) $(LengthIntegratorTool_cxx_cppflags)  $(src)LengthIntegratorTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(LengthIntegratorTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)LengthIntegratorTool.cxx

$(bin)$(binobj)LengthIntegratorTool.o : $(LengthIntegratorTool_cxx_dependencies)
	$(cpp_echo) $(src)LengthIntegratorTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LengthIntegratorTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LengthIntegratorTool_cppflags) $(LengthIntegratorTool_cxx_cppflags)  $(src)LengthIntegratorTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)LooperKiller.d

$(bin)$(binobj)LooperKiller.d :

$(bin)$(binobj)LooperKiller.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)LooperKiller.o : $(src)LooperKiller.cxx
	$(cpp_echo) $(src)LooperKiller.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LooperKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LooperKiller_cppflags) $(LooperKiller_cxx_cppflags)  $(src)LooperKiller.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(LooperKiller_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)LooperKiller.cxx

$(bin)$(binobj)LooperKiller.o : $(LooperKiller_cxx_dependencies)
	$(cpp_echo) $(src)LooperKiller.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LooperKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LooperKiller_cppflags) $(LooperKiller_cxx_cppflags)  $(src)LooperKiller.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)LooperKillerTool.d

$(bin)$(binobj)LooperKillerTool.d :

$(bin)$(binobj)LooperKillerTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)LooperKillerTool.o : $(src)LooperKillerTool.cxx
	$(cpp_echo) $(src)LooperKillerTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LooperKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LooperKillerTool_cppflags) $(LooperKillerTool_cxx_cppflags)  $(src)LooperKillerTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(LooperKillerTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)LooperKillerTool.cxx

$(bin)$(binobj)LooperKillerTool.o : $(LooperKillerTool_cxx_dependencies)
	$(cpp_echo) $(src)LooperKillerTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(LooperKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(LooperKillerTool_cppflags) $(LooperKillerTool_cxx_cppflags)  $(src)LooperKillerTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MomentumConservation.d

$(bin)$(binobj)MomentumConservation.d :

$(bin)$(binobj)MomentumConservation.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)MomentumConservation.o : $(src)MomentumConservation.cxx
	$(cpp_echo) $(src)MomentumConservation.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(MomentumConservation_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(MomentumConservation_cppflags) $(MomentumConservation_cxx_cppflags)  $(src)MomentumConservation.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(MomentumConservation_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)MomentumConservation.cxx

$(bin)$(binobj)MomentumConservation.o : $(MomentumConservation_cxx_dependencies)
	$(cpp_echo) $(src)MomentumConservation.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(MomentumConservation_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(MomentumConservation_cppflags) $(MomentumConservation_cxx_cppflags)  $(src)MomentumConservation.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MomentumConservationTool.d

$(bin)$(binobj)MomentumConservationTool.d :

$(bin)$(binobj)MomentumConservationTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)MomentumConservationTool.o : $(src)MomentumConservationTool.cxx
	$(cpp_echo) $(src)MomentumConservationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(MomentumConservationTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(MomentumConservationTool_cppflags) $(MomentumConservationTool_cxx_cppflags)  $(src)MomentumConservationTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(MomentumConservationTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)MomentumConservationTool.cxx

$(bin)$(binobj)MomentumConservationTool.o : $(MomentumConservationTool_cxx_dependencies)
	$(cpp_echo) $(src)MomentumConservationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(MomentumConservationTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(MomentumConservationTool_cppflags) $(MomentumConservationTool_cxx_cppflags)  $(src)MomentumConservationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PhotonKiller.d

$(bin)$(binobj)PhotonKiller.d :

$(bin)$(binobj)PhotonKiller.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)PhotonKiller.o : $(src)PhotonKiller.cxx
	$(cpp_echo) $(src)PhotonKiller.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(PhotonKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(PhotonKiller_cppflags) $(PhotonKiller_cxx_cppflags)  $(src)PhotonKiller.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(PhotonKiller_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)PhotonKiller.cxx

$(bin)$(binobj)PhotonKiller.o : $(PhotonKiller_cxx_dependencies)
	$(cpp_echo) $(src)PhotonKiller.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(PhotonKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(PhotonKiller_cppflags) $(PhotonKiller_cxx_cppflags)  $(src)PhotonKiller.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PhotonKillerTool.d

$(bin)$(binobj)PhotonKillerTool.d :

$(bin)$(binobj)PhotonKillerTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)PhotonKillerTool.o : $(src)PhotonKillerTool.cxx
	$(cpp_echo) $(src)PhotonKillerTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(PhotonKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(PhotonKillerTool_cppflags) $(PhotonKillerTool_cxx_cppflags)  $(src)PhotonKillerTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(PhotonKillerTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)PhotonKillerTool.cxx

$(bin)$(binobj)PhotonKillerTool.o : $(PhotonKillerTool_cxx_dependencies)
	$(cpp_echo) $(src)PhotonKillerTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(PhotonKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(PhotonKillerTool_cppflags) $(PhotonKillerTool_cxx_cppflags)  $(src)PhotonKillerTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ScoringPlane.d

$(bin)$(binobj)ScoringPlane.d :

$(bin)$(binobj)ScoringPlane.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)ScoringPlane.o : $(src)ScoringPlane.cxx
	$(cpp_echo) $(src)ScoringPlane.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringPlane_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringPlane_cppflags) $(ScoringPlane_cxx_cppflags)  $(src)ScoringPlane.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(ScoringPlane_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)ScoringPlane.cxx

$(bin)$(binobj)ScoringPlane.o : $(ScoringPlane_cxx_dependencies)
	$(cpp_echo) $(src)ScoringPlane.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringPlane_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringPlane_cppflags) $(ScoringPlane_cxx_cppflags)  $(src)ScoringPlane.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ScoringPlaneTool.d

$(bin)$(binobj)ScoringPlaneTool.d :

$(bin)$(binobj)ScoringPlaneTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)ScoringPlaneTool.o : $(src)ScoringPlaneTool.cxx
	$(cpp_echo) $(src)ScoringPlaneTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringPlaneTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringPlaneTool_cppflags) $(ScoringPlaneTool_cxx_cppflags)  $(src)ScoringPlaneTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(ScoringPlaneTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)ScoringPlaneTool.cxx

$(bin)$(binobj)ScoringPlaneTool.o : $(ScoringPlaneTool_cxx_dependencies)
	$(cpp_echo) $(src)ScoringPlaneTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringPlaneTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringPlaneTool_cppflags) $(ScoringPlaneTool_cxx_cppflags)  $(src)ScoringPlaneTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ScoringVolumeTrackKiller.d

$(bin)$(binobj)ScoringVolumeTrackKiller.d :

$(bin)$(binobj)ScoringVolumeTrackKiller.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)ScoringVolumeTrackKiller.o : $(src)ScoringVolumeTrackKiller.cxx
	$(cpp_echo) $(src)ScoringVolumeTrackKiller.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringVolumeTrackKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringVolumeTrackKiller_cppflags) $(ScoringVolumeTrackKiller_cxx_cppflags)  $(src)ScoringVolumeTrackKiller.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(ScoringVolumeTrackKiller_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)ScoringVolumeTrackKiller.cxx

$(bin)$(binobj)ScoringVolumeTrackKiller.o : $(ScoringVolumeTrackKiller_cxx_dependencies)
	$(cpp_echo) $(src)ScoringVolumeTrackKiller.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringVolumeTrackKiller_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringVolumeTrackKiller_cppflags) $(ScoringVolumeTrackKiller_cxx_cppflags)  $(src)ScoringVolumeTrackKiller.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ScoringVolumeTrackKillerTool.d

$(bin)$(binobj)ScoringVolumeTrackKillerTool.d :

$(bin)$(binobj)ScoringVolumeTrackKillerTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)ScoringVolumeTrackKillerTool.o : $(src)ScoringVolumeTrackKillerTool.cxx
	$(cpp_echo) $(src)ScoringVolumeTrackKillerTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringVolumeTrackKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringVolumeTrackKillerTool_cppflags) $(ScoringVolumeTrackKillerTool_cxx_cppflags)  $(src)ScoringVolumeTrackKillerTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(ScoringVolumeTrackKillerTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)ScoringVolumeTrackKillerTool.cxx

$(bin)$(binobj)ScoringVolumeTrackKillerTool.o : $(ScoringVolumeTrackKillerTool_cxx_dependencies)
	$(cpp_echo) $(src)ScoringVolumeTrackKillerTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(ScoringVolumeTrackKillerTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(ScoringVolumeTrackKillerTool_cppflags) $(ScoringVolumeTrackKillerTool_cxx_cppflags)  $(src)ScoringVolumeTrackKillerTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)StoppedParticleAction.d

$(bin)$(binobj)StoppedParticleAction.d :

$(bin)$(binobj)StoppedParticleAction.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)StoppedParticleAction.o : $(src)StoppedParticleAction.cxx
	$(cpp_echo) $(src)StoppedParticleAction.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(StoppedParticleAction_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(StoppedParticleAction_cppflags) $(StoppedParticleAction_cxx_cppflags)  $(src)StoppedParticleAction.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(StoppedParticleAction_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)StoppedParticleAction.cxx

$(bin)$(binobj)StoppedParticleAction.o : $(StoppedParticleAction_cxx_dependencies)
	$(cpp_echo) $(src)StoppedParticleAction.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(StoppedParticleAction_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(StoppedParticleAction_cppflags) $(StoppedParticleAction_cxx_cppflags)  $(src)StoppedParticleAction.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)StoppedParticleActionTool.d

$(bin)$(binobj)StoppedParticleActionTool.d :

$(bin)$(binobj)StoppedParticleActionTool.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)StoppedParticleActionTool.o : $(src)StoppedParticleActionTool.cxx
	$(cpp_echo) $(src)StoppedParticleActionTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(StoppedParticleActionTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(StoppedParticleActionTool_cppflags) $(StoppedParticleActionTool_cxx_cppflags)  $(src)StoppedParticleActionTool.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(StoppedParticleActionTool_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)StoppedParticleActionTool.cxx

$(bin)$(binobj)StoppedParticleActionTool.o : $(StoppedParticleActionTool_cxx_dependencies)
	$(cpp_echo) $(src)StoppedParticleActionTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(StoppedParticleActionTool_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(StoppedParticleActionTool_cppflags) $(StoppedParticleActionTool_cxx_cppflags)  $(src)StoppedParticleActionTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)G4UserActions_entries.d

$(bin)$(binobj)G4UserActions_entries.d :

$(bin)$(binobj)G4UserActions_entries.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)G4UserActions_entries.o : $(src)components/G4UserActions_entries.cxx
	$(cpp_echo) $(src)components/G4UserActions_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4UserActions_entries_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4UserActions_entries_cppflags) $(G4UserActions_entries_cxx_cppflags) -I../src/components $(src)components/G4UserActions_entries.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(G4UserActions_entries_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)components/G4UserActions_entries.cxx

$(bin)$(binobj)G4UserActions_entries.o : $(G4UserActions_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/G4UserActions_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4UserActions_entries_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4UserActions_entries_cppflags) $(G4UserActions_entries_cxx_cppflags) -I../src/components $(src)components/G4UserActions_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),G4UserActionsclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)G4UserActions_load.d

$(bin)$(binobj)G4UserActions_load.d :

$(bin)$(binobj)G4UserActions_load.o : $(cmt_final_setup_G4UserActions)

$(bin)$(binobj)G4UserActions_load.o : $(src)components/G4UserActions_load.cxx
	$(cpp_echo) $(src)components/G4UserActions_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4UserActions_load_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4UserActions_load_cppflags) $(G4UserActions_load_cxx_cppflags) -I../src/components $(src)components/G4UserActions_load.cxx
endif
endif

else
$(bin)G4UserActions_dependencies.make : $(G4UserActions_load_cxx_dependencies)

$(bin)G4UserActions_dependencies.make : $(src)components/G4UserActions_load.cxx

$(bin)$(binobj)G4UserActions_load.o : $(G4UserActions_load_cxx_dependencies)
	$(cpp_echo) $(src)components/G4UserActions_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(G4UserActions_pp_cppflags) $(lib_G4UserActions_pp_cppflags) $(G4UserActions_load_pp_cppflags) $(use_cppflags) $(G4UserActions_cppflags) $(lib_G4UserActions_cppflags) $(G4UserActions_load_cppflags) $(G4UserActions_load_cxx_cppflags) -I../src/components $(src)components/G4UserActions_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: G4UserActionsclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(G4UserActions.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

G4UserActionsclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library G4UserActions
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)G4UserActions$(library_suffix).a $(library_prefix)G4UserActions$(library_suffix).$(shlibsuffix) G4UserActions.stamp G4UserActions.shstamp
#-- end of cleanup_library ---------------
