#-- start of make_header -----------------

#====================================
#  Library SiClusterizationToolLib
#
#   Generated Tue Jan 29 19:04:18 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiClusterizationToolLib_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiClusterizationToolLib_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiClusterizationToolLib

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolLib = $(SiClusterizationTool_tag)_SiClusterizationToolLib.make
cmt_local_tagfile_SiClusterizationToolLib = $(bin)$(SiClusterizationTool_tag)_SiClusterizationToolLib.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiClusterizationTool_tag = $(tag)

#cmt_local_tagfile_SiClusterizationToolLib = $(SiClusterizationTool_tag).make
cmt_local_tagfile_SiClusterizationToolLib = $(bin)$(SiClusterizationTool_tag).make

endif

include $(cmt_local_tagfile_SiClusterizationToolLib)
#-include $(cmt_local_tagfile_SiClusterizationToolLib)

ifdef cmt_SiClusterizationToolLib_has_target_tag

cmt_final_setup_SiClusterizationToolLib = $(bin)setup_SiClusterizationToolLib.make
cmt_dependencies_in_SiClusterizationToolLib = $(bin)dependencies_SiClusterizationToolLib.in
#cmt_final_setup_SiClusterizationToolLib = $(bin)SiClusterizationTool_SiClusterizationToolLibsetup.make
cmt_local_SiClusterizationToolLib_makefile = $(bin)SiClusterizationToolLib.make

else

cmt_final_setup_SiClusterizationToolLib = $(bin)setup.make
cmt_dependencies_in_SiClusterizationToolLib = $(bin)dependencies.in
#cmt_final_setup_SiClusterizationToolLib = $(bin)SiClusterizationToolsetup.make
cmt_local_SiClusterizationToolLib_makefile = $(bin)SiClusterizationToolLib.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiClusterizationToolsetup.make

#SiClusterizationToolLib :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiClusterizationToolLib'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiClusterizationToolLib/
#SiClusterizationToolLib::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

SiClusterizationToolLiblibname   = $(bin)$(library_prefix)SiClusterizationToolLib$(library_suffix)
SiClusterizationToolLiblib       = $(SiClusterizationToolLiblibname).a
SiClusterizationToolLibstamp     = $(bin)SiClusterizationToolLib.stamp
SiClusterizationToolLibshstamp   = $(bin)SiClusterizationToolLib.shstamp

SiClusterizationToolLib :: dirs  SiClusterizationToolLibLIB
	$(echo) "SiClusterizationToolLib ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#SiClusterizationToolLibLIB :: $(SiClusterizationToolLiblib) $(SiClusterizationToolLibshstamp)
SiClusterizationToolLibLIB :: $(SiClusterizationToolLibshstamp)
	$(echo) "SiClusterizationToolLib : library ok"

$(SiClusterizationToolLiblib) :: $(bin)ClusterMakerTool.o $(bin)MergedPixelsTool.o $(bin)NnClusterizationFactory.o $(bin)NnNormalization.o $(bin)NnPixelClusterSplitProbTool.o $(bin)NnPixelClusterSplitter.o $(bin)PixelClusteringToolBase.o $(bin)PixelGangedAmbiguitiesFinder.o $(bin)SCT_ClusteringTool.o $(bin)SCT_ReClustering.o $(bin)TotPixelClusterSplitter.o $(bin)TruthClusterizationFactory.o $(bin)TruthPixelClusterSplitProbTool.o $(bin)TruthPixelClusterSplitter.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(SiClusterizationToolLiblib) $?
	$(lib_silent) $(ranlib) $(SiClusterizationToolLiblib)
	$(lib_silent) cat /dev/null >$(SiClusterizationToolLibstamp)

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

$(SiClusterizationToolLiblibname).$(shlibsuffix) :: $(bin)ClusterMakerTool.o $(bin)MergedPixelsTool.o $(bin)NnClusterizationFactory.o $(bin)NnNormalization.o $(bin)NnPixelClusterSplitProbTool.o $(bin)NnPixelClusterSplitter.o $(bin)PixelClusteringToolBase.o $(bin)PixelGangedAmbiguitiesFinder.o $(bin)SCT_ClusteringTool.o $(bin)SCT_ReClustering.o $(bin)TotPixelClusterSplitter.o $(bin)TruthClusterizationFactory.o $(bin)TruthPixelClusterSplitProbTool.o $(bin)TruthPixelClusterSplitter.o $(use_requirements) $(SiClusterizationToolLibstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)ClusterMakerTool.o $(bin)MergedPixelsTool.o $(bin)NnClusterizationFactory.o $(bin)NnNormalization.o $(bin)NnPixelClusterSplitProbTool.o $(bin)NnPixelClusterSplitter.o $(bin)PixelClusteringToolBase.o $(bin)PixelGangedAmbiguitiesFinder.o $(bin)SCT_ClusteringTool.o $(bin)SCT_ReClustering.o $(bin)TotPixelClusterSplitter.o $(bin)TruthClusterizationFactory.o $(bin)TruthPixelClusterSplitProbTool.o $(bin)TruthPixelClusterSplitter.o $(SiClusterizationToolLib_shlibflags)
	$(lib_silent) cat /dev/null >$(SiClusterizationToolLibstamp) && \
	  cat /dev/null >$(SiClusterizationToolLibshstamp)

$(SiClusterizationToolLibshstamp) :: $(SiClusterizationToolLiblibname).$(shlibsuffix)
	$(lib_silent) if test -f $(SiClusterizationToolLiblibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(SiClusterizationToolLibstamp) && \
	  cat /dev/null >$(SiClusterizationToolLibshstamp) ; fi

SiClusterizationToolLibclean ::
	$(cleanup_echo) objects SiClusterizationToolLib
	$(cleanup_silent) /bin/rm -f $(bin)ClusterMakerTool.o $(bin)MergedPixelsTool.o $(bin)NnClusterizationFactory.o $(bin)NnNormalization.o $(bin)NnPixelClusterSplitProbTool.o $(bin)NnPixelClusterSplitter.o $(bin)PixelClusteringToolBase.o $(bin)PixelGangedAmbiguitiesFinder.o $(bin)SCT_ClusteringTool.o $(bin)SCT_ReClustering.o $(bin)TotPixelClusterSplitter.o $(bin)TruthClusterizationFactory.o $(bin)TruthPixelClusterSplitProbTool.o $(bin)TruthPixelClusterSplitter.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)ClusterMakerTool.o $(bin)MergedPixelsTool.o $(bin)NnClusterizationFactory.o $(bin)NnNormalization.o $(bin)NnPixelClusterSplitProbTool.o $(bin)NnPixelClusterSplitter.o $(bin)PixelClusteringToolBase.o $(bin)PixelGangedAmbiguitiesFinder.o $(bin)SCT_ClusteringTool.o $(bin)SCT_ReClustering.o $(bin)TotPixelClusterSplitter.o $(bin)TruthClusterizationFactory.o $(bin)TruthPixelClusterSplitProbTool.o $(bin)TruthPixelClusterSplitter.o) $(patsubst %.o,%.dep,$(bin)ClusterMakerTool.o $(bin)MergedPixelsTool.o $(bin)NnClusterizationFactory.o $(bin)NnNormalization.o $(bin)NnPixelClusterSplitProbTool.o $(bin)NnPixelClusterSplitter.o $(bin)PixelClusteringToolBase.o $(bin)PixelGangedAmbiguitiesFinder.o $(bin)SCT_ClusteringTool.o $(bin)SCT_ReClustering.o $(bin)TotPixelClusterSplitter.o $(bin)TruthClusterizationFactory.o $(bin)TruthPixelClusterSplitProbTool.o $(bin)TruthPixelClusterSplitter.o) $(patsubst %.o,%.d.stamp,$(bin)ClusterMakerTool.o $(bin)MergedPixelsTool.o $(bin)NnClusterizationFactory.o $(bin)NnNormalization.o $(bin)NnPixelClusterSplitProbTool.o $(bin)NnPixelClusterSplitter.o $(bin)PixelClusteringToolBase.o $(bin)PixelGangedAmbiguitiesFinder.o $(bin)SCT_ClusteringTool.o $(bin)SCT_ReClustering.o $(bin)TotPixelClusterSplitter.o $(bin)TruthClusterizationFactory.o $(bin)TruthPixelClusterSplitProbTool.o $(bin)TruthPixelClusterSplitter.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf SiClusterizationToolLib_deps SiClusterizationToolLib_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
SiClusterizationToolLibinstallname = $(library_prefix)SiClusterizationToolLib$(library_suffix).$(shlibsuffix)

SiClusterizationToolLib :: SiClusterizationToolLibinstall ;

install :: SiClusterizationToolLibinstall ;

SiClusterizationToolLibinstall :: $(install_dir)/$(SiClusterizationToolLibinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(SiClusterizationToolLibinstallname) :: $(bin)$(SiClusterizationToolLibinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiClusterizationToolLibinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##SiClusterizationToolLibclean :: SiClusterizationToolLibuninstall

uninstall :: SiClusterizationToolLibuninstall ;

SiClusterizationToolLibuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiClusterizationToolLibinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ClusterMakerTool.d

$(bin)$(binobj)ClusterMakerTool.d :

$(bin)$(binobj)ClusterMakerTool.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)ClusterMakerTool.o : $(src)ClusterMakerTool.cxx
	$(cpp_echo) $(src)ClusterMakerTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(ClusterMakerTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(ClusterMakerTool_cppflags) $(ClusterMakerTool_cxx_cppflags)  $(src)ClusterMakerTool.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(ClusterMakerTool_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)ClusterMakerTool.cxx

$(bin)$(binobj)ClusterMakerTool.o : $(ClusterMakerTool_cxx_dependencies)
	$(cpp_echo) $(src)ClusterMakerTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(ClusterMakerTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(ClusterMakerTool_cppflags) $(ClusterMakerTool_cxx_cppflags)  $(src)ClusterMakerTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)MergedPixelsTool.d

$(bin)$(binobj)MergedPixelsTool.d :

$(bin)$(binobj)MergedPixelsTool.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)MergedPixelsTool.o : $(src)MergedPixelsTool.cxx
	$(cpp_echo) $(src)MergedPixelsTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(MergedPixelsTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(MergedPixelsTool_cppflags) $(MergedPixelsTool_cxx_cppflags)  $(src)MergedPixelsTool.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(MergedPixelsTool_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)MergedPixelsTool.cxx

$(bin)$(binobj)MergedPixelsTool.o : $(MergedPixelsTool_cxx_dependencies)
	$(cpp_echo) $(src)MergedPixelsTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(MergedPixelsTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(MergedPixelsTool_cppflags) $(MergedPixelsTool_cxx_cppflags)  $(src)MergedPixelsTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)NnClusterizationFactory.d

$(bin)$(binobj)NnClusterizationFactory.d :

$(bin)$(binobj)NnClusterizationFactory.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)NnClusterizationFactory.o : $(src)NnClusterizationFactory.cxx
	$(cpp_echo) $(src)NnClusterizationFactory.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnClusterizationFactory_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnClusterizationFactory_cppflags) $(NnClusterizationFactory_cxx_cppflags)  $(src)NnClusterizationFactory.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(NnClusterizationFactory_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)NnClusterizationFactory.cxx

$(bin)$(binobj)NnClusterizationFactory.o : $(NnClusterizationFactory_cxx_dependencies)
	$(cpp_echo) $(src)NnClusterizationFactory.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnClusterizationFactory_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnClusterizationFactory_cppflags) $(NnClusterizationFactory_cxx_cppflags)  $(src)NnClusterizationFactory.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)NnNormalization.d

$(bin)$(binobj)NnNormalization.d :

$(bin)$(binobj)NnNormalization.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)NnNormalization.o : $(src)NnNormalization.cxx
	$(cpp_echo) $(src)NnNormalization.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnNormalization_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnNormalization_cppflags) $(NnNormalization_cxx_cppflags)  $(src)NnNormalization.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(NnNormalization_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)NnNormalization.cxx

$(bin)$(binobj)NnNormalization.o : $(NnNormalization_cxx_dependencies)
	$(cpp_echo) $(src)NnNormalization.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnNormalization_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnNormalization_cppflags) $(NnNormalization_cxx_cppflags)  $(src)NnNormalization.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)NnPixelClusterSplitProbTool.d

$(bin)$(binobj)NnPixelClusterSplitProbTool.d :

$(bin)$(binobj)NnPixelClusterSplitProbTool.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)NnPixelClusterSplitProbTool.o : $(src)NnPixelClusterSplitProbTool.cxx
	$(cpp_echo) $(src)NnPixelClusterSplitProbTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnPixelClusterSplitProbTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnPixelClusterSplitProbTool_cppflags) $(NnPixelClusterSplitProbTool_cxx_cppflags)  $(src)NnPixelClusterSplitProbTool.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(NnPixelClusterSplitProbTool_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)NnPixelClusterSplitProbTool.cxx

$(bin)$(binobj)NnPixelClusterSplitProbTool.o : $(NnPixelClusterSplitProbTool_cxx_dependencies)
	$(cpp_echo) $(src)NnPixelClusterSplitProbTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnPixelClusterSplitProbTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnPixelClusterSplitProbTool_cppflags) $(NnPixelClusterSplitProbTool_cxx_cppflags)  $(src)NnPixelClusterSplitProbTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)NnPixelClusterSplitter.d

$(bin)$(binobj)NnPixelClusterSplitter.d :

$(bin)$(binobj)NnPixelClusterSplitter.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)NnPixelClusterSplitter.o : $(src)NnPixelClusterSplitter.cxx
	$(cpp_echo) $(src)NnPixelClusterSplitter.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnPixelClusterSplitter_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnPixelClusterSplitter_cppflags) $(NnPixelClusterSplitter_cxx_cppflags)  $(src)NnPixelClusterSplitter.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(NnPixelClusterSplitter_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)NnPixelClusterSplitter.cxx

$(bin)$(binobj)NnPixelClusterSplitter.o : $(NnPixelClusterSplitter_cxx_dependencies)
	$(cpp_echo) $(src)NnPixelClusterSplitter.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(NnPixelClusterSplitter_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(NnPixelClusterSplitter_cppflags) $(NnPixelClusterSplitter_cxx_cppflags)  $(src)NnPixelClusterSplitter.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelClusteringToolBase.d

$(bin)$(binobj)PixelClusteringToolBase.d :

$(bin)$(binobj)PixelClusteringToolBase.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)PixelClusteringToolBase.o : $(src)PixelClusteringToolBase.cxx
	$(cpp_echo) $(src)PixelClusteringToolBase.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(PixelClusteringToolBase_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(PixelClusteringToolBase_cppflags) $(PixelClusteringToolBase_cxx_cppflags)  $(src)PixelClusteringToolBase.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(PixelClusteringToolBase_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)PixelClusteringToolBase.cxx

$(bin)$(binobj)PixelClusteringToolBase.o : $(PixelClusteringToolBase_cxx_dependencies)
	$(cpp_echo) $(src)PixelClusteringToolBase.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(PixelClusteringToolBase_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(PixelClusteringToolBase_cppflags) $(PixelClusteringToolBase_cxx_cppflags)  $(src)PixelClusteringToolBase.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)PixelGangedAmbiguitiesFinder.d

$(bin)$(binobj)PixelGangedAmbiguitiesFinder.d :

$(bin)$(binobj)PixelGangedAmbiguitiesFinder.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)PixelGangedAmbiguitiesFinder.o : $(src)PixelGangedAmbiguitiesFinder.cxx
	$(cpp_echo) $(src)PixelGangedAmbiguitiesFinder.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(PixelGangedAmbiguitiesFinder_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(PixelGangedAmbiguitiesFinder_cppflags) $(PixelGangedAmbiguitiesFinder_cxx_cppflags)  $(src)PixelGangedAmbiguitiesFinder.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(PixelGangedAmbiguitiesFinder_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)PixelGangedAmbiguitiesFinder.cxx

$(bin)$(binobj)PixelGangedAmbiguitiesFinder.o : $(PixelGangedAmbiguitiesFinder_cxx_dependencies)
	$(cpp_echo) $(src)PixelGangedAmbiguitiesFinder.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(PixelGangedAmbiguitiesFinder_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(PixelGangedAmbiguitiesFinder_cppflags) $(PixelGangedAmbiguitiesFinder_cxx_cppflags)  $(src)PixelGangedAmbiguitiesFinder.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ClusteringTool.d

$(bin)$(binobj)SCT_ClusteringTool.d :

$(bin)$(binobj)SCT_ClusteringTool.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)SCT_ClusteringTool.o : $(src)SCT_ClusteringTool.cxx
	$(cpp_echo) $(src)SCT_ClusteringTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(SCT_ClusteringTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(SCT_ClusteringTool_cppflags) $(SCT_ClusteringTool_cxx_cppflags)  $(src)SCT_ClusteringTool.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(SCT_ClusteringTool_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)SCT_ClusteringTool.cxx

$(bin)$(binobj)SCT_ClusteringTool.o : $(SCT_ClusteringTool_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ClusteringTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(SCT_ClusteringTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(SCT_ClusteringTool_cppflags) $(SCT_ClusteringTool_cxx_cppflags)  $(src)SCT_ClusteringTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SCT_ReClustering.d

$(bin)$(binobj)SCT_ReClustering.d :

$(bin)$(binobj)SCT_ReClustering.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)SCT_ReClustering.o : $(src)SCT_ReClustering.cxx
	$(cpp_echo) $(src)SCT_ReClustering.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(SCT_ReClustering_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(SCT_ReClustering_cppflags) $(SCT_ReClustering_cxx_cppflags)  $(src)SCT_ReClustering.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(SCT_ReClustering_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)SCT_ReClustering.cxx

$(bin)$(binobj)SCT_ReClustering.o : $(SCT_ReClustering_cxx_dependencies)
	$(cpp_echo) $(src)SCT_ReClustering.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(SCT_ReClustering_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(SCT_ReClustering_cppflags) $(SCT_ReClustering_cxx_cppflags)  $(src)SCT_ReClustering.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TotPixelClusterSplitter.d

$(bin)$(binobj)TotPixelClusterSplitter.d :

$(bin)$(binobj)TotPixelClusterSplitter.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)TotPixelClusterSplitter.o : $(src)TotPixelClusterSplitter.cxx
	$(cpp_echo) $(src)TotPixelClusterSplitter.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TotPixelClusterSplitter_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TotPixelClusterSplitter_cppflags) $(TotPixelClusterSplitter_cxx_cppflags)  $(src)TotPixelClusterSplitter.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(TotPixelClusterSplitter_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)TotPixelClusterSplitter.cxx

$(bin)$(binobj)TotPixelClusterSplitter.o : $(TotPixelClusterSplitter_cxx_dependencies)
	$(cpp_echo) $(src)TotPixelClusterSplitter.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TotPixelClusterSplitter_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TotPixelClusterSplitter_cppflags) $(TotPixelClusterSplitter_cxx_cppflags)  $(src)TotPixelClusterSplitter.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TruthClusterizationFactory.d

$(bin)$(binobj)TruthClusterizationFactory.d :

$(bin)$(binobj)TruthClusterizationFactory.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)TruthClusterizationFactory.o : $(src)TruthClusterizationFactory.cxx
	$(cpp_echo) $(src)TruthClusterizationFactory.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TruthClusterizationFactory_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TruthClusterizationFactory_cppflags) $(TruthClusterizationFactory_cxx_cppflags)  $(src)TruthClusterizationFactory.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(TruthClusterizationFactory_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)TruthClusterizationFactory.cxx

$(bin)$(binobj)TruthClusterizationFactory.o : $(TruthClusterizationFactory_cxx_dependencies)
	$(cpp_echo) $(src)TruthClusterizationFactory.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TruthClusterizationFactory_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TruthClusterizationFactory_cppflags) $(TruthClusterizationFactory_cxx_cppflags)  $(src)TruthClusterizationFactory.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TruthPixelClusterSplitProbTool.d

$(bin)$(binobj)TruthPixelClusterSplitProbTool.d :

$(bin)$(binobj)TruthPixelClusterSplitProbTool.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)TruthPixelClusterSplitProbTool.o : $(src)TruthPixelClusterSplitProbTool.cxx
	$(cpp_echo) $(src)TruthPixelClusterSplitProbTool.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TruthPixelClusterSplitProbTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TruthPixelClusterSplitProbTool_cppflags) $(TruthPixelClusterSplitProbTool_cxx_cppflags)  $(src)TruthPixelClusterSplitProbTool.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(TruthPixelClusterSplitProbTool_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)TruthPixelClusterSplitProbTool.cxx

$(bin)$(binobj)TruthPixelClusterSplitProbTool.o : $(TruthPixelClusterSplitProbTool_cxx_dependencies)
	$(cpp_echo) $(src)TruthPixelClusterSplitProbTool.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TruthPixelClusterSplitProbTool_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TruthPixelClusterSplitProbTool_cppflags) $(TruthPixelClusterSplitProbTool_cxx_cppflags)  $(src)TruthPixelClusterSplitProbTool.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiClusterizationToolLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TruthPixelClusterSplitter.d

$(bin)$(binobj)TruthPixelClusterSplitter.d :

$(bin)$(binobj)TruthPixelClusterSplitter.o : $(cmt_final_setup_SiClusterizationToolLib)

$(bin)$(binobj)TruthPixelClusterSplitter.o : $(src)TruthPixelClusterSplitter.cxx
	$(cpp_echo) $(src)TruthPixelClusterSplitter.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TruthPixelClusterSplitter_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TruthPixelClusterSplitter_cppflags) $(TruthPixelClusterSplitter_cxx_cppflags)  $(src)TruthPixelClusterSplitter.cxx
endif
endif

else
$(bin)SiClusterizationToolLib_dependencies.make : $(TruthPixelClusterSplitter_cxx_dependencies)

$(bin)SiClusterizationToolLib_dependencies.make : $(src)TruthPixelClusterSplitter.cxx

$(bin)$(binobj)TruthPixelClusterSplitter.o : $(TruthPixelClusterSplitter_cxx_dependencies)
	$(cpp_echo) $(src)TruthPixelClusterSplitter.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiClusterizationToolLib_pp_cppflags) $(lib_SiClusterizationToolLib_pp_cppflags) $(TruthPixelClusterSplitter_pp_cppflags) $(use_cppflags) $(SiClusterizationToolLib_cppflags) $(lib_SiClusterizationToolLib_cppflags) $(TruthPixelClusterSplitter_cppflags) $(TruthPixelClusterSplitter_cxx_cppflags)  $(src)TruthPixelClusterSplitter.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: SiClusterizationToolLibclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiClusterizationToolLib.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiClusterizationToolLibclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library SiClusterizationToolLib
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)SiClusterizationToolLib$(library_suffix).a $(library_prefix)SiClusterizationToolLib$(library_suffix).$(shlibsuffix) SiClusterizationToolLib.stamp SiClusterizationToolLib.shstamp
#-- end of cleanup_library ---------------
