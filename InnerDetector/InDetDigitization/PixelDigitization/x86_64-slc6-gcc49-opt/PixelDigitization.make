#-- start of make_header -----------------

#====================================
#  Library PixelDigitization
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

cmt_PixelDigitization_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PixelDigitization_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_PixelDigitization

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitization = $(PixelDigitization_tag)_PixelDigitization.make
cmt_local_tagfile_PixelDigitization = $(bin)$(PixelDigitization_tag)_PixelDigitization.make

else

tags      = $(tag),$(CMTEXTRATAGS)

PixelDigitization_tag = $(tag)

#cmt_local_tagfile_PixelDigitization = $(PixelDigitization_tag).make
cmt_local_tagfile_PixelDigitization = $(bin)$(PixelDigitization_tag).make

endif

include $(cmt_local_tagfile_PixelDigitization)
#-include $(cmt_local_tagfile_PixelDigitization)

ifdef cmt_PixelDigitization_has_target_tag

cmt_final_setup_PixelDigitization = $(bin)setup_PixelDigitization.make
cmt_dependencies_in_PixelDigitization = $(bin)dependencies_PixelDigitization.in
#cmt_final_setup_PixelDigitization = $(bin)PixelDigitization_PixelDigitizationsetup.make
cmt_local_PixelDigitization_makefile = $(bin)PixelDigitization.make

else

cmt_final_setup_PixelDigitization = $(bin)setup.make
cmt_dependencies_in_PixelDigitization = $(bin)dependencies.in
#cmt_final_setup_PixelDigitization = $(bin)PixelDigitizationsetup.make
cmt_local_PixelDigitization_makefile = $(bin)PixelDigitization.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)PixelDigitizationsetup.make

#PixelDigitization :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'PixelDigitization'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = PixelDigitization/
#PixelDigitization::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

PixelDigitizationlibname   = $(bin)$(library_prefix)PixelDigitization$(library_suffix)
PixelDigitizationlib       = $(PixelDigitizationlibname).a
PixelDigitizationstamp     = $(bin)PixelDigitization.stamp
PixelDigitizationshstamp   = $(bin)PixelDigitization.shstamp

PixelDigitization :: dirs  PixelDigitizationLIB
	$(echo) "PixelDigitization ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#PixelDigitizationLIB :: $(PixelDigitizationlib) $(PixelDigitizationshstamp)
PixelDigitizationLIB :: $(PixelDigitizationshstamp)
	$(echo) "PixelDigitization : library ok"

$(PixelDigitizationlib) :: $(bin)BichselSimTool.o $(bin)CalibSvc.o $(bin)ChargeCollProbSvc.o $(bin)DBMChargeTool.o $(bin)Ibl3DBichselChargeTool.o $(bin)Ibl3DChargeTool.o $(bin)IblPlanarBichselChargeTool.o $(bin)IblPlanarChargeTool.o $(bin)PixelBarrelBichselChargeTool.o $(bin)PixelBarrelChargeTool.o $(bin)PixelCellDiscriminator.o $(bin)PixelChargeSmearer.o $(bin)TimeSvc.o $(bin)PixelDigitization.o $(bin)PixelDigitizationTool.o $(bin)PixelDiodeCrossTalkGenerator.o $(bin)PixelECBichselChargeTool.o $(bin)PixelECChargeTool.o $(bin)PixelGangedMerger.o $(bin)PixelLightDigitizationTool.o $(bin)PixelNoisyCellGenerator.o $(bin)PixelRandomDisabledCellGenerator.o $(bin)SpecialPixelGenerator.o $(bin)SurfaceChargesTool.o $(bin)PixelDigitization_entries.o $(bin)PixelDigitization_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(PixelDigitizationlib) $?
	$(lib_silent) $(ranlib) $(PixelDigitizationlib)
	$(lib_silent) cat /dev/null >$(PixelDigitizationstamp)

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

$(PixelDigitizationlibname).$(shlibsuffix) :: $(bin)BichselSimTool.o $(bin)CalibSvc.o $(bin)ChargeCollProbSvc.o $(bin)DBMChargeTool.o $(bin)Ibl3DBichselChargeTool.o $(bin)Ibl3DChargeTool.o $(bin)IblPlanarBichselChargeTool.o $(bin)IblPlanarChargeTool.o $(bin)PixelBarrelBichselChargeTool.o $(bin)PixelBarrelChargeTool.o $(bin)PixelCellDiscriminator.o $(bin)PixelChargeSmearer.o $(bin)TimeSvc.o $(bin)PixelDigitization.o $(bin)PixelDigitizationTool.o $(bin)PixelDiodeCrossTalkGenerator.o $(bin)PixelECBichselChargeTool.o $(bin)PixelECChargeTool.o $(bin)PixelGangedMerger.o $(bin)PixelLightDigitizationTool.o $(bin)PixelNoisyCellGenerator.o $(bin)PixelRandomDisabledCellGenerator.o $(bin)SpecialPixelGenerator.o $(bin)SurfaceChargesTool.o $(bin)PixelDigitization_entries.o $(bin)PixelDigitization_load.o $(use_requirements) $(PixelDigitizationstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)BichselSimTool.o $(bin)CalibSvc.o $(bin)ChargeCollProbSvc.o $(bin)DBMChargeTool.o $(bin)Ibl3DBichselChargeTool.o $(bin)Ibl3DChargeTool.o $(bin)IblPlanarBichselChargeTool.o $(bin)IblPlanarChargeTool.o $(bin)PixelBarrelBichselChargeTool.o $(bin)PixelBarrelChargeTool.o $(bin)PixelCellDiscriminator.o $(bin)PixelChargeSmearer.o $(bin)TimeSvc.o $(bin)PixelDigitization.o $(bin)PixelDigitizationTool.o $(bin)PixelDiodeCrossTalkGenerator.o $(bin)PixelECBichselChargeTool.o $(bin)PixelECChargeTool.o $(bin)PixelGangedMerger.o $(bin)PixelLightDigitizationTool.o $(bin)PixelNoisyCellGenerator.o $(bin)PixelRandomDisabledCellGenerator.o $(bin)SpecialPixelGenerator.o $(bin)SurfaceChargesTool.o $(bin)PixelDigitization_entries.o $(bin)PixelDigitization_load.o $(PixelDigitization_shlibflags)
	$(lib_silent) cat /dev/null >$(PixelDigitizationstamp) && \
	  cat /dev/null >$(PixelDigitizationshstamp)

$(PixelDigitizationshstamp) :: $(PixelDigitizationlibname).$(shlibsuffix)
	$(lib_silent) if test -f $(PixelDigitizationlibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(PixelDigitizationstamp) && \
	  cat /dev/null >$(PixelDigitizationshstamp) ; fi

PixelDigitizationclean ::
	$(cleanup_echo) objects PixelDigitization
	$(cleanup_silent) /bin/rm -f $(bin)BichselSimTool.o $(bin)CalibSvc.o $(bin)ChargeCollProbSvc.o $(bin)DBMChargeTool.o $(bin)Ibl3DBichselChargeTool.o $(bin)Ibl3DChargeTool.o $(bin)IblPlanarBichselChargeTool.o $(bin)IblPlanarChargeTool.o $(bin)PixelBarrelBichselChargeTool.o $(bin)PixelBarrelChargeTool.o $(bin)PixelCellDiscriminator.o $(bin)PixelChargeSmearer.o $(bin)TimeSvc.o $(bin)PixelDigitization.o $(bin)PixelDigitizationTool.o $(bin)PixelDiodeCrossTalkGenerator.o $(bin)PixelECBichselChargeTool.o $(bin)PixelECChargeTool.o $(bin)PixelGangedMerger.o $(bin)PixelLightDigitizationTool.o $(bin)PixelNoisyCellGenerator.o $(bin)PixelRandomDisabledCellGenerator.o $(bin)SpecialPixelGenerator.o $(bin)SurfaceChargesTool.o $(bin)PixelDigitization_entries.o $(bin)PixelDigitization_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)BichselSimTool.o $(bin)CalibSvc.o $(bin)ChargeCollProbSvc.o $(bin)DBMChargeTool.o $(bin)Ibl3DBichselChargeTool.o $(bin)Ibl3DChargeTool.o $(bin)IblPlanarBichselChargeTool.o $(bin)IblPlanarChargeTool.o $(bin)PixelBarrelBichselChargeTool.o $(bin)PixelBarrelChargeTool.o $(bin)PixelCellDiscriminator.o $(bin)PixelChargeSmearer.o $(bin)TimeSvc.o $(bin)PixelDigitization.o $(bin)PixelDigitizationTool.o $(bin)PixelDiodeCrossTalkGenerator.o $(bin)PixelECBichselChargeTool.o $(bin)PixelECChargeTool.o $(bin)PixelGangedMerger.o $(bin)PixelLightDigitizationTool.o $(bin)PixelNoisyCellGenerator.o $(bin)PixelRandomDisabledCellGenerator.o $(bin)SpecialPixelGenerator.o $(bin)SurfaceChargesTool.o $(bin)PixelDigitization_entries.o $(bin)PixelDigitization_load.o) $(patsubst %.o,%.dep,$(bin)BichselSimTool.o $(bin)CalibSvc.o $(bin)ChargeCollProbSvc.o $(bin)DBMChargeTool.o $(bin)Ibl3DBichselChargeTool.o $(bin)Ibl3DChargeTool.o $(bin)IblPlanarBichselChargeTool.o $(bin)IblPlanarChargeTool.o $(bin)PixelBarrelBichselChargeTool.o $(bin)PixelBarrelChargeTool.o $(bin)PixelCellDiscriminator.o $(bin)PixelChargeSmearer.o $(bin)TimeSvc.o $(bin)PixelDigitization.o $(bin)PixelDigitizationTool.o $(bin)PixelDiodeCrossTalkGenerator.o $(bin)PixelECBichselChargeTool.o $(bin)PixelECChargeTool.o $(bin)PixelGangedMerger.o $(bin)PixelLightDigitizationTool.o $(bin)PixelNoisyCellGenerator.o $(bin)PixelRandomDisabledCellGenerator.o $(bin)SpecialPixelGenerator.o $(bin)SurfaceChargesTool.o $(bin)PixelDigitization_entries.o $(bin)PixelDigitization_load.o) $(patsubst %.o,%.d.stamp,$(bin)BichselSimTool.o $(bin)CalibSvc.o $(bin)ChargeCollProbSvc.o $(bin)DBMChargeTool.o $(bin)Ibl3DBichselChargeTool.o $(bin)Ibl3DChargeTool.o $(bin)IblPlanarBichselChargeTool.o $(bin)IblPlanarChargeTool.o $(bin)PixelBarrelBichselChargeTool.o $(bin)PixelBarrelChargeTool.o $(bin)PixelCellDiscriminator.o $(bin)PixelChargeSmearer.o $(bin)TimeSvc.o $(bin)PixelDigitization.o $(bin)PixelDigitizationTool.o $(bin)PixelDiodeCrossTalkGenerator.o $(bin)PixelECBichselChargeTool.o $(bin)PixelECChargeTool.o $(bin)PixelGangedMerger.o $(bin)PixelLightDigitizationTool.o $(bin)PixelNoisyCellGenerator.o $(bin)PixelRandomDisabledCellGenerator.o $(bin)SpecialPixelGenerator.o $(bin)SurfaceChargesTool.o $(bin)PixelDigitization_entries.o $(bin)PixelDigitization_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf PixelDigitization_deps PixelDigitization_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
PixelDigitizationinstallname = $(library_prefix)PixelDigitization$(library_suffix).$(shlibsuffix)

PixelDigitization :: PixelDigitizationinstall ;

install :: PixelDigitizationinstall ;

PixelDigitizationinstall :: $(install_dir)/$(PixelDigitizationinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(PixelDigitizationinstallname) :: $(bin)$(PixelDigitizationinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(PixelDigitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##PixelDigitizationclean :: PixelDigitizationuninstall

uninstall :: PixelDigitizationuninstall ;

PixelDigitizationuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(PixelDigitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)BichselSimTool.d

$(bin)$(binobj)BichselSimTool.d :

$(bin)$(binobj)BichselSimTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)BichselSimTool.o : $(src)BichselSimTool.cxx
	$(cpp_echo) $(src)BichselSimTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(BichselSimTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(BichselSimTool_cppflags) $(BichselSimTool_cxx_cppflags)  $(src)BichselSimTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(BichselSimTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)BichselSimTool.cxx

$(bin)$(binobj)BichselSimTool.o : $(BichselSimTool_cxx_dependencies)
	$(cpp_echo) $(src)BichselSimTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(BichselSimTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(BichselSimTool_cppflags) $(BichselSimTool_cxx_cppflags)  $(src)BichselSimTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)CalibSvc.d

$(bin)$(binobj)CalibSvc.d :

$(bin)$(binobj)CalibSvc.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)CalibSvc.o : $(src)CalibSvc.cxx
	$(cpp_echo) $(src)CalibSvc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(CalibSvc_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(CalibSvc_cppflags) $(CalibSvc_cxx_cppflags)  $(src)CalibSvc.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(CalibSvc_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)CalibSvc.cxx

$(bin)$(binobj)CalibSvc.o : $(CalibSvc_cxx_dependencies)
	$(cpp_echo) $(src)CalibSvc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(CalibSvc_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(CalibSvc_cppflags) $(CalibSvc_cxx_cppflags)  $(src)CalibSvc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ChargeCollProbSvc.d

$(bin)$(binobj)ChargeCollProbSvc.d :

$(bin)$(binobj)ChargeCollProbSvc.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)ChargeCollProbSvc.o : $(src)ChargeCollProbSvc.cxx
	$(cpp_echo) $(src)ChargeCollProbSvc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(ChargeCollProbSvc_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(ChargeCollProbSvc_cppflags) $(ChargeCollProbSvc_cxx_cppflags)  $(src)ChargeCollProbSvc.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(ChargeCollProbSvc_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)ChargeCollProbSvc.cxx

$(bin)$(binobj)ChargeCollProbSvc.o : $(ChargeCollProbSvc_cxx_dependencies)
	$(cpp_echo) $(src)ChargeCollProbSvc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(ChargeCollProbSvc_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(ChargeCollProbSvc_cppflags) $(ChargeCollProbSvc_cxx_cppflags)  $(src)ChargeCollProbSvc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)DBMChargeTool.d

$(bin)$(binobj)DBMChargeTool.d :

$(bin)$(binobj)DBMChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)DBMChargeTool.o : $(src)DBMChargeTool.cxx
	$(cpp_echo) $(src)DBMChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(DBMChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(DBMChargeTool_cppflags) $(DBMChargeTool_cxx_cppflags)  $(src)DBMChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(DBMChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)DBMChargeTool.cxx

$(bin)$(binobj)DBMChargeTool.o : $(DBMChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)DBMChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(DBMChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(DBMChargeTool_cppflags) $(DBMChargeTool_cxx_cppflags)  $(src)DBMChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Ibl3DBichselChargeTool.d

$(bin)$(binobj)Ibl3DBichselChargeTool.d :

$(bin)$(binobj)Ibl3DBichselChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)Ibl3DBichselChargeTool.o : $(src)Ibl3DBichselChargeTool.cxx
	$(cpp_echo) $(src)Ibl3DBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(Ibl3DBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(Ibl3DBichselChargeTool_cppflags) $(Ibl3DBichselChargeTool_cxx_cppflags)  $(src)Ibl3DBichselChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(Ibl3DBichselChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)Ibl3DBichselChargeTool.cxx

$(bin)$(binobj)Ibl3DBichselChargeTool.o : $(Ibl3DBichselChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)Ibl3DBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(Ibl3DBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(Ibl3DBichselChargeTool_cppflags) $(Ibl3DBichselChargeTool_cxx_cppflags)  $(src)Ibl3DBichselChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Ibl3DChargeTool.d

$(bin)$(binobj)Ibl3DChargeTool.d :

$(bin)$(binobj)Ibl3DChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)Ibl3DChargeTool.o : $(src)Ibl3DChargeTool.cxx
	$(cpp_echo) $(src)Ibl3DChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(Ibl3DChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(Ibl3DChargeTool_cppflags) $(Ibl3DChargeTool_cxx_cppflags)  $(src)Ibl3DChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(Ibl3DChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)Ibl3DChargeTool.cxx

$(bin)$(binobj)Ibl3DChargeTool.o : $(Ibl3DChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)Ibl3DChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(Ibl3DChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(Ibl3DChargeTool_cppflags) $(Ibl3DChargeTool_cxx_cppflags)  $(src)Ibl3DChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)IblPlanarBichselChargeTool.d

$(bin)$(binobj)IblPlanarBichselChargeTool.d :

$(bin)$(binobj)IblPlanarBichselChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)IblPlanarBichselChargeTool.o : $(src)IblPlanarBichselChargeTool.cxx
	$(cpp_echo) $(src)IblPlanarBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(IblPlanarBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(IblPlanarBichselChargeTool_cppflags) $(IblPlanarBichselChargeTool_cxx_cppflags)  $(src)IblPlanarBichselChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(IblPlanarBichselChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)IblPlanarBichselChargeTool.cxx

$(bin)$(binobj)IblPlanarBichselChargeTool.o : $(IblPlanarBichselChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)IblPlanarBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(IblPlanarBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(IblPlanarBichselChargeTool_cppflags) $(IblPlanarBichselChargeTool_cxx_cppflags)  $(src)IblPlanarBichselChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)IblPlanarChargeTool.d

$(bin)$(binobj)IblPlanarChargeTool.d :

$(bin)$(binobj)IblPlanarChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)IblPlanarChargeTool.o : $(src)IblPlanarChargeTool.cxx
	$(cpp_echo) $(src)IblPlanarChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(IblPlanarChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(IblPlanarChargeTool_cppflags) $(IblPlanarChargeTool_cxx_cppflags)  $(src)IblPlanarChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(IblPlanarChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)IblPlanarChargeTool.cxx

$(bin)$(binobj)IblPlanarChargeTool.o : $(IblPlanarChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)IblPlanarChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(IblPlanarChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(IblPlanarChargeTool_cppflags) $(IblPlanarChargeTool_cxx_cppflags)  $(src)IblPlanarChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelBarrelBichselChargeTool.d

$(bin)$(binobj)PixelBarrelBichselChargeTool.d :

$(bin)$(binobj)PixelBarrelBichselChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelBarrelBichselChargeTool.o : $(src)PixelBarrelBichselChargeTool.cxx
	$(cpp_echo) $(src)PixelBarrelBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelBarrelBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelBarrelBichselChargeTool_cppflags) $(PixelBarrelBichselChargeTool_cxx_cppflags)  $(src)PixelBarrelBichselChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelBarrelBichselChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelBarrelBichselChargeTool.cxx

$(bin)$(binobj)PixelBarrelBichselChargeTool.o : $(PixelBarrelBichselChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)PixelBarrelBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelBarrelBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelBarrelBichselChargeTool_cppflags) $(PixelBarrelBichselChargeTool_cxx_cppflags)  $(src)PixelBarrelBichselChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelBarrelChargeTool.d

$(bin)$(binobj)PixelBarrelChargeTool.d :

$(bin)$(binobj)PixelBarrelChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelBarrelChargeTool.o : $(src)PixelBarrelChargeTool.cxx
	$(cpp_echo) $(src)PixelBarrelChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelBarrelChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelBarrelChargeTool_cppflags) $(PixelBarrelChargeTool_cxx_cppflags)  $(src)PixelBarrelChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelBarrelChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelBarrelChargeTool.cxx

$(bin)$(binobj)PixelBarrelChargeTool.o : $(PixelBarrelChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)PixelBarrelChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelBarrelChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelBarrelChargeTool_cppflags) $(PixelBarrelChargeTool_cxx_cppflags)  $(src)PixelBarrelChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelCellDiscriminator.d

$(bin)$(binobj)PixelCellDiscriminator.d :

$(bin)$(binobj)PixelCellDiscriminator.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelCellDiscriminator.o : $(src)PixelCellDiscriminator.cxx
	$(cpp_echo) $(src)PixelCellDiscriminator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelCellDiscriminator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelCellDiscriminator_cppflags) $(PixelCellDiscriminator_cxx_cppflags)  $(src)PixelCellDiscriminator.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelCellDiscriminator_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelCellDiscriminator.cxx

$(bin)$(binobj)PixelCellDiscriminator.o : $(PixelCellDiscriminator_cxx_dependencies)
	$(cpp_echo) $(src)PixelCellDiscriminator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelCellDiscriminator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelCellDiscriminator_cppflags) $(PixelCellDiscriminator_cxx_cppflags)  $(src)PixelCellDiscriminator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelChargeSmearer.d

$(bin)$(binobj)PixelChargeSmearer.d :

$(bin)$(binobj)PixelChargeSmearer.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelChargeSmearer.o : $(src)PixelChargeSmearer.cxx
	$(cpp_echo) $(src)PixelChargeSmearer.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelChargeSmearer_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelChargeSmearer_cppflags) $(PixelChargeSmearer_cxx_cppflags)  $(src)PixelChargeSmearer.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelChargeSmearer_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelChargeSmearer.cxx

$(bin)$(binobj)PixelChargeSmearer.o : $(PixelChargeSmearer_cxx_dependencies)
	$(cpp_echo) $(src)PixelChargeSmearer.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelChargeSmearer_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelChargeSmearer_cppflags) $(PixelChargeSmearer_cxx_cppflags)  $(src)PixelChargeSmearer.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TimeSvc.d

$(bin)$(binobj)TimeSvc.d :

$(bin)$(binobj)TimeSvc.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)TimeSvc.o : $(src)TimeSvc.cxx
	$(cpp_echo) $(src)TimeSvc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(TimeSvc_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(TimeSvc_cppflags) $(TimeSvc_cxx_cppflags)  $(src)TimeSvc.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(TimeSvc_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)TimeSvc.cxx

$(bin)$(binobj)TimeSvc.o : $(TimeSvc_cxx_dependencies)
	$(cpp_echo) $(src)TimeSvc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(TimeSvc_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(TimeSvc_cppflags) $(TimeSvc_cxx_cppflags)  $(src)TimeSvc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDigitization.d

$(bin)$(binobj)PixelDigitization.d :

$(bin)$(binobj)PixelDigitization.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelDigitization.o : $(src)PixelDigitization.cxx
	$(cpp_echo) $(src)PixelDigitization.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitization_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitization_cppflags) $(PixelDigitization_cxx_cppflags)  $(src)PixelDigitization.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelDigitization_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelDigitization.cxx

$(bin)$(binobj)PixelDigitization.o : $(PixelDigitization_cxx_dependencies)
	$(cpp_echo) $(src)PixelDigitization.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitization_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitization_cppflags) $(PixelDigitization_cxx_cppflags)  $(src)PixelDigitization.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDigitizationTool.d

$(bin)$(binobj)PixelDigitizationTool.d :

$(bin)$(binobj)PixelDigitizationTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelDigitizationTool.o : $(src)PixelDigitizationTool.cxx
	$(cpp_echo) $(src)PixelDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitizationTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitizationTool_cppflags) $(PixelDigitizationTool_cxx_cppflags)  $(src)PixelDigitizationTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelDigitizationTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelDigitizationTool.cxx

$(bin)$(binobj)PixelDigitizationTool.o : $(PixelDigitizationTool_cxx_dependencies)
	$(cpp_echo) $(src)PixelDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitizationTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitizationTool_cppflags) $(PixelDigitizationTool_cxx_cppflags)  $(src)PixelDigitizationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDiodeCrossTalkGenerator.d

$(bin)$(binobj)PixelDiodeCrossTalkGenerator.d :

$(bin)$(binobj)PixelDiodeCrossTalkGenerator.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelDiodeCrossTalkGenerator.o : $(src)PixelDiodeCrossTalkGenerator.cxx
	$(cpp_echo) $(src)PixelDiodeCrossTalkGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDiodeCrossTalkGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDiodeCrossTalkGenerator_cppflags) $(PixelDiodeCrossTalkGenerator_cxx_cppflags)  $(src)PixelDiodeCrossTalkGenerator.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelDiodeCrossTalkGenerator_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelDiodeCrossTalkGenerator.cxx

$(bin)$(binobj)PixelDiodeCrossTalkGenerator.o : $(PixelDiodeCrossTalkGenerator_cxx_dependencies)
	$(cpp_echo) $(src)PixelDiodeCrossTalkGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDiodeCrossTalkGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDiodeCrossTalkGenerator_cppflags) $(PixelDiodeCrossTalkGenerator_cxx_cppflags)  $(src)PixelDiodeCrossTalkGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelECBichselChargeTool.d

$(bin)$(binobj)PixelECBichselChargeTool.d :

$(bin)$(binobj)PixelECBichselChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelECBichselChargeTool.o : $(src)PixelECBichselChargeTool.cxx
	$(cpp_echo) $(src)PixelECBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelECBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelECBichselChargeTool_cppflags) $(PixelECBichselChargeTool_cxx_cppflags)  $(src)PixelECBichselChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelECBichselChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelECBichselChargeTool.cxx

$(bin)$(binobj)PixelECBichselChargeTool.o : $(PixelECBichselChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)PixelECBichselChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelECBichselChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelECBichselChargeTool_cppflags) $(PixelECBichselChargeTool_cxx_cppflags)  $(src)PixelECBichselChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelECChargeTool.d

$(bin)$(binobj)PixelECChargeTool.d :

$(bin)$(binobj)PixelECChargeTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelECChargeTool.o : $(src)PixelECChargeTool.cxx
	$(cpp_echo) $(src)PixelECChargeTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelECChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelECChargeTool_cppflags) $(PixelECChargeTool_cxx_cppflags)  $(src)PixelECChargeTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelECChargeTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelECChargeTool.cxx

$(bin)$(binobj)PixelECChargeTool.o : $(PixelECChargeTool_cxx_dependencies)
	$(cpp_echo) $(src)PixelECChargeTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelECChargeTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelECChargeTool_cppflags) $(PixelECChargeTool_cxx_cppflags)  $(src)PixelECChargeTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelGangedMerger.d

$(bin)$(binobj)PixelGangedMerger.d :

$(bin)$(binobj)PixelGangedMerger.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelGangedMerger.o : $(src)PixelGangedMerger.cxx
	$(cpp_echo) $(src)PixelGangedMerger.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelGangedMerger_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelGangedMerger_cppflags) $(PixelGangedMerger_cxx_cppflags)  $(src)PixelGangedMerger.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelGangedMerger_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelGangedMerger.cxx

$(bin)$(binobj)PixelGangedMerger.o : $(PixelGangedMerger_cxx_dependencies)
	$(cpp_echo) $(src)PixelGangedMerger.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelGangedMerger_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelGangedMerger_cppflags) $(PixelGangedMerger_cxx_cppflags)  $(src)PixelGangedMerger.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelLightDigitizationTool.d

$(bin)$(binobj)PixelLightDigitizationTool.d :

$(bin)$(binobj)PixelLightDigitizationTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelLightDigitizationTool.o : $(src)PixelLightDigitizationTool.cxx
	$(cpp_echo) $(src)PixelLightDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelLightDigitizationTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelLightDigitizationTool_cppflags) $(PixelLightDigitizationTool_cxx_cppflags)  $(src)PixelLightDigitizationTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelLightDigitizationTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelLightDigitizationTool.cxx

$(bin)$(binobj)PixelLightDigitizationTool.o : $(PixelLightDigitizationTool_cxx_dependencies)
	$(cpp_echo) $(src)PixelLightDigitizationTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelLightDigitizationTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelLightDigitizationTool_cppflags) $(PixelLightDigitizationTool_cxx_cppflags)  $(src)PixelLightDigitizationTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelNoisyCellGenerator.d

$(bin)$(binobj)PixelNoisyCellGenerator.d :

$(bin)$(binobj)PixelNoisyCellGenerator.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelNoisyCellGenerator.o : $(src)PixelNoisyCellGenerator.cxx
	$(cpp_echo) $(src)PixelNoisyCellGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelNoisyCellGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelNoisyCellGenerator_cppflags) $(PixelNoisyCellGenerator_cxx_cppflags)  $(src)PixelNoisyCellGenerator.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelNoisyCellGenerator_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelNoisyCellGenerator.cxx

$(bin)$(binobj)PixelNoisyCellGenerator.o : $(PixelNoisyCellGenerator_cxx_dependencies)
	$(cpp_echo) $(src)PixelNoisyCellGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelNoisyCellGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelNoisyCellGenerator_cppflags) $(PixelNoisyCellGenerator_cxx_cppflags)  $(src)PixelNoisyCellGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelRandomDisabledCellGenerator.d

$(bin)$(binobj)PixelRandomDisabledCellGenerator.d :

$(bin)$(binobj)PixelRandomDisabledCellGenerator.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelRandomDisabledCellGenerator.o : $(src)PixelRandomDisabledCellGenerator.cxx
	$(cpp_echo) $(src)PixelRandomDisabledCellGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelRandomDisabledCellGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelRandomDisabledCellGenerator_cppflags) $(PixelRandomDisabledCellGenerator_cxx_cppflags)  $(src)PixelRandomDisabledCellGenerator.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelRandomDisabledCellGenerator_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)PixelRandomDisabledCellGenerator.cxx

$(bin)$(binobj)PixelRandomDisabledCellGenerator.o : $(PixelRandomDisabledCellGenerator_cxx_dependencies)
	$(cpp_echo) $(src)PixelRandomDisabledCellGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelRandomDisabledCellGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelRandomDisabledCellGenerator_cppflags) $(PixelRandomDisabledCellGenerator_cxx_cppflags)  $(src)PixelRandomDisabledCellGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SpecialPixelGenerator.d

$(bin)$(binobj)SpecialPixelGenerator.d :

$(bin)$(binobj)SpecialPixelGenerator.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)SpecialPixelGenerator.o : $(src)SpecialPixelGenerator.cxx
	$(cpp_echo) $(src)SpecialPixelGenerator.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(SpecialPixelGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(SpecialPixelGenerator_cppflags) $(SpecialPixelGenerator_cxx_cppflags)  $(src)SpecialPixelGenerator.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(SpecialPixelGenerator_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)SpecialPixelGenerator.cxx

$(bin)$(binobj)SpecialPixelGenerator.o : $(SpecialPixelGenerator_cxx_dependencies)
	$(cpp_echo) $(src)SpecialPixelGenerator.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(SpecialPixelGenerator_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(SpecialPixelGenerator_cppflags) $(SpecialPixelGenerator_cxx_cppflags)  $(src)SpecialPixelGenerator.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SurfaceChargesTool.d

$(bin)$(binobj)SurfaceChargesTool.d :

$(bin)$(binobj)SurfaceChargesTool.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)SurfaceChargesTool.o : $(src)SurfaceChargesTool.cxx
	$(cpp_echo) $(src)SurfaceChargesTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(SurfaceChargesTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(SurfaceChargesTool_cppflags) $(SurfaceChargesTool_cxx_cppflags)  $(src)SurfaceChargesTool.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(SurfaceChargesTool_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)SurfaceChargesTool.cxx

$(bin)$(binobj)SurfaceChargesTool.o : $(SurfaceChargesTool_cxx_dependencies)
	$(cpp_echo) $(src)SurfaceChargesTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(SurfaceChargesTool_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(SurfaceChargesTool_cppflags) $(SurfaceChargesTool_cxx_cppflags)  $(src)SurfaceChargesTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDigitization_entries.d

$(bin)$(binobj)PixelDigitization_entries.d :

$(bin)$(binobj)PixelDigitization_entries.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelDigitization_entries.o : $(src)components/PixelDigitization_entries.cxx
	$(cpp_echo) $(src)components/PixelDigitization_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitization_entries_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitization_entries_cppflags) $(PixelDigitization_entries_cxx_cppflags) -I../src/components $(src)components/PixelDigitization_entries.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelDigitization_entries_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)components/PixelDigitization_entries.cxx

$(bin)$(binobj)PixelDigitization_entries.o : $(PixelDigitization_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/PixelDigitization_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitization_entries_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitization_entries_cppflags) $(PixelDigitization_entries_cxx_cppflags) -I../src/components $(src)components/PixelDigitization_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),PixelDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDigitization_load.d

$(bin)$(binobj)PixelDigitization_load.d :

$(bin)$(binobj)PixelDigitization_load.o : $(cmt_final_setup_PixelDigitization)

$(bin)$(binobj)PixelDigitization_load.o : $(src)components/PixelDigitization_load.cxx
	$(cpp_echo) $(src)components/PixelDigitization_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitization_load_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitization_load_cppflags) $(PixelDigitization_load_cxx_cppflags) -I../src/components $(src)components/PixelDigitization_load.cxx
endif
endif

else
$(bin)PixelDigitization_dependencies.make : $(PixelDigitization_load_cxx_dependencies)

$(bin)PixelDigitization_dependencies.make : $(src)components/PixelDigitization_load.cxx

$(bin)$(binobj)PixelDigitization_load.o : $(PixelDigitization_load_cxx_dependencies)
	$(cpp_echo) $(src)components/PixelDigitization_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(PixelDigitization_pp_cppflags) $(lib_PixelDigitization_pp_cppflags) $(PixelDigitization_load_pp_cppflags) $(use_cppflags) $(PixelDigitization_cppflags) $(lib_PixelDigitization_cppflags) $(PixelDigitization_load_cppflags) $(PixelDigitization_load_cxx_cppflags) -I../src/components $(src)components/PixelDigitization_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: PixelDigitizationclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(PixelDigitization.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

PixelDigitizationclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library PixelDigitization
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)PixelDigitization$(library_suffix).a $(library_prefix)PixelDigitization$(library_suffix).$(shlibsuffix) PixelDigitization.stamp PixelDigitization.shstamp
#-- end of cleanup_library ---------------
