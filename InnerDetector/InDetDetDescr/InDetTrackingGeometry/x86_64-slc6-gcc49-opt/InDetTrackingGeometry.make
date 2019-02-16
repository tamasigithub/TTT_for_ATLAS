#-- start of make_header -----------------

#====================================
#  Library InDetTrackingGeometry
#
#   Generated Tue Jan 29 18:56:59 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometry_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometry_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometry

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometry = $(InDetTrackingGeometry_tag)_InDetTrackingGeometry.make
cmt_local_tagfile_InDetTrackingGeometry = $(bin)$(InDetTrackingGeometry_tag)_InDetTrackingGeometry.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometry_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometry = $(InDetTrackingGeometry_tag).make
cmt_local_tagfile_InDetTrackingGeometry = $(bin)$(InDetTrackingGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometry)
#-include $(cmt_local_tagfile_InDetTrackingGeometry)

ifdef cmt_InDetTrackingGeometry_has_target_tag

cmt_final_setup_InDetTrackingGeometry = $(bin)setup_InDetTrackingGeometry.make
cmt_dependencies_in_InDetTrackingGeometry = $(bin)dependencies_InDetTrackingGeometry.in
#cmt_final_setup_InDetTrackingGeometry = $(bin)InDetTrackingGeometry_InDetTrackingGeometrysetup.make
cmt_local_InDetTrackingGeometry_makefile = $(bin)InDetTrackingGeometry.make

else

cmt_final_setup_InDetTrackingGeometry = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometry = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometry = $(bin)InDetTrackingGeometrysetup.make
cmt_local_InDetTrackingGeometry_makefile = $(bin)InDetTrackingGeometry.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometrysetup.make

#InDetTrackingGeometry :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometry'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometry/
#InDetTrackingGeometry::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

InDetTrackingGeometrylibname   = $(bin)$(library_prefix)InDetTrackingGeometry$(library_suffix)
InDetTrackingGeometrylib       = $(InDetTrackingGeometrylibname).a
InDetTrackingGeometrystamp     = $(bin)InDetTrackingGeometry.stamp
InDetTrackingGeometryshstamp   = $(bin)InDetTrackingGeometry.shstamp

InDetTrackingGeometry :: dirs  InDetTrackingGeometryLIB
	$(echo) "InDetTrackingGeometry ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#InDetTrackingGeometryLIB :: $(InDetTrackingGeometrylib) $(InDetTrackingGeometryshstamp)
InDetTrackingGeometryLIB :: $(InDetTrackingGeometryshstamp)
	$(echo) "InDetTrackingGeometry : library ok"

$(InDetTrackingGeometrylib) :: $(bin)SiLayerBuilder.o $(bin)RobustTrackingGeometryBuilder.o $(bin)BeamPipeBuilder.o $(bin)TRT_LayerBuilder.o $(bin)StagedTrackingGeometryBuilder.o $(bin)InDetTrackingGeometry_load.o $(bin)InDetTrackingGeometry_entries.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(InDetTrackingGeometrylib) $?
	$(lib_silent) $(ranlib) $(InDetTrackingGeometrylib)
	$(lib_silent) cat /dev/null >$(InDetTrackingGeometrystamp)

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

$(InDetTrackingGeometrylibname).$(shlibsuffix) :: $(bin)SiLayerBuilder.o $(bin)RobustTrackingGeometryBuilder.o $(bin)BeamPipeBuilder.o $(bin)TRT_LayerBuilder.o $(bin)StagedTrackingGeometryBuilder.o $(bin)InDetTrackingGeometry_load.o $(bin)InDetTrackingGeometry_entries.o $(use_requirements) $(InDetTrackingGeometrystamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)SiLayerBuilder.o $(bin)RobustTrackingGeometryBuilder.o $(bin)BeamPipeBuilder.o $(bin)TRT_LayerBuilder.o $(bin)StagedTrackingGeometryBuilder.o $(bin)InDetTrackingGeometry_load.o $(bin)InDetTrackingGeometry_entries.o $(InDetTrackingGeometry_shlibflags)
	$(lib_silent) cat /dev/null >$(InDetTrackingGeometrystamp) && \
	  cat /dev/null >$(InDetTrackingGeometryshstamp)

$(InDetTrackingGeometryshstamp) :: $(InDetTrackingGeometrylibname).$(shlibsuffix)
	$(lib_silent) if test -f $(InDetTrackingGeometrylibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(InDetTrackingGeometrystamp) && \
	  cat /dev/null >$(InDetTrackingGeometryshstamp) ; fi

InDetTrackingGeometryclean ::
	$(cleanup_echo) objects InDetTrackingGeometry
	$(cleanup_silent) /bin/rm -f $(bin)SiLayerBuilder.o $(bin)RobustTrackingGeometryBuilder.o $(bin)BeamPipeBuilder.o $(bin)TRT_LayerBuilder.o $(bin)StagedTrackingGeometryBuilder.o $(bin)InDetTrackingGeometry_load.o $(bin)InDetTrackingGeometry_entries.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)SiLayerBuilder.o $(bin)RobustTrackingGeometryBuilder.o $(bin)BeamPipeBuilder.o $(bin)TRT_LayerBuilder.o $(bin)StagedTrackingGeometryBuilder.o $(bin)InDetTrackingGeometry_load.o $(bin)InDetTrackingGeometry_entries.o) $(patsubst %.o,%.dep,$(bin)SiLayerBuilder.o $(bin)RobustTrackingGeometryBuilder.o $(bin)BeamPipeBuilder.o $(bin)TRT_LayerBuilder.o $(bin)StagedTrackingGeometryBuilder.o $(bin)InDetTrackingGeometry_load.o $(bin)InDetTrackingGeometry_entries.o) $(patsubst %.o,%.d.stamp,$(bin)SiLayerBuilder.o $(bin)RobustTrackingGeometryBuilder.o $(bin)BeamPipeBuilder.o $(bin)TRT_LayerBuilder.o $(bin)StagedTrackingGeometryBuilder.o $(bin)InDetTrackingGeometry_load.o $(bin)InDetTrackingGeometry_entries.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf InDetTrackingGeometry_deps InDetTrackingGeometry_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
InDetTrackingGeometryinstallname = $(library_prefix)InDetTrackingGeometry$(library_suffix).$(shlibsuffix)

InDetTrackingGeometry :: InDetTrackingGeometryinstall ;

install :: InDetTrackingGeometryinstall ;

InDetTrackingGeometryinstall :: $(install_dir)/$(InDetTrackingGeometryinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(InDetTrackingGeometryinstallname) :: $(bin)$(InDetTrackingGeometryinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetTrackingGeometryinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##InDetTrackingGeometryclean :: InDetTrackingGeometryuninstall

uninstall :: InDetTrackingGeometryuninstall ;

InDetTrackingGeometryuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetTrackingGeometryinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiLayerBuilder.d

$(bin)$(binobj)SiLayerBuilder.d :

$(bin)$(binobj)SiLayerBuilder.o : $(cmt_final_setup_InDetTrackingGeometry)

$(bin)$(binobj)SiLayerBuilder.o : $(src)SiLayerBuilder.cxx
	$(cpp_echo) $(src)SiLayerBuilder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(SiLayerBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(SiLayerBuilder_cppflags) $(SiLayerBuilder_cxx_cppflags)  $(src)SiLayerBuilder.cxx
endif
endif

else
$(bin)InDetTrackingGeometry_dependencies.make : $(SiLayerBuilder_cxx_dependencies)

$(bin)InDetTrackingGeometry_dependencies.make : $(src)SiLayerBuilder.cxx

$(bin)$(binobj)SiLayerBuilder.o : $(SiLayerBuilder_cxx_dependencies)
	$(cpp_echo) $(src)SiLayerBuilder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(SiLayerBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(SiLayerBuilder_cppflags) $(SiLayerBuilder_cxx_cppflags)  $(src)SiLayerBuilder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)RobustTrackingGeometryBuilder.d

$(bin)$(binobj)RobustTrackingGeometryBuilder.d :

$(bin)$(binobj)RobustTrackingGeometryBuilder.o : $(cmt_final_setup_InDetTrackingGeometry)

$(bin)$(binobj)RobustTrackingGeometryBuilder.o : $(src)RobustTrackingGeometryBuilder.cxx
	$(cpp_echo) $(src)RobustTrackingGeometryBuilder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(RobustTrackingGeometryBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(RobustTrackingGeometryBuilder_cppflags) $(RobustTrackingGeometryBuilder_cxx_cppflags)  $(src)RobustTrackingGeometryBuilder.cxx
endif
endif

else
$(bin)InDetTrackingGeometry_dependencies.make : $(RobustTrackingGeometryBuilder_cxx_dependencies)

$(bin)InDetTrackingGeometry_dependencies.make : $(src)RobustTrackingGeometryBuilder.cxx

$(bin)$(binobj)RobustTrackingGeometryBuilder.o : $(RobustTrackingGeometryBuilder_cxx_dependencies)
	$(cpp_echo) $(src)RobustTrackingGeometryBuilder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(RobustTrackingGeometryBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(RobustTrackingGeometryBuilder_cppflags) $(RobustTrackingGeometryBuilder_cxx_cppflags)  $(src)RobustTrackingGeometryBuilder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)BeamPipeBuilder.d

$(bin)$(binobj)BeamPipeBuilder.d :

$(bin)$(binobj)BeamPipeBuilder.o : $(cmt_final_setup_InDetTrackingGeometry)

$(bin)$(binobj)BeamPipeBuilder.o : $(src)BeamPipeBuilder.cxx
	$(cpp_echo) $(src)BeamPipeBuilder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(BeamPipeBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(BeamPipeBuilder_cppflags) $(BeamPipeBuilder_cxx_cppflags)  $(src)BeamPipeBuilder.cxx
endif
endif

else
$(bin)InDetTrackingGeometry_dependencies.make : $(BeamPipeBuilder_cxx_dependencies)

$(bin)InDetTrackingGeometry_dependencies.make : $(src)BeamPipeBuilder.cxx

$(bin)$(binobj)BeamPipeBuilder.o : $(BeamPipeBuilder_cxx_dependencies)
	$(cpp_echo) $(src)BeamPipeBuilder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(BeamPipeBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(BeamPipeBuilder_cppflags) $(BeamPipeBuilder_cxx_cppflags)  $(src)BeamPipeBuilder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TRT_LayerBuilder.d

$(bin)$(binobj)TRT_LayerBuilder.d :

$(bin)$(binobj)TRT_LayerBuilder.o : $(cmt_final_setup_InDetTrackingGeometry)

$(bin)$(binobj)TRT_LayerBuilder.o : $(src)TRT_LayerBuilder.cxx
	$(cpp_echo) $(src)TRT_LayerBuilder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(TRT_LayerBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(TRT_LayerBuilder_cppflags) $(TRT_LayerBuilder_cxx_cppflags)  $(src)TRT_LayerBuilder.cxx
endif
endif

else
$(bin)InDetTrackingGeometry_dependencies.make : $(TRT_LayerBuilder_cxx_dependencies)

$(bin)InDetTrackingGeometry_dependencies.make : $(src)TRT_LayerBuilder.cxx

$(bin)$(binobj)TRT_LayerBuilder.o : $(TRT_LayerBuilder_cxx_dependencies)
	$(cpp_echo) $(src)TRT_LayerBuilder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(TRT_LayerBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(TRT_LayerBuilder_cppflags) $(TRT_LayerBuilder_cxx_cppflags)  $(src)TRT_LayerBuilder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)StagedTrackingGeometryBuilder.d

$(bin)$(binobj)StagedTrackingGeometryBuilder.d :

$(bin)$(binobj)StagedTrackingGeometryBuilder.o : $(cmt_final_setup_InDetTrackingGeometry)

$(bin)$(binobj)StagedTrackingGeometryBuilder.o : $(src)StagedTrackingGeometryBuilder.cxx
	$(cpp_echo) $(src)StagedTrackingGeometryBuilder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(StagedTrackingGeometryBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(StagedTrackingGeometryBuilder_cppflags) $(StagedTrackingGeometryBuilder_cxx_cppflags)  $(src)StagedTrackingGeometryBuilder.cxx
endif
endif

else
$(bin)InDetTrackingGeometry_dependencies.make : $(StagedTrackingGeometryBuilder_cxx_dependencies)

$(bin)InDetTrackingGeometry_dependencies.make : $(src)StagedTrackingGeometryBuilder.cxx

$(bin)$(binobj)StagedTrackingGeometryBuilder.o : $(StagedTrackingGeometryBuilder_cxx_dependencies)
	$(cpp_echo) $(src)StagedTrackingGeometryBuilder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(StagedTrackingGeometryBuilder_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(StagedTrackingGeometryBuilder_cppflags) $(StagedTrackingGeometryBuilder_cxx_cppflags)  $(src)StagedTrackingGeometryBuilder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)InDetTrackingGeometry_load.d

$(bin)$(binobj)InDetTrackingGeometry_load.d :

$(bin)$(binobj)InDetTrackingGeometry_load.o : $(cmt_final_setup_InDetTrackingGeometry)

$(bin)$(binobj)InDetTrackingGeometry_load.o : $(src)components/InDetTrackingGeometry_load.cxx
	$(cpp_echo) $(src)components/InDetTrackingGeometry_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(InDetTrackingGeometry_load_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(InDetTrackingGeometry_load_cppflags) $(InDetTrackingGeometry_load_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometry_load.cxx
endif
endif

else
$(bin)InDetTrackingGeometry_dependencies.make : $(InDetTrackingGeometry_load_cxx_dependencies)

$(bin)InDetTrackingGeometry_dependencies.make : $(src)components/InDetTrackingGeometry_load.cxx

$(bin)$(binobj)InDetTrackingGeometry_load.o : $(InDetTrackingGeometry_load_cxx_dependencies)
	$(cpp_echo) $(src)components/InDetTrackingGeometry_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(InDetTrackingGeometry_load_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(InDetTrackingGeometry_load_cppflags) $(InDetTrackingGeometry_load_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometry_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)InDetTrackingGeometry_entries.d

$(bin)$(binobj)InDetTrackingGeometry_entries.d :

$(bin)$(binobj)InDetTrackingGeometry_entries.o : $(cmt_final_setup_InDetTrackingGeometry)

$(bin)$(binobj)InDetTrackingGeometry_entries.o : $(src)components/InDetTrackingGeometry_entries.cxx
	$(cpp_echo) $(src)components/InDetTrackingGeometry_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(InDetTrackingGeometry_entries_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(InDetTrackingGeometry_entries_cppflags) $(InDetTrackingGeometry_entries_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometry_entries.cxx
endif
endif

else
$(bin)InDetTrackingGeometry_dependencies.make : $(InDetTrackingGeometry_entries_cxx_dependencies)

$(bin)InDetTrackingGeometry_dependencies.make : $(src)components/InDetTrackingGeometry_entries.cxx

$(bin)$(binobj)InDetTrackingGeometry_entries.o : $(InDetTrackingGeometry_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/InDetTrackingGeometry_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometry_pp_cppflags) $(lib_InDetTrackingGeometry_pp_cppflags) $(InDetTrackingGeometry_entries_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometry_cppflags) $(lib_InDetTrackingGeometry_cppflags) $(InDetTrackingGeometry_entries_cppflags) $(InDetTrackingGeometry_entries_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometry_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometry.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library InDetTrackingGeometry
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)InDetTrackingGeometry$(library_suffix).a $(library_prefix)InDetTrackingGeometry$(library_suffix).$(shlibsuffix) InDetTrackingGeometry.stamp InDetTrackingGeometry.shstamp
#-- end of cleanup_library ---------------
