#-- start of make_header -----------------

#====================================
#  Library SiDigitization
#
#   Generated Tue Jan 29 18:45:44 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SiDigitization_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SiDigitization_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SiDigitization

SiDigitization_tag = $(tag)

#cmt_local_tagfile_SiDigitization = $(SiDigitization_tag)_SiDigitization.make
cmt_local_tagfile_SiDigitization = $(bin)$(SiDigitization_tag)_SiDigitization.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SiDigitization_tag = $(tag)

#cmt_local_tagfile_SiDigitization = $(SiDigitization_tag).make
cmt_local_tagfile_SiDigitization = $(bin)$(SiDigitization_tag).make

endif

include $(cmt_local_tagfile_SiDigitization)
#-include $(cmt_local_tagfile_SiDigitization)

ifdef cmt_SiDigitization_has_target_tag

cmt_final_setup_SiDigitization = $(bin)setup_SiDigitization.make
cmt_dependencies_in_SiDigitization = $(bin)dependencies_SiDigitization.in
#cmt_final_setup_SiDigitization = $(bin)SiDigitization_SiDigitizationsetup.make
cmt_local_SiDigitization_makefile = $(bin)SiDigitization.make

else

cmt_final_setup_SiDigitization = $(bin)setup.make
cmt_dependencies_in_SiDigitization = $(bin)dependencies.in
#cmt_final_setup_SiDigitization = $(bin)SiDigitizationsetup.make
cmt_local_SiDigitization_makefile = $(bin)SiDigitization.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SiDigitizationsetup.make

#SiDigitization :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SiDigitization'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SiDigitization/
#SiDigitization::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

SiDigitizationlibname   = $(bin)$(library_prefix)SiDigitization$(library_suffix)
SiDigitizationlib       = $(SiDigitizationlibname).a
SiDigitizationstamp     = $(bin)SiDigitization.stamp
SiDigitizationshstamp   = $(bin)SiDigitization.shstamp

SiDigitization :: dirs  SiDigitizationLIB
	$(echo) "SiDigitization ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#SiDigitizationLIB :: $(SiDigitizationlib) $(SiDigitizationshstamp)
SiDigitizationLIB :: $(SiDigitizationshstamp)
	$(echo) "SiDigitization : library ok"

$(SiDigitizationlib) :: $(bin)SiChargedDiode.o $(bin)SiChargedDiodeCollection.o $(bin)SiSurfaceCharge.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(SiDigitizationlib) $?
	$(lib_silent) $(ranlib) $(SiDigitizationlib)
	$(lib_silent) cat /dev/null >$(SiDigitizationstamp)

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

$(SiDigitizationlibname).$(shlibsuffix) :: $(bin)SiChargedDiode.o $(bin)SiChargedDiodeCollection.o $(bin)SiSurfaceCharge.o $(use_requirements) $(SiDigitizationstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)SiChargedDiode.o $(bin)SiChargedDiodeCollection.o $(bin)SiSurfaceCharge.o $(SiDigitization_shlibflags)
	$(lib_silent) cat /dev/null >$(SiDigitizationstamp) && \
	  cat /dev/null >$(SiDigitizationshstamp)

$(SiDigitizationshstamp) :: $(SiDigitizationlibname).$(shlibsuffix)
	$(lib_silent) if test -f $(SiDigitizationlibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(SiDigitizationstamp) && \
	  cat /dev/null >$(SiDigitizationshstamp) ; fi

SiDigitizationclean ::
	$(cleanup_echo) objects SiDigitization
	$(cleanup_silent) /bin/rm -f $(bin)SiChargedDiode.o $(bin)SiChargedDiodeCollection.o $(bin)SiSurfaceCharge.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)SiChargedDiode.o $(bin)SiChargedDiodeCollection.o $(bin)SiSurfaceCharge.o) $(patsubst %.o,%.dep,$(bin)SiChargedDiode.o $(bin)SiChargedDiodeCollection.o $(bin)SiSurfaceCharge.o) $(patsubst %.o,%.d.stamp,$(bin)SiChargedDiode.o $(bin)SiChargedDiodeCollection.o $(bin)SiSurfaceCharge.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf SiDigitization_deps SiDigitization_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
SiDigitizationinstallname = $(library_prefix)SiDigitization$(library_suffix).$(shlibsuffix)

SiDigitization :: SiDigitizationinstall ;

install :: SiDigitizationinstall ;

SiDigitizationinstall :: $(install_dir)/$(SiDigitizationinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(SiDigitizationinstallname) :: $(bin)$(SiDigitizationinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiDigitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##SiDigitizationclean :: SiDigitizationuninstall

uninstall :: SiDigitizationuninstall ;

SiDigitizationuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(SiDigitizationinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiChargedDiode.d

$(bin)$(binobj)SiChargedDiode.d :

$(bin)$(binobj)SiChargedDiode.o : $(cmt_final_setup_SiDigitization)

$(bin)$(binobj)SiChargedDiode.o : $(src)SiChargedDiode.cxx
	$(cpp_echo) $(src)SiChargedDiode.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiDigitization_pp_cppflags) $(lib_SiDigitization_pp_cppflags) $(SiChargedDiode_pp_cppflags) $(use_cppflags) $(SiDigitization_cppflags) $(lib_SiDigitization_cppflags) $(SiChargedDiode_cppflags) $(SiChargedDiode_cxx_cppflags)  $(src)SiChargedDiode.cxx
endif
endif

else
$(bin)SiDigitization_dependencies.make : $(SiChargedDiode_cxx_dependencies)

$(bin)SiDigitization_dependencies.make : $(src)SiChargedDiode.cxx

$(bin)$(binobj)SiChargedDiode.o : $(SiChargedDiode_cxx_dependencies)
	$(cpp_echo) $(src)SiChargedDiode.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiDigitization_pp_cppflags) $(lib_SiDigitization_pp_cppflags) $(SiChargedDiode_pp_cppflags) $(use_cppflags) $(SiDigitization_cppflags) $(lib_SiDigitization_cppflags) $(SiChargedDiode_cppflags) $(SiChargedDiode_cxx_cppflags)  $(src)SiChargedDiode.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiChargedDiodeCollection.d

$(bin)$(binobj)SiChargedDiodeCollection.d :

$(bin)$(binobj)SiChargedDiodeCollection.o : $(cmt_final_setup_SiDigitization)

$(bin)$(binobj)SiChargedDiodeCollection.o : $(src)SiChargedDiodeCollection.cxx
	$(cpp_echo) $(src)SiChargedDiodeCollection.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiDigitization_pp_cppflags) $(lib_SiDigitization_pp_cppflags) $(SiChargedDiodeCollection_pp_cppflags) $(use_cppflags) $(SiDigitization_cppflags) $(lib_SiDigitization_cppflags) $(SiChargedDiodeCollection_cppflags) $(SiChargedDiodeCollection_cxx_cppflags)  $(src)SiChargedDiodeCollection.cxx
endif
endif

else
$(bin)SiDigitization_dependencies.make : $(SiChargedDiodeCollection_cxx_dependencies)

$(bin)SiDigitization_dependencies.make : $(src)SiChargedDiodeCollection.cxx

$(bin)$(binobj)SiChargedDiodeCollection.o : $(SiChargedDiodeCollection_cxx_dependencies)
	$(cpp_echo) $(src)SiChargedDiodeCollection.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiDigitization_pp_cppflags) $(lib_SiDigitization_pp_cppflags) $(SiChargedDiodeCollection_pp_cppflags) $(use_cppflags) $(SiDigitization_cppflags) $(lib_SiDigitization_cppflags) $(SiChargedDiodeCollection_cppflags) $(SiChargedDiodeCollection_cxx_cppflags)  $(src)SiChargedDiodeCollection.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),SiDigitizationclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)SiSurfaceCharge.d

$(bin)$(binobj)SiSurfaceCharge.d :

$(bin)$(binobj)SiSurfaceCharge.o : $(cmt_final_setup_SiDigitization)

$(bin)$(binobj)SiSurfaceCharge.o : $(src)SiSurfaceCharge.cxx
	$(cpp_echo) $(src)SiSurfaceCharge.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(SiDigitization_pp_cppflags) $(lib_SiDigitization_pp_cppflags) $(SiSurfaceCharge_pp_cppflags) $(use_cppflags) $(SiDigitization_cppflags) $(lib_SiDigitization_cppflags) $(SiSurfaceCharge_cppflags) $(SiSurfaceCharge_cxx_cppflags)  $(src)SiSurfaceCharge.cxx
endif
endif

else
$(bin)SiDigitization_dependencies.make : $(SiSurfaceCharge_cxx_dependencies)

$(bin)SiDigitization_dependencies.make : $(src)SiSurfaceCharge.cxx

$(bin)$(binobj)SiSurfaceCharge.o : $(SiSurfaceCharge_cxx_dependencies)
	$(cpp_echo) $(src)SiSurfaceCharge.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(SiDigitization_pp_cppflags) $(lib_SiDigitization_pp_cppflags) $(SiSurfaceCharge_pp_cppflags) $(use_cppflags) $(SiDigitization_cppflags) $(lib_SiDigitization_cppflags) $(SiSurfaceCharge_cppflags) $(SiSurfaceCharge_cxx_cppflags)  $(src)SiSurfaceCharge.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: SiDigitizationclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SiDigitization.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SiDigitizationclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library SiDigitization
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)SiDigitization$(library_suffix).a $(library_prefix)SiDigitization$(library_suffix).$(shlibsuffix) SiDigitization.stamp SiDigitization.shstamp
#-- end of cleanup_library ---------------
