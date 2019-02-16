#-- start of make_header -----------------

#====================================
#  Library InDetReadoutGeometry
#
#   Generated Tue Jan 29 18:44:40 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetReadoutGeometry_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetReadoutGeometry_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetReadoutGeometry

InDetReadoutGeometry_tag = $(tag)

#cmt_local_tagfile_InDetReadoutGeometry = $(InDetReadoutGeometry_tag)_InDetReadoutGeometry.make
cmt_local_tagfile_InDetReadoutGeometry = $(bin)$(InDetReadoutGeometry_tag)_InDetReadoutGeometry.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetReadoutGeometry_tag = $(tag)

#cmt_local_tagfile_InDetReadoutGeometry = $(InDetReadoutGeometry_tag).make
cmt_local_tagfile_InDetReadoutGeometry = $(bin)$(InDetReadoutGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetReadoutGeometry)
#-include $(cmt_local_tagfile_InDetReadoutGeometry)

ifdef cmt_InDetReadoutGeometry_has_target_tag

cmt_final_setup_InDetReadoutGeometry = $(bin)setup_InDetReadoutGeometry.make
cmt_dependencies_in_InDetReadoutGeometry = $(bin)dependencies_InDetReadoutGeometry.in
#cmt_final_setup_InDetReadoutGeometry = $(bin)InDetReadoutGeometry_InDetReadoutGeometrysetup.make
cmt_local_InDetReadoutGeometry_makefile = $(bin)InDetReadoutGeometry.make

else

cmt_final_setup_InDetReadoutGeometry = $(bin)setup.make
cmt_dependencies_in_InDetReadoutGeometry = $(bin)dependencies.in
#cmt_final_setup_InDetReadoutGeometry = $(bin)InDetReadoutGeometrysetup.make
cmt_local_InDetReadoutGeometry_makefile = $(bin)InDetReadoutGeometry.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetReadoutGeometrysetup.make

#InDetReadoutGeometry :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetReadoutGeometry'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetReadoutGeometry/
#InDetReadoutGeometry::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

InDetReadoutGeometrylibname   = $(bin)$(library_prefix)InDetReadoutGeometry$(library_suffix)
InDetReadoutGeometrylib       = $(InDetReadoutGeometrylibname).a
InDetReadoutGeometrystamp     = $(bin)InDetReadoutGeometry.stamp
InDetReadoutGeometryshstamp   = $(bin)InDetReadoutGeometry.shstamp

InDetReadoutGeometry :: dirs  InDetReadoutGeometryLIB
	$(echo) "InDetReadoutGeometry ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#InDetReadoutGeometryLIB :: $(InDetReadoutGeometrylib) $(InDetReadoutGeometryshstamp)
InDetReadoutGeometryLIB :: $(InDetReadoutGeometryshstamp)
	$(echo) "InDetReadoutGeometry : library ok"

$(InDetReadoutGeometrylib) :: $(bin)InDetDetectorManager.o $(bin)PixelDetectorManager.o $(bin)PixelDiodeMap.o $(bin)PixelDiodeMatrix.o $(bin)PixelModuleDesign.o $(bin)PixelMultipleConnection1D.o $(bin)PixelReadoutScheme.o $(bin)SCT_BarrelModuleSideDesign.o $(bin)SCT_DetectorManager.o $(bin)SCT_ForwardFrameTransformation.o $(bin)SCT_ForwardModuleSideDesign.o $(bin)SCT_ForwardModuleSideGeometry.o $(bin)SCT_ForwardPolarPosition.o $(bin)SCT_ModuleSideDesign.o $(bin)SCT_ReadoutScheme.o $(bin)SiCellId.o $(bin)SiCommonItems.o $(bin)SiDetectorDesign.o $(bin)SiDetectorElement.o $(bin)SiDetectorElementMap.o $(bin)SiDetectorManager.o $(bin)SiDiodesParameters.o $(bin)SiLocalPosition.o $(bin)SiNumerology.o $(bin)Version.o $(bin)StripAnnulusDesign.o $(bin)StripBoxDesign.o $(bin)StripStereoAnnulusDesign.o $(bin)TRT_BarrelCode.o $(bin)TRT_BarrelDescriptor.o $(bin)TRT_BarrelElement.o $(bin)TRT_BaseElement.o $(bin)TRT_Conditions.o $(bin)TRT_DetectorManager.o $(bin)TRT_EndcapCode.o $(bin)TRT_EndcapDescriptor.o $(bin)TRT_EndcapElement.o $(bin)TRT_Numerology.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(InDetReadoutGeometrylib) $?
	$(lib_silent) $(ranlib) $(InDetReadoutGeometrylib)
	$(lib_silent) cat /dev/null >$(InDetReadoutGeometrystamp)

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

$(InDetReadoutGeometrylibname).$(shlibsuffix) :: $(bin)InDetDetectorManager.o $(bin)PixelDetectorManager.o $(bin)PixelDiodeMap.o $(bin)PixelDiodeMatrix.o $(bin)PixelModuleDesign.o $(bin)PixelMultipleConnection1D.o $(bin)PixelReadoutScheme.o $(bin)SCT_BarrelModuleSideDesign.o $(bin)SCT_DetectorManager.o $(bin)SCT_ForwardFrameTransformation.o $(bin)SCT_ForwardModuleSideDesign.o $(bin)SCT_ForwardModuleSideGeometry.o $(bin)SCT_ForwardPolarPosition.o $(bin)SCT_ModuleSideDesign.o $(bin)SCT_ReadoutScheme.o $(bin)SiCellId.o $(bin)SiCommonItems.o $(bin)SiDetectorDesign.o $(bin)SiDetectorElement.o $(bin)SiDetectorElementMap.o $(bin)SiDetectorManager.o $(bin)SiDiodesParameters.o $(bin)SiLocalPosition.o $(bin)SiNumerology.o $(bin)Version.o $(bin)StripAnnulusDesign.o $(bin)StripBoxDesign.o $(bin)StripStereoAnnulusDesign.o $(bin)TRT_BarrelCode.o $(bin)TRT_BarrelDescriptor.o $(bin)TRT_BarrelElement.o $(bin)TRT_BaseElement.o $(bin)TRT_Conditions.o $(bin)TRT_DetectorManager.o $(bin)TRT_EndcapCode.o $(bin)TRT_EndcapDescriptor.o $(bin)TRT_EndcapElement.o $(bin)TRT_Numerology.o $(use_requirements) $(InDetReadoutGeometrystamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)InDetDetectorManager.o $(bin)PixelDetectorManager.o $(bin)PixelDiodeMap.o $(bin)PixelDiodeMatrix.o $(bin)PixelModuleDesign.o $(bin)PixelMultipleConnection1D.o $(bin)PixelReadoutScheme.o $(bin)SCT_BarrelModuleSideDesign.o $(bin)SCT_DetectorManager.o $(bin)SCT_ForwardFrameTransformation.o $(bin)SCT_ForwardModuleSideDesign.o $(bin)SCT_ForwardModuleSideGeometry.o $(bin)SCT_ForwardPolarPosition.o $(bin)SCT_ModuleSideDesign.o $(bin)SCT_ReadoutScheme.o $(bin)SiCellId.o $(bin)SiCommonItems.o $(bin)SiDetectorDesign.o $(bin)SiDetectorElement.o $(bin)SiDetectorElementMap.o $(bin)SiDetectorManager.o $(bin)SiDiodesParameters.o $(bin)SiLocalPosition.o $(bin)SiNumerology.o $(bin)Version.o $(bin)StripAnnulusDesign.o $(bin)StripBoxDesign.o $(bin)StripStereoAnnulusDesign.o $(bin)TRT_BarrelCode.o $(bin)TRT_BarrelDescriptor.o $(bin)TRT_BarrelElement.o $(bin)TRT_BaseElement.o $(bin)TRT_Conditions.o $(bin)TRT_DetectorManager.o $(bin)TRT_EndcapCode.o $(bin)TRT_EndcapDescriptor.o $(bin)TRT_EndcapElement.o $(bin)TRT_Numerology.o $(InDetReadoutGeometry_shlibflags)
	$(lib_silent) cat /dev/null >$(InDetReadoutGeometrystamp) && \
	  cat /dev/null >$(InDetReadoutGeometryshstamp)

$(InDetReadoutGeometryshstamp) :: $(InDetReadoutGeometrylibname).$(shlibsuffix)
	$(lib_silent) if test -f $(InDetReadoutGeometrylibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(InDetReadoutGeometrystamp) && \
	  cat /dev/null >$(InDetReadoutGeometryshstamp) ; fi

InDetReadoutGeometryclean ::
	$(cleanup_echo) objects InDetReadoutGeometry
	$(cleanup_silent) /bin/rm -f $(bin)InDetDetectorManager.o $(bin)PixelDetectorManager.o $(bin)PixelDiodeMap.o $(bin)PixelDiodeMatrix.o $(bin)PixelModuleDesign.o $(bin)PixelMultipleConnection1D.o $(bin)PixelReadoutScheme.o $(bin)SCT_BarrelModuleSideDesign.o $(bin)SCT_DetectorManager.o $(bin)SCT_ForwardFrameTransformation.o $(bin)SCT_ForwardModuleSideDesign.o $(bin)SCT_ForwardModuleSideGeometry.o $(bin)SCT_ForwardPolarPosition.o $(bin)SCT_ModuleSideDesign.o $(bin)SCT_ReadoutScheme.o $(bin)SiCellId.o $(bin)SiCommonItems.o $(bin)SiDetectorDesign.o $(bin)SiDetectorElement.o $(bin)SiDetectorElementMap.o $(bin)SiDetectorManager.o $(bin)SiDiodesParameters.o $(bin)SiLocalPosition.o $(bin)SiNumerology.o $(bin)Version.o $(bin)StripAnnulusDesign.o $(bin)StripBoxDesign.o $(bin)StripStereoAnnulusDesign.o $(bin)TRT_BarrelCode.o $(bin)TRT_BarrelDescriptor.o $(bin)TRT_BarrelElement.o $(bin)TRT_BaseElement.o $(bin)TRT_Conditions.o $(bin)TRT_DetectorManager.o $(bin)TRT_EndcapCode.o $(bin)TRT_EndcapDescriptor.o $(bin)TRT_EndcapElement.o $(bin)TRT_Numerology.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)InDetDetectorManager.o $(bin)PixelDetectorManager.o $(bin)PixelDiodeMap.o $(bin)PixelDiodeMatrix.o $(bin)PixelModuleDesign.o $(bin)PixelMultipleConnection1D.o $(bin)PixelReadoutScheme.o $(bin)SCT_BarrelModuleSideDesign.o $(bin)SCT_DetectorManager.o $(bin)SCT_ForwardFrameTransformation.o $(bin)SCT_ForwardModuleSideDesign.o $(bin)SCT_ForwardModuleSideGeometry.o $(bin)SCT_ForwardPolarPosition.o $(bin)SCT_ModuleSideDesign.o $(bin)SCT_ReadoutScheme.o $(bin)SiCellId.o $(bin)SiCommonItems.o $(bin)SiDetectorDesign.o $(bin)SiDetectorElement.o $(bin)SiDetectorElementMap.o $(bin)SiDetectorManager.o $(bin)SiDiodesParameters.o $(bin)SiLocalPosition.o $(bin)SiNumerology.o $(bin)Version.o $(bin)StripAnnulusDesign.o $(bin)StripBoxDesign.o $(bin)StripStereoAnnulusDesign.o $(bin)TRT_BarrelCode.o $(bin)TRT_BarrelDescriptor.o $(bin)TRT_BarrelElement.o $(bin)TRT_BaseElement.o $(bin)TRT_Conditions.o $(bin)TRT_DetectorManager.o $(bin)TRT_EndcapCode.o $(bin)TRT_EndcapDescriptor.o $(bin)TRT_EndcapElement.o $(bin)TRT_Numerology.o) $(patsubst %.o,%.dep,$(bin)InDetDetectorManager.o $(bin)PixelDetectorManager.o $(bin)PixelDiodeMap.o $(bin)PixelDiodeMatrix.o $(bin)PixelModuleDesign.o $(bin)PixelMultipleConnection1D.o $(bin)PixelReadoutScheme.o $(bin)SCT_BarrelModuleSideDesign.o $(bin)SCT_DetectorManager.o $(bin)SCT_ForwardFrameTransformation.o $(bin)SCT_ForwardModuleSideDesign.o $(bin)SCT_ForwardModuleSideGeometry.o $(bin)SCT_ForwardPolarPosition.o $(bin)SCT_ModuleSideDesign.o $(bin)SCT_ReadoutScheme.o $(bin)SiCellId.o $(bin)SiCommonItems.o $(bin)SiDetectorDesign.o $(bin)SiDetectorElement.o $(bin)SiDetectorElementMap.o $(bin)SiDetectorManager.o $(bin)SiDiodesParameters.o $(bin)SiLocalPosition.o $(bin)SiNumerology.o $(bin)Version.o $(bin)StripAnnulusDesign.o $(bin)StripBoxDesign.o $(bin)StripStereoAnnulusDesign.o $(bin)TRT_BarrelCode.o $(bin)TRT_BarrelDescriptor.o $(bin)TRT_BarrelElement.o $(bin)TRT_BaseElement.o $(bin)TRT_Conditions.o $(bin)TRT_DetectorManager.o $(bin)TRT_EndcapCode.o $(bin)TRT_EndcapDescriptor.o $(bin)TRT_EndcapElement.o $(bin)TRT_Numerology.o) $(patsubst %.o,%.d.stamp,$(bin)InDetDetectorManager.o $(bin)PixelDetectorManager.o $(bin)PixelDiodeMap.o $(bin)PixelDiodeMatrix.o $(bin)PixelModuleDesign.o $(bin)PixelMultipleConnection1D.o $(bin)PixelReadoutScheme.o $(bin)SCT_BarrelModuleSideDesign.o $(bin)SCT_DetectorManager.o $(bin)SCT_ForwardFrameTransformation.o $(bin)SCT_ForwardModuleSideDesign.o $(bin)SCT_ForwardModuleSideGeometry.o $(bin)SCT_ForwardPolarPosition.o $(bin)SCT_ModuleSideDesign.o $(bin)SCT_ReadoutScheme.o $(bin)SiCellId.o $(bin)SiCommonItems.o $(bin)SiDetectorDesign.o $(bin)SiDetectorElement.o $(bin)SiDetectorElementMap.o $(bin)SiDetectorManager.o $(bin)SiDiodesParameters.o $(bin)SiLocalPosition.o $(bin)SiNumerology.o $(bin)Version.o $(bin)StripAnnulusDesign.o $(bin)StripBoxDesign.o $(bin)StripStereoAnnulusDesign.o $(bin)TRT_BarrelCode.o $(bin)TRT_BarrelDescriptor.o $(bin)TRT_BarrelElement.o $(bin)TRT_BaseElement.o $(bin)TRT_Conditions.o $(bin)TRT_DetectorManager.o $(bin)TRT_EndcapCode.o $(bin)TRT_EndcapDescriptor.o $(bin)TRT_EndcapElement.o $(bin)TRT_Numerology.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf InDetReadoutGeometry_deps InDetReadoutGeometry_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
InDetReadoutGeometryinstallname = $(library_prefix)InDetReadoutGeometry$(library_suffix).$(shlibsuffix)

InDetReadoutGeometry :: InDetReadoutGeometryinstall ;

install :: InDetReadoutGeometryinstall ;

InDetReadoutGeometryinstall :: $(install_dir)/$(InDetReadoutGeometryinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(InDetReadoutGeometryinstallname) :: $(bin)$(InDetReadoutGeometryinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetReadoutGeometryinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##InDetReadoutGeometryclean :: InDetReadoutGeometryuninstall

uninstall :: InDetReadoutGeometryuninstall ;

InDetReadoutGeometryuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetReadoutGeometryinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)InDetDetectorManager.d

$(bin)$(binobj)InDetDetectorManager.d :

$(bin)$(binobj)InDetDetectorManager.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)InDetDetectorManager.o : $(src)InDetDetectorManager.cxx
	$(cpp_echo) $(src)InDetDetectorManager.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(InDetDetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(InDetDetectorManager_cppflags) $(InDetDetectorManager_cxx_cppflags)  $(src)InDetDetectorManager.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(InDetDetectorManager_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)InDetDetectorManager.cxx

$(bin)$(binobj)InDetDetectorManager.o : $(InDetDetectorManager_cxx_dependencies)
	$(cpp_echo) $(src)InDetDetectorManager.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(InDetDetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(InDetDetectorManager_cppflags) $(InDetDetectorManager_cxx_cppflags)  $(src)InDetDetectorManager.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDetectorManager.d

$(bin)$(binobj)PixelDetectorManager.d :

$(bin)$(binobj)PixelDetectorManager.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)PixelDetectorManager.o : $(src)PixelDetectorManager.cxx
	$(cpp_echo) $(src)PixelDetectorManager.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelDetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelDetectorManager_cppflags) $(PixelDetectorManager_cxx_cppflags)  $(src)PixelDetectorManager.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(PixelDetectorManager_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)PixelDetectorManager.cxx

$(bin)$(binobj)PixelDetectorManager.o : $(PixelDetectorManager_cxx_dependencies)
	$(cpp_echo) $(src)PixelDetectorManager.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelDetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelDetectorManager_cppflags) $(PixelDetectorManager_cxx_cppflags)  $(src)PixelDetectorManager.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDiodeMap.d

$(bin)$(binobj)PixelDiodeMap.d :

$(bin)$(binobj)PixelDiodeMap.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)PixelDiodeMap.o : $(src)PixelDiodeMap.cxx
	$(cpp_echo) $(src)PixelDiodeMap.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelDiodeMap_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelDiodeMap_cppflags) $(PixelDiodeMap_cxx_cppflags)  $(src)PixelDiodeMap.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(PixelDiodeMap_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)PixelDiodeMap.cxx

$(bin)$(binobj)PixelDiodeMap.o : $(PixelDiodeMap_cxx_dependencies)
	$(cpp_echo) $(src)PixelDiodeMap.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelDiodeMap_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelDiodeMap_cppflags) $(PixelDiodeMap_cxx_cppflags)  $(src)PixelDiodeMap.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelDiodeMatrix.d

$(bin)$(binobj)PixelDiodeMatrix.d :

$(bin)$(binobj)PixelDiodeMatrix.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)PixelDiodeMatrix.o : $(src)PixelDiodeMatrix.cxx
	$(cpp_echo) $(src)PixelDiodeMatrix.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelDiodeMatrix_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelDiodeMatrix_cppflags) $(PixelDiodeMatrix_cxx_cppflags)  $(src)PixelDiodeMatrix.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(PixelDiodeMatrix_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)PixelDiodeMatrix.cxx

$(bin)$(binobj)PixelDiodeMatrix.o : $(PixelDiodeMatrix_cxx_dependencies)
	$(cpp_echo) $(src)PixelDiodeMatrix.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelDiodeMatrix_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelDiodeMatrix_cppflags) $(PixelDiodeMatrix_cxx_cppflags)  $(src)PixelDiodeMatrix.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelModuleDesign.d

$(bin)$(binobj)PixelModuleDesign.d :

$(bin)$(binobj)PixelModuleDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)PixelModuleDesign.o : $(src)PixelModuleDesign.cxx
	$(cpp_echo) $(src)PixelModuleDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelModuleDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelModuleDesign_cppflags) $(PixelModuleDesign_cxx_cppflags)  $(src)PixelModuleDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(PixelModuleDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)PixelModuleDesign.cxx

$(bin)$(binobj)PixelModuleDesign.o : $(PixelModuleDesign_cxx_dependencies)
	$(cpp_echo) $(src)PixelModuleDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelModuleDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelModuleDesign_cppflags) $(PixelModuleDesign_cxx_cppflags)  $(src)PixelModuleDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelMultipleConnection1D.d

$(bin)$(binobj)PixelMultipleConnection1D.d :

$(bin)$(binobj)PixelMultipleConnection1D.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)PixelMultipleConnection1D.o : $(src)PixelMultipleConnection1D.cxx
	$(cpp_echo) $(src)PixelMultipleConnection1D.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelMultipleConnection1D_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelMultipleConnection1D_cppflags) $(PixelMultipleConnection1D_cxx_cppflags)  $(src)PixelMultipleConnection1D.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(PixelMultipleConnection1D_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)PixelMultipleConnection1D.cxx

$(bin)$(binobj)PixelMultipleConnection1D.o : $(PixelMultipleConnection1D_cxx_dependencies)
	$(cpp_echo) $(src)PixelMultipleConnection1D.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelMultipleConnection1D_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelMultipleConnection1D_cppflags) $(PixelMultipleConnection1D_cxx_cppflags)  $(src)PixelMultipleConnection1D.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelReadoutScheme.d

$(bin)$(binobj)PixelReadoutScheme.d :

$(bin)$(binobj)PixelReadoutScheme.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)PixelReadoutScheme.o : $(src)PixelReadoutScheme.cxx
	$(cpp_echo) $(src)PixelReadoutScheme.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelReadoutScheme_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelReadoutScheme_cppflags) $(PixelReadoutScheme_cxx_cppflags)  $(src)PixelReadoutScheme.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(PixelReadoutScheme_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)PixelReadoutScheme.cxx

$(bin)$(binobj)PixelReadoutScheme.o : $(PixelReadoutScheme_cxx_dependencies)
	$(cpp_echo) $(src)PixelReadoutScheme.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(PixelReadoutScheme_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(PixelReadoutScheme_cppflags) $(PixelReadoutScheme_cxx_cppflags)  $(src)PixelReadoutScheme.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_BarrelModuleSideDesign.d

$(bin)$(binobj)SCT_BarrelModuleSideDesign.d :

$(bin)$(binobj)SCT_BarrelModuleSideDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_BarrelModuleSideDesign.o : $(src)SCT_BarrelModuleSideDesign.cxx
	$(cpp_echo) $(src)SCT_BarrelModuleSideDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_BarrelModuleSideDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_BarrelModuleSideDesign_cppflags) $(SCT_BarrelModuleSideDesign_cxx_cppflags)  $(src)SCT_BarrelModuleSideDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_BarrelModuleSideDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_BarrelModuleSideDesign.cxx

$(bin)$(binobj)SCT_BarrelModuleSideDesign.o : $(SCT_BarrelModuleSideDesign_cxx_dependencies)
	$(cpp_echo) $(src)SCT_BarrelModuleSideDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_BarrelModuleSideDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_BarrelModuleSideDesign_cppflags) $(SCT_BarrelModuleSideDesign_cxx_cppflags)  $(src)SCT_BarrelModuleSideDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_DetectorManager.d

$(bin)$(binobj)SCT_DetectorManager.d :

$(bin)$(binobj)SCT_DetectorManager.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_DetectorManager.o : $(src)SCT_DetectorManager.cxx
	$(cpp_echo) $(src)SCT_DetectorManager.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_DetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_DetectorManager_cppflags) $(SCT_DetectorManager_cxx_cppflags)  $(src)SCT_DetectorManager.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_DetectorManager_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_DetectorManager.cxx

$(bin)$(binobj)SCT_DetectorManager.o : $(SCT_DetectorManager_cxx_dependencies)
	$(cpp_echo) $(src)SCT_DetectorManager.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_DetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_DetectorManager_cppflags) $(SCT_DetectorManager_cxx_cppflags)  $(src)SCT_DetectorManager.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ForwardFrameTransformation.d

$(bin)$(binobj)SCT_ForwardFrameTransformation.d :

$(bin)$(binobj)SCT_ForwardFrameTransformation.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_ForwardFrameTransformation.o : $(src)SCT_ForwardFrameTransformation.cxx
	$(cpp_echo) $(src)SCT_ForwardFrameTransformation.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardFrameTransformation_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardFrameTransformation_cppflags) $(SCT_ForwardFrameTransformation_cxx_cppflags)  $(src)SCT_ForwardFrameTransformation.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_ForwardFrameTransformation_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_ForwardFrameTransformation.cxx

$(bin)$(binobj)SCT_ForwardFrameTransformation.o : $(SCT_ForwardFrameTransformation_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ForwardFrameTransformation.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardFrameTransformation_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardFrameTransformation_cppflags) $(SCT_ForwardFrameTransformation_cxx_cppflags)  $(src)SCT_ForwardFrameTransformation.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ForwardModuleSideDesign.d

$(bin)$(binobj)SCT_ForwardModuleSideDesign.d :

$(bin)$(binobj)SCT_ForwardModuleSideDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_ForwardModuleSideDesign.o : $(src)SCT_ForwardModuleSideDesign.cxx
	$(cpp_echo) $(src)SCT_ForwardModuleSideDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardModuleSideDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardModuleSideDesign_cppflags) $(SCT_ForwardModuleSideDesign_cxx_cppflags)  $(src)SCT_ForwardModuleSideDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_ForwardModuleSideDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_ForwardModuleSideDesign.cxx

$(bin)$(binobj)SCT_ForwardModuleSideDesign.o : $(SCT_ForwardModuleSideDesign_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ForwardModuleSideDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardModuleSideDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardModuleSideDesign_cppflags) $(SCT_ForwardModuleSideDesign_cxx_cppflags)  $(src)SCT_ForwardModuleSideDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ForwardModuleSideGeometry.d

$(bin)$(binobj)SCT_ForwardModuleSideGeometry.d :

$(bin)$(binobj)SCT_ForwardModuleSideGeometry.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_ForwardModuleSideGeometry.o : $(src)SCT_ForwardModuleSideGeometry.cxx
	$(cpp_echo) $(src)SCT_ForwardModuleSideGeometry.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardModuleSideGeometry_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardModuleSideGeometry_cppflags) $(SCT_ForwardModuleSideGeometry_cxx_cppflags)  $(src)SCT_ForwardModuleSideGeometry.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_ForwardModuleSideGeometry_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_ForwardModuleSideGeometry.cxx

$(bin)$(binobj)SCT_ForwardModuleSideGeometry.o : $(SCT_ForwardModuleSideGeometry_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ForwardModuleSideGeometry.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardModuleSideGeometry_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardModuleSideGeometry_cppflags) $(SCT_ForwardModuleSideGeometry_cxx_cppflags)  $(src)SCT_ForwardModuleSideGeometry.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ForwardPolarPosition.d

$(bin)$(binobj)SCT_ForwardPolarPosition.d :

$(bin)$(binobj)SCT_ForwardPolarPosition.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_ForwardPolarPosition.o : $(src)SCT_ForwardPolarPosition.cxx
	$(cpp_echo) $(src)SCT_ForwardPolarPosition.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardPolarPosition_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardPolarPosition_cppflags) $(SCT_ForwardPolarPosition_cxx_cppflags)  $(src)SCT_ForwardPolarPosition.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_ForwardPolarPosition_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_ForwardPolarPosition.cxx

$(bin)$(binobj)SCT_ForwardPolarPosition.o : $(SCT_ForwardPolarPosition_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ForwardPolarPosition.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ForwardPolarPosition_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ForwardPolarPosition_cppflags) $(SCT_ForwardPolarPosition_cxx_cppflags)  $(src)SCT_ForwardPolarPosition.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ModuleSideDesign.d

$(bin)$(binobj)SCT_ModuleSideDesign.d :

$(bin)$(binobj)SCT_ModuleSideDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_ModuleSideDesign.o : $(src)SCT_ModuleSideDesign.cxx
	$(cpp_echo) $(src)SCT_ModuleSideDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ModuleSideDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ModuleSideDesign_cppflags) $(SCT_ModuleSideDesign_cxx_cppflags)  $(src)SCT_ModuleSideDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_ModuleSideDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_ModuleSideDesign.cxx

$(bin)$(binobj)SCT_ModuleSideDesign.o : $(SCT_ModuleSideDesign_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ModuleSideDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ModuleSideDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ModuleSideDesign_cppflags) $(SCT_ModuleSideDesign_cxx_cppflags)  $(src)SCT_ModuleSideDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ReadoutScheme.d

$(bin)$(binobj)SCT_ReadoutScheme.d :

$(bin)$(binobj)SCT_ReadoutScheme.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SCT_ReadoutScheme.o : $(src)SCT_ReadoutScheme.cxx
	$(cpp_echo) $(src)SCT_ReadoutScheme.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ReadoutScheme_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ReadoutScheme_cppflags) $(SCT_ReadoutScheme_cxx_cppflags)  $(src)SCT_ReadoutScheme.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SCT_ReadoutScheme_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SCT_ReadoutScheme.cxx

$(bin)$(binobj)SCT_ReadoutScheme.o : $(SCT_ReadoutScheme_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ReadoutScheme.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SCT_ReadoutScheme_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SCT_ReadoutScheme_cppflags) $(SCT_ReadoutScheme_cxx_cppflags)  $(src)SCT_ReadoutScheme.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiCellId.d

$(bin)$(binobj)SiCellId.d :

$(bin)$(binobj)SiCellId.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiCellId.o : $(src)SiCellId.cxx
	$(cpp_echo) $(src)SiCellId.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiCellId_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiCellId_cppflags) $(SiCellId_cxx_cppflags)  $(src)SiCellId.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiCellId_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiCellId.cxx

$(bin)$(binobj)SiCellId.o : $(SiCellId_cxx_dependencies)
	$(cpp_echo) $(src)SiCellId.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiCellId_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiCellId_cppflags) $(SiCellId_cxx_cppflags)  $(src)SiCellId.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiCommonItems.d

$(bin)$(binobj)SiCommonItems.d :

$(bin)$(binobj)SiCommonItems.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiCommonItems.o : $(src)SiCommonItems.cxx
	$(cpp_echo) $(src)SiCommonItems.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiCommonItems_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiCommonItems_cppflags) $(SiCommonItems_cxx_cppflags)  $(src)SiCommonItems.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiCommonItems_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiCommonItems.cxx

$(bin)$(binobj)SiCommonItems.o : $(SiCommonItems_cxx_dependencies)
	$(cpp_echo) $(src)SiCommonItems.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiCommonItems_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiCommonItems_cppflags) $(SiCommonItems_cxx_cppflags)  $(src)SiCommonItems.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiDetectorDesign.d

$(bin)$(binobj)SiDetectorDesign.d :

$(bin)$(binobj)SiDetectorDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiDetectorDesign.o : $(src)SiDetectorDesign.cxx
	$(cpp_echo) $(src)SiDetectorDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorDesign_cppflags) $(SiDetectorDesign_cxx_cppflags)  $(src)SiDetectorDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiDetectorDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiDetectorDesign.cxx

$(bin)$(binobj)SiDetectorDesign.o : $(SiDetectorDesign_cxx_dependencies)
	$(cpp_echo) $(src)SiDetectorDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorDesign_cppflags) $(SiDetectorDesign_cxx_cppflags)  $(src)SiDetectorDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiDetectorElement.d

$(bin)$(binobj)SiDetectorElement.d :

$(bin)$(binobj)SiDetectorElement.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiDetectorElement.o : $(src)SiDetectorElement.cxx
	$(cpp_echo) $(src)SiDetectorElement.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorElement_cppflags) $(SiDetectorElement_cxx_cppflags)  $(src)SiDetectorElement.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiDetectorElement_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiDetectorElement.cxx

$(bin)$(binobj)SiDetectorElement.o : $(SiDetectorElement_cxx_dependencies)
	$(cpp_echo) $(src)SiDetectorElement.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorElement_cppflags) $(SiDetectorElement_cxx_cppflags)  $(src)SiDetectorElement.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiDetectorElementMap.d

$(bin)$(binobj)SiDetectorElementMap.d :

$(bin)$(binobj)SiDetectorElementMap.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiDetectorElementMap.o : $(src)SiDetectorElementMap.cxx
	$(cpp_echo) $(src)SiDetectorElementMap.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorElementMap_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorElementMap_cppflags) $(SiDetectorElementMap_cxx_cppflags)  $(src)SiDetectorElementMap.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiDetectorElementMap_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiDetectorElementMap.cxx

$(bin)$(binobj)SiDetectorElementMap.o : $(SiDetectorElementMap_cxx_dependencies)
	$(cpp_echo) $(src)SiDetectorElementMap.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorElementMap_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorElementMap_cppflags) $(SiDetectorElementMap_cxx_cppflags)  $(src)SiDetectorElementMap.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiDetectorManager.d

$(bin)$(binobj)SiDetectorManager.d :

$(bin)$(binobj)SiDetectorManager.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiDetectorManager.o : $(src)SiDetectorManager.cxx
	$(cpp_echo) $(src)SiDetectorManager.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorManager_cppflags) $(SiDetectorManager_cxx_cppflags)  $(src)SiDetectorManager.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiDetectorManager_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiDetectorManager.cxx

$(bin)$(binobj)SiDetectorManager.o : $(SiDetectorManager_cxx_dependencies)
	$(cpp_echo) $(src)SiDetectorManager.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDetectorManager_cppflags) $(SiDetectorManager_cxx_cppflags)  $(src)SiDetectorManager.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiDiodesParameters.d

$(bin)$(binobj)SiDiodesParameters.d :

$(bin)$(binobj)SiDiodesParameters.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiDiodesParameters.o : $(src)SiDiodesParameters.cxx
	$(cpp_echo) $(src)SiDiodesParameters.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDiodesParameters_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDiodesParameters_cppflags) $(SiDiodesParameters_cxx_cppflags)  $(src)SiDiodesParameters.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiDiodesParameters_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiDiodesParameters.cxx

$(bin)$(binobj)SiDiodesParameters.o : $(SiDiodesParameters_cxx_dependencies)
	$(cpp_echo) $(src)SiDiodesParameters.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiDiodesParameters_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiDiodesParameters_cppflags) $(SiDiodesParameters_cxx_cppflags)  $(src)SiDiodesParameters.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiLocalPosition.d

$(bin)$(binobj)SiLocalPosition.d :

$(bin)$(binobj)SiLocalPosition.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiLocalPosition.o : $(src)SiLocalPosition.cxx
	$(cpp_echo) $(src)SiLocalPosition.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiLocalPosition_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiLocalPosition_cppflags) $(SiLocalPosition_cxx_cppflags)  $(src)SiLocalPosition.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiLocalPosition_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiLocalPosition.cxx

$(bin)$(binobj)SiLocalPosition.o : $(SiLocalPosition_cxx_dependencies)
	$(cpp_echo) $(src)SiLocalPosition.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiLocalPosition_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiLocalPosition_cppflags) $(SiLocalPosition_cxx_cppflags)  $(src)SiLocalPosition.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiNumerology.d

$(bin)$(binobj)SiNumerology.d :

$(bin)$(binobj)SiNumerology.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)SiNumerology.o : $(src)SiNumerology.cxx
	$(cpp_echo) $(src)SiNumerology.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiNumerology_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiNumerology_cppflags) $(SiNumerology_cxx_cppflags)  $(src)SiNumerology.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(SiNumerology_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)SiNumerology.cxx

$(bin)$(binobj)SiNumerology.o : $(SiNumerology_cxx_dependencies)
	$(cpp_echo) $(src)SiNumerology.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(SiNumerology_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(SiNumerology_cppflags) $(SiNumerology_cxx_cppflags)  $(src)SiNumerology.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Version.d

$(bin)$(binobj)Version.d :

$(bin)$(binobj)Version.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)Version.o : $(src)Version.cxx
	$(cpp_echo) $(src)Version.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(Version_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(Version_cppflags) $(Version_cxx_cppflags)  $(src)Version.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(Version_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)Version.cxx

$(bin)$(binobj)Version.o : $(Version_cxx_dependencies)
	$(cpp_echo) $(src)Version.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(Version_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(Version_cppflags) $(Version_cxx_cppflags)  $(src)Version.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)StripAnnulusDesign.d

$(bin)$(binobj)StripAnnulusDesign.d :

$(bin)$(binobj)StripAnnulusDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)StripAnnulusDesign.o : $(src)StripAnnulusDesign.cxx
	$(cpp_echo) $(src)StripAnnulusDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(StripAnnulusDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(StripAnnulusDesign_cppflags) $(StripAnnulusDesign_cxx_cppflags)  $(src)StripAnnulusDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(StripAnnulusDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)StripAnnulusDesign.cxx

$(bin)$(binobj)StripAnnulusDesign.o : $(StripAnnulusDesign_cxx_dependencies)
	$(cpp_echo) $(src)StripAnnulusDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(StripAnnulusDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(StripAnnulusDesign_cppflags) $(StripAnnulusDesign_cxx_cppflags)  $(src)StripAnnulusDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)StripBoxDesign.d

$(bin)$(binobj)StripBoxDesign.d :

$(bin)$(binobj)StripBoxDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)StripBoxDesign.o : $(src)StripBoxDesign.cxx
	$(cpp_echo) $(src)StripBoxDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(StripBoxDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(StripBoxDesign_cppflags) $(StripBoxDesign_cxx_cppflags)  $(src)StripBoxDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(StripBoxDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)StripBoxDesign.cxx

$(bin)$(binobj)StripBoxDesign.o : $(StripBoxDesign_cxx_dependencies)
	$(cpp_echo) $(src)StripBoxDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(StripBoxDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(StripBoxDesign_cppflags) $(StripBoxDesign_cxx_cppflags)  $(src)StripBoxDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)StripStereoAnnulusDesign.d

$(bin)$(binobj)StripStereoAnnulusDesign.d :

$(bin)$(binobj)StripStereoAnnulusDesign.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)StripStereoAnnulusDesign.o : $(src)StripStereoAnnulusDesign.cxx
	$(cpp_echo) $(src)StripStereoAnnulusDesign.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(StripStereoAnnulusDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(StripStereoAnnulusDesign_cppflags) $(StripStereoAnnulusDesign_cxx_cppflags)  $(src)StripStereoAnnulusDesign.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(StripStereoAnnulusDesign_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)StripStereoAnnulusDesign.cxx

$(bin)$(binobj)StripStereoAnnulusDesign.o : $(StripStereoAnnulusDesign_cxx_dependencies)
	$(cpp_echo) $(src)StripStereoAnnulusDesign.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(StripStereoAnnulusDesign_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(StripStereoAnnulusDesign_cppflags) $(StripStereoAnnulusDesign_cxx_cppflags)  $(src)StripStereoAnnulusDesign.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_BarrelCode.d

$(bin)$(binobj)TRT_BarrelCode.d :

$(bin)$(binobj)TRT_BarrelCode.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_BarrelCode.o : $(src)TRT_BarrelCode.cxx
	$(cpp_echo) $(src)TRT_BarrelCode.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BarrelCode_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BarrelCode_cppflags) $(TRT_BarrelCode_cxx_cppflags)  $(src)TRT_BarrelCode.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_BarrelCode_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_BarrelCode.cxx

$(bin)$(binobj)TRT_BarrelCode.o : $(TRT_BarrelCode_cxx_dependencies)
	$(cpp_echo) $(src)TRT_BarrelCode.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BarrelCode_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BarrelCode_cppflags) $(TRT_BarrelCode_cxx_cppflags)  $(src)TRT_BarrelCode.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_BarrelDescriptor.d

$(bin)$(binobj)TRT_BarrelDescriptor.d :

$(bin)$(binobj)TRT_BarrelDescriptor.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_BarrelDescriptor.o : $(src)TRT_BarrelDescriptor.cxx
	$(cpp_echo) $(src)TRT_BarrelDescriptor.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BarrelDescriptor_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BarrelDescriptor_cppflags) $(TRT_BarrelDescriptor_cxx_cppflags)  $(src)TRT_BarrelDescriptor.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_BarrelDescriptor_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_BarrelDescriptor.cxx

$(bin)$(binobj)TRT_BarrelDescriptor.o : $(TRT_BarrelDescriptor_cxx_dependencies)
	$(cpp_echo) $(src)TRT_BarrelDescriptor.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BarrelDescriptor_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BarrelDescriptor_cppflags) $(TRT_BarrelDescriptor_cxx_cppflags)  $(src)TRT_BarrelDescriptor.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_BarrelElement.d

$(bin)$(binobj)TRT_BarrelElement.d :

$(bin)$(binobj)TRT_BarrelElement.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_BarrelElement.o : $(src)TRT_BarrelElement.cxx
	$(cpp_echo) $(src)TRT_BarrelElement.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BarrelElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BarrelElement_cppflags) $(TRT_BarrelElement_cxx_cppflags)  $(src)TRT_BarrelElement.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_BarrelElement_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_BarrelElement.cxx

$(bin)$(binobj)TRT_BarrelElement.o : $(TRT_BarrelElement_cxx_dependencies)
	$(cpp_echo) $(src)TRT_BarrelElement.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BarrelElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BarrelElement_cppflags) $(TRT_BarrelElement_cxx_cppflags)  $(src)TRT_BarrelElement.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_BaseElement.d

$(bin)$(binobj)TRT_BaseElement.d :

$(bin)$(binobj)TRT_BaseElement.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_BaseElement.o : $(src)TRT_BaseElement.cxx
	$(cpp_echo) $(src)TRT_BaseElement.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BaseElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BaseElement_cppflags) $(TRT_BaseElement_cxx_cppflags)  $(src)TRT_BaseElement.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_BaseElement_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_BaseElement.cxx

$(bin)$(binobj)TRT_BaseElement.o : $(TRT_BaseElement_cxx_dependencies)
	$(cpp_echo) $(src)TRT_BaseElement.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_BaseElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_BaseElement_cppflags) $(TRT_BaseElement_cxx_cppflags)  $(src)TRT_BaseElement.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_Conditions.d

$(bin)$(binobj)TRT_Conditions.d :

$(bin)$(binobj)TRT_Conditions.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_Conditions.o : $(src)TRT_Conditions.cxx
	$(cpp_echo) $(src)TRT_Conditions.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_Conditions_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_Conditions_cppflags) $(TRT_Conditions_cxx_cppflags)  $(src)TRT_Conditions.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_Conditions_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_Conditions.cxx

$(bin)$(binobj)TRT_Conditions.o : $(TRT_Conditions_cxx_dependencies)
	$(cpp_echo) $(src)TRT_Conditions.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_Conditions_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_Conditions_cppflags) $(TRT_Conditions_cxx_cppflags)  $(src)TRT_Conditions.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_DetectorManager.d

$(bin)$(binobj)TRT_DetectorManager.d :

$(bin)$(binobj)TRT_DetectorManager.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_DetectorManager.o : $(src)TRT_DetectorManager.cxx
	$(cpp_echo) $(src)TRT_DetectorManager.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_DetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_DetectorManager_cppflags) $(TRT_DetectorManager_cxx_cppflags)  $(src)TRT_DetectorManager.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_DetectorManager_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_DetectorManager.cxx

$(bin)$(binobj)TRT_DetectorManager.o : $(TRT_DetectorManager_cxx_dependencies)
	$(cpp_echo) $(src)TRT_DetectorManager.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_DetectorManager_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_DetectorManager_cppflags) $(TRT_DetectorManager_cxx_cppflags)  $(src)TRT_DetectorManager.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_EndcapCode.d

$(bin)$(binobj)TRT_EndcapCode.d :

$(bin)$(binobj)TRT_EndcapCode.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_EndcapCode.o : $(src)TRT_EndcapCode.cxx
	$(cpp_echo) $(src)TRT_EndcapCode.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_EndcapCode_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_EndcapCode_cppflags) $(TRT_EndcapCode_cxx_cppflags)  $(src)TRT_EndcapCode.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_EndcapCode_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_EndcapCode.cxx

$(bin)$(binobj)TRT_EndcapCode.o : $(TRT_EndcapCode_cxx_dependencies)
	$(cpp_echo) $(src)TRT_EndcapCode.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_EndcapCode_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_EndcapCode_cppflags) $(TRT_EndcapCode_cxx_cppflags)  $(src)TRT_EndcapCode.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_EndcapDescriptor.d

$(bin)$(binobj)TRT_EndcapDescriptor.d :

$(bin)$(binobj)TRT_EndcapDescriptor.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_EndcapDescriptor.o : $(src)TRT_EndcapDescriptor.cxx
	$(cpp_echo) $(src)TRT_EndcapDescriptor.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_EndcapDescriptor_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_EndcapDescriptor_cppflags) $(TRT_EndcapDescriptor_cxx_cppflags)  $(src)TRT_EndcapDescriptor.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_EndcapDescriptor_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_EndcapDescriptor.cxx

$(bin)$(binobj)TRT_EndcapDescriptor.o : $(TRT_EndcapDescriptor_cxx_dependencies)
	$(cpp_echo) $(src)TRT_EndcapDescriptor.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_EndcapDescriptor_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_EndcapDescriptor_cppflags) $(TRT_EndcapDescriptor_cxx_cppflags)  $(src)TRT_EndcapDescriptor.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_EndcapElement.d

$(bin)$(binobj)TRT_EndcapElement.d :

$(bin)$(binobj)TRT_EndcapElement.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_EndcapElement.o : $(src)TRT_EndcapElement.cxx
	$(cpp_echo) $(src)TRT_EndcapElement.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_EndcapElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_EndcapElement_cppflags) $(TRT_EndcapElement_cxx_cppflags)  $(src)TRT_EndcapElement.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_EndcapElement_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_EndcapElement.cxx

$(bin)$(binobj)TRT_EndcapElement.o : $(TRT_EndcapElement_cxx_dependencies)
	$(cpp_echo) $(src)TRT_EndcapElement.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_EndcapElement_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_EndcapElement_cppflags) $(TRT_EndcapElement_cxx_cppflags)  $(src)TRT_EndcapElement.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetReadoutGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_Numerology.d

$(bin)$(binobj)TRT_Numerology.d :

$(bin)$(binobj)TRT_Numerology.o : $(cmt_final_setup_InDetReadoutGeometry)

$(bin)$(binobj)TRT_Numerology.o : $(src)TRT_Numerology.cxx
	$(cpp_echo) $(src)TRT_Numerology.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_Numerology_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_Numerology_cppflags) $(TRT_Numerology_cxx_cppflags)  $(src)TRT_Numerology.cxx
endif
endif

else
$(bin)InDetReadoutGeometry_dependencies.make : $(TRT_Numerology_cxx_dependencies)

$(bin)InDetReadoutGeometry_dependencies.make : $(src)TRT_Numerology.cxx

$(bin)$(binobj)TRT_Numerology.o : $(TRT_Numerology_cxx_dependencies)
	$(cpp_echo) $(src)TRT_Numerology.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetReadoutGeometry_pp_cppflags) $(lib_InDetReadoutGeometry_pp_cppflags) $(TRT_Numerology_pp_cppflags) $(use_cppflags) $(InDetReadoutGeometry_cppflags) $(lib_InDetReadoutGeometry_cppflags) $(TRT_Numerology_cppflags) $(TRT_Numerology_cxx_cppflags)  $(src)TRT_Numerology.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: InDetReadoutGeometryclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetReadoutGeometry.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetReadoutGeometryclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library InDetReadoutGeometry
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)InDetReadoutGeometry$(library_suffix).a $(library_prefix)InDetReadoutGeometry$(library_suffix).$(shlibsuffix) InDetReadoutGeometry.stamp InDetReadoutGeometry.shstamp
#-- end of cleanup_library ---------------
