#-- start of make_header -----------------

#====================================
#  Library InDetTrackingGeometryXML
#
#   Generated Tue Jan 29 18:50:21 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryXML_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryXML_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryXML

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXML = $(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXML.make
cmt_local_tagfile_InDetTrackingGeometryXML = $(bin)$(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXML.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXML = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_InDetTrackingGeometryXML = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryXML)
#-include $(cmt_local_tagfile_InDetTrackingGeometryXML)

ifdef cmt_InDetTrackingGeometryXML_has_target_tag

cmt_final_setup_InDetTrackingGeometryXML = $(bin)setup_InDetTrackingGeometryXML.make
cmt_dependencies_in_InDetTrackingGeometryXML = $(bin)dependencies_InDetTrackingGeometryXML.in
#cmt_final_setup_InDetTrackingGeometryXML = $(bin)InDetTrackingGeometryXML_InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXML_makefile = $(bin)InDetTrackingGeometryXML.make

else

cmt_final_setup_InDetTrackingGeometryXML = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryXML = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryXML = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXML_makefile = $(bin)InDetTrackingGeometryXML.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#InDetTrackingGeometryXML :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryXML'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryXML/
#InDetTrackingGeometryXML::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

InDetTrackingGeometryXMLlibname   = $(bin)$(library_prefix)InDetTrackingGeometryXML$(library_suffix)
InDetTrackingGeometryXMLlib       = $(InDetTrackingGeometryXMLlibname).a
InDetTrackingGeometryXMLstamp     = $(bin)InDetTrackingGeometryXML.stamp
InDetTrackingGeometryXMLshstamp   = $(bin)InDetTrackingGeometryXML.shstamp

InDetTrackingGeometryXML :: dirs  InDetTrackingGeometryXMLLIB
	$(echo) "InDetTrackingGeometryXML ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#InDetTrackingGeometryXMLLIB :: $(InDetTrackingGeometryXMLlib) $(InDetTrackingGeometryXMLshstamp)
InDetTrackingGeometryXMLLIB :: $(InDetTrackingGeometryXMLshstamp)
	$(echo) "InDetTrackingGeometryXML : library ok"

$(InDetTrackingGeometryXMLlib) :: $(bin)BarrelBuilderXML.o $(bin)EndcapBuilderXML.o $(bin)GMXReaderSvc.o $(bin)LayerProviderXML.o $(bin)SiModuleProvider.o $(bin)StaveBuilderXML.o $(bin)XMLReaderSvc.o $(bin)XMLUtils.o $(bin)InDetTrackingGeometryXML_entries.o $(bin)InDetTrackingGeometryXML_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(InDetTrackingGeometryXMLlib) $?
	$(lib_silent) $(ranlib) $(InDetTrackingGeometryXMLlib)
	$(lib_silent) cat /dev/null >$(InDetTrackingGeometryXMLstamp)

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

$(InDetTrackingGeometryXMLlibname).$(shlibsuffix) :: $(bin)BarrelBuilderXML.o $(bin)EndcapBuilderXML.o $(bin)GMXReaderSvc.o $(bin)LayerProviderXML.o $(bin)SiModuleProvider.o $(bin)StaveBuilderXML.o $(bin)XMLReaderSvc.o $(bin)XMLUtils.o $(bin)InDetTrackingGeometryXML_entries.o $(bin)InDetTrackingGeometryXML_load.o $(use_requirements) $(InDetTrackingGeometryXMLstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)BarrelBuilderXML.o $(bin)EndcapBuilderXML.o $(bin)GMXReaderSvc.o $(bin)LayerProviderXML.o $(bin)SiModuleProvider.o $(bin)StaveBuilderXML.o $(bin)XMLReaderSvc.o $(bin)XMLUtils.o $(bin)InDetTrackingGeometryXML_entries.o $(bin)InDetTrackingGeometryXML_load.o $(InDetTrackingGeometryXML_shlibflags)
	$(lib_silent) cat /dev/null >$(InDetTrackingGeometryXMLstamp) && \
	  cat /dev/null >$(InDetTrackingGeometryXMLshstamp)

$(InDetTrackingGeometryXMLshstamp) :: $(InDetTrackingGeometryXMLlibname).$(shlibsuffix)
	$(lib_silent) if test -f $(InDetTrackingGeometryXMLlibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(InDetTrackingGeometryXMLstamp) && \
	  cat /dev/null >$(InDetTrackingGeometryXMLshstamp) ; fi

InDetTrackingGeometryXMLclean ::
	$(cleanup_echo) objects InDetTrackingGeometryXML
	$(cleanup_silent) /bin/rm -f $(bin)BarrelBuilderXML.o $(bin)EndcapBuilderXML.o $(bin)GMXReaderSvc.o $(bin)LayerProviderXML.o $(bin)SiModuleProvider.o $(bin)StaveBuilderXML.o $(bin)XMLReaderSvc.o $(bin)XMLUtils.o $(bin)InDetTrackingGeometryXML_entries.o $(bin)InDetTrackingGeometryXML_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)BarrelBuilderXML.o $(bin)EndcapBuilderXML.o $(bin)GMXReaderSvc.o $(bin)LayerProviderXML.o $(bin)SiModuleProvider.o $(bin)StaveBuilderXML.o $(bin)XMLReaderSvc.o $(bin)XMLUtils.o $(bin)InDetTrackingGeometryXML_entries.o $(bin)InDetTrackingGeometryXML_load.o) $(patsubst %.o,%.dep,$(bin)BarrelBuilderXML.o $(bin)EndcapBuilderXML.o $(bin)GMXReaderSvc.o $(bin)LayerProviderXML.o $(bin)SiModuleProvider.o $(bin)StaveBuilderXML.o $(bin)XMLReaderSvc.o $(bin)XMLUtils.o $(bin)InDetTrackingGeometryXML_entries.o $(bin)InDetTrackingGeometryXML_load.o) $(patsubst %.o,%.d.stamp,$(bin)BarrelBuilderXML.o $(bin)EndcapBuilderXML.o $(bin)GMXReaderSvc.o $(bin)LayerProviderXML.o $(bin)SiModuleProvider.o $(bin)StaveBuilderXML.o $(bin)XMLReaderSvc.o $(bin)XMLUtils.o $(bin)InDetTrackingGeometryXML_entries.o $(bin)InDetTrackingGeometryXML_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf InDetTrackingGeometryXML_deps InDetTrackingGeometryXML_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
InDetTrackingGeometryXMLinstallname = $(library_prefix)InDetTrackingGeometryXML$(library_suffix).$(shlibsuffix)

InDetTrackingGeometryXML :: InDetTrackingGeometryXMLinstall ;

install :: InDetTrackingGeometryXMLinstall ;

InDetTrackingGeometryXMLinstall :: $(install_dir)/$(InDetTrackingGeometryXMLinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(InDetTrackingGeometryXMLinstallname) :: $(bin)$(InDetTrackingGeometryXMLinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetTrackingGeometryXMLinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##InDetTrackingGeometryXMLclean :: InDetTrackingGeometryXMLuninstall

uninstall :: InDetTrackingGeometryXMLuninstall ;

InDetTrackingGeometryXMLuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetTrackingGeometryXMLinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)BarrelBuilderXML.d

$(bin)$(binobj)BarrelBuilderXML.d :

$(bin)$(binobj)BarrelBuilderXML.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)BarrelBuilderXML.o : $(src)BarrelBuilderXML.cxx
	$(cpp_echo) $(src)BarrelBuilderXML.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(BarrelBuilderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(BarrelBuilderXML_cppflags) $(BarrelBuilderXML_cxx_cppflags)  $(src)BarrelBuilderXML.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(BarrelBuilderXML_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)BarrelBuilderXML.cxx

$(bin)$(binobj)BarrelBuilderXML.o : $(BarrelBuilderXML_cxx_dependencies)
	$(cpp_echo) $(src)BarrelBuilderXML.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(BarrelBuilderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(BarrelBuilderXML_cppflags) $(BarrelBuilderXML_cxx_cppflags)  $(src)BarrelBuilderXML.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)EndcapBuilderXML.d

$(bin)$(binobj)EndcapBuilderXML.d :

$(bin)$(binobj)EndcapBuilderXML.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)EndcapBuilderXML.o : $(src)EndcapBuilderXML.cxx
	$(cpp_echo) $(src)EndcapBuilderXML.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(EndcapBuilderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(EndcapBuilderXML_cppflags) $(EndcapBuilderXML_cxx_cppflags)  $(src)EndcapBuilderXML.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(EndcapBuilderXML_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)EndcapBuilderXML.cxx

$(bin)$(binobj)EndcapBuilderXML.o : $(EndcapBuilderXML_cxx_dependencies)
	$(cpp_echo) $(src)EndcapBuilderXML.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(EndcapBuilderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(EndcapBuilderXML_cppflags) $(EndcapBuilderXML_cxx_cppflags)  $(src)EndcapBuilderXML.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GMXReaderSvc.d

$(bin)$(binobj)GMXReaderSvc.d :

$(bin)$(binobj)GMXReaderSvc.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)GMXReaderSvc.o : $(src)GMXReaderSvc.cxx
	$(cpp_echo) $(src)GMXReaderSvc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(GMXReaderSvc_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(GMXReaderSvc_cppflags) $(GMXReaderSvc_cxx_cppflags)  $(src)GMXReaderSvc.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(GMXReaderSvc_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)GMXReaderSvc.cxx

$(bin)$(binobj)GMXReaderSvc.o : $(GMXReaderSvc_cxx_dependencies)
	$(cpp_echo) $(src)GMXReaderSvc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(GMXReaderSvc_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(GMXReaderSvc_cppflags) $(GMXReaderSvc_cxx_cppflags)  $(src)GMXReaderSvc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)LayerProviderXML.d

$(bin)$(binobj)LayerProviderXML.d :

$(bin)$(binobj)LayerProviderXML.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)LayerProviderXML.o : $(src)LayerProviderXML.cxx
	$(cpp_echo) $(src)LayerProviderXML.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(LayerProviderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(LayerProviderXML_cppflags) $(LayerProviderXML_cxx_cppflags)  $(src)LayerProviderXML.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(LayerProviderXML_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)LayerProviderXML.cxx

$(bin)$(binobj)LayerProviderXML.o : $(LayerProviderXML_cxx_dependencies)
	$(cpp_echo) $(src)LayerProviderXML.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(LayerProviderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(LayerProviderXML_cppflags) $(LayerProviderXML_cxx_cppflags)  $(src)LayerProviderXML.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiModuleProvider.d

$(bin)$(binobj)SiModuleProvider.d :

$(bin)$(binobj)SiModuleProvider.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)SiModuleProvider.o : $(src)SiModuleProvider.cxx
	$(cpp_echo) $(src)SiModuleProvider.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(SiModuleProvider_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(SiModuleProvider_cppflags) $(SiModuleProvider_cxx_cppflags)  $(src)SiModuleProvider.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(SiModuleProvider_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)SiModuleProvider.cxx

$(bin)$(binobj)SiModuleProvider.o : $(SiModuleProvider_cxx_dependencies)
	$(cpp_echo) $(src)SiModuleProvider.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(SiModuleProvider_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(SiModuleProvider_cppflags) $(SiModuleProvider_cxx_cppflags)  $(src)SiModuleProvider.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)StaveBuilderXML.d

$(bin)$(binobj)StaveBuilderXML.d :

$(bin)$(binobj)StaveBuilderXML.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)StaveBuilderXML.o : $(src)StaveBuilderXML.cxx
	$(cpp_echo) $(src)StaveBuilderXML.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(StaveBuilderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(StaveBuilderXML_cppflags) $(StaveBuilderXML_cxx_cppflags)  $(src)StaveBuilderXML.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(StaveBuilderXML_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)StaveBuilderXML.cxx

$(bin)$(binobj)StaveBuilderXML.o : $(StaveBuilderXML_cxx_dependencies)
	$(cpp_echo) $(src)StaveBuilderXML.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(StaveBuilderXML_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(StaveBuilderXML_cppflags) $(StaveBuilderXML_cxx_cppflags)  $(src)StaveBuilderXML.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)XMLReaderSvc.d

$(bin)$(binobj)XMLReaderSvc.d :

$(bin)$(binobj)XMLReaderSvc.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)XMLReaderSvc.o : $(src)XMLReaderSvc.cxx
	$(cpp_echo) $(src)XMLReaderSvc.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(XMLReaderSvc_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(XMLReaderSvc_cppflags) $(XMLReaderSvc_cxx_cppflags)  $(src)XMLReaderSvc.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(XMLReaderSvc_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)XMLReaderSvc.cxx

$(bin)$(binobj)XMLReaderSvc.o : $(XMLReaderSvc_cxx_dependencies)
	$(cpp_echo) $(src)XMLReaderSvc.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(XMLReaderSvc_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(XMLReaderSvc_cppflags) $(XMLReaderSvc_cxx_cppflags)  $(src)XMLReaderSvc.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)XMLUtils.d

$(bin)$(binobj)XMLUtils.d :

$(bin)$(binobj)XMLUtils.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)XMLUtils.o : $(src)XMLUtils.cxx
	$(cpp_echo) $(src)XMLUtils.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(XMLUtils_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(XMLUtils_cppflags) $(XMLUtils_cxx_cppflags)  $(src)XMLUtils.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(XMLUtils_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)XMLUtils.cxx

$(bin)$(binobj)XMLUtils.o : $(XMLUtils_cxx_dependencies)
	$(cpp_echo) $(src)XMLUtils.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(XMLUtils_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(XMLUtils_cppflags) $(XMLUtils_cxx_cppflags)  $(src)XMLUtils.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)InDetTrackingGeometryXML_entries.d

$(bin)$(binobj)InDetTrackingGeometryXML_entries.d :

$(bin)$(binobj)InDetTrackingGeometryXML_entries.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)InDetTrackingGeometryXML_entries.o : $(src)components/InDetTrackingGeometryXML_entries.cxx
	$(cpp_echo) $(src)components/InDetTrackingGeometryXML_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(InDetTrackingGeometryXML_entries_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(InDetTrackingGeometryXML_entries_cppflags) $(InDetTrackingGeometryXML_entries_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometryXML_entries.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(InDetTrackingGeometryXML_entries_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)components/InDetTrackingGeometryXML_entries.cxx

$(bin)$(binobj)InDetTrackingGeometryXML_entries.o : $(InDetTrackingGeometryXML_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/InDetTrackingGeometryXML_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(InDetTrackingGeometryXML_entries_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(InDetTrackingGeometryXML_entries_cppflags) $(InDetTrackingGeometryXML_entries_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometryXML_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),InDetTrackingGeometryXMLclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)InDetTrackingGeometryXML_load.d

$(bin)$(binobj)InDetTrackingGeometryXML_load.d :

$(bin)$(binobj)InDetTrackingGeometryXML_load.o : $(cmt_final_setup_InDetTrackingGeometryXML)

$(bin)$(binobj)InDetTrackingGeometryXML_load.o : $(src)components/InDetTrackingGeometryXML_load.cxx
	$(cpp_echo) $(src)components/InDetTrackingGeometryXML_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(InDetTrackingGeometryXML_load_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(InDetTrackingGeometryXML_load_cppflags) $(InDetTrackingGeometryXML_load_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometryXML_load.cxx
endif
endif

else
$(bin)InDetTrackingGeometryXML_dependencies.make : $(InDetTrackingGeometryXML_load_cxx_dependencies)

$(bin)InDetTrackingGeometryXML_dependencies.make : $(src)components/InDetTrackingGeometryXML_load.cxx

$(bin)$(binobj)InDetTrackingGeometryXML_load.o : $(InDetTrackingGeometryXML_load_cxx_dependencies)
	$(cpp_echo) $(src)components/InDetTrackingGeometryXML_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(InDetTrackingGeometryXML_pp_cppflags) $(lib_InDetTrackingGeometryXML_pp_cppflags) $(InDetTrackingGeometryXML_load_pp_cppflags) $(use_cppflags) $(InDetTrackingGeometryXML_cppflags) $(lib_InDetTrackingGeometryXML_cppflags) $(InDetTrackingGeometryXML_load_cppflags) $(InDetTrackingGeometryXML_load_cxx_cppflags) -I../src/components $(src)components/InDetTrackingGeometryXML_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryXMLclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryXML.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryXMLclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library InDetTrackingGeometryXML
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)InDetTrackingGeometryXML$(library_suffix).a $(library_prefix)InDetTrackingGeometryXML$(library_suffix).$(shlibsuffix) InDetTrackingGeometryXML.stamp InDetTrackingGeometryXML.shstamp
#-- end of cleanup_library ---------------
