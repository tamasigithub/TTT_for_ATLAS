#-- start of make_header -----------------

#====================================
#  Document FastSiDigitization_optdebug_library
#
#   Generated Tue Jan 29 19:11:42 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_FastSiDigitization_optdebug_library_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_FastSiDigitization_optdebug_library_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_FastSiDigitization_optdebug_library

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitization_optdebug_library = $(FastSiDigitization_tag)_FastSiDigitization_optdebug_library.make
cmt_local_tagfile_FastSiDigitization_optdebug_library = $(bin)$(FastSiDigitization_tag)_FastSiDigitization_optdebug_library.make

else

tags      = $(tag),$(CMTEXTRATAGS)

FastSiDigitization_tag = $(tag)

#cmt_local_tagfile_FastSiDigitization_optdebug_library = $(FastSiDigitization_tag).make
cmt_local_tagfile_FastSiDigitization_optdebug_library = $(bin)$(FastSiDigitization_tag).make

endif

include $(cmt_local_tagfile_FastSiDigitization_optdebug_library)
#-include $(cmt_local_tagfile_FastSiDigitization_optdebug_library)

ifdef cmt_FastSiDigitization_optdebug_library_has_target_tag

cmt_final_setup_FastSiDigitization_optdebug_library = $(bin)setup_FastSiDigitization_optdebug_library.make
cmt_dependencies_in_FastSiDigitization_optdebug_library = $(bin)dependencies_FastSiDigitization_optdebug_library.in
#cmt_final_setup_FastSiDigitization_optdebug_library = $(bin)FastSiDigitization_FastSiDigitization_optdebug_librarysetup.make
cmt_local_FastSiDigitization_optdebug_library_makefile = $(bin)FastSiDigitization_optdebug_library.make

else

cmt_final_setup_FastSiDigitization_optdebug_library = $(bin)setup.make
cmt_dependencies_in_FastSiDigitization_optdebug_library = $(bin)dependencies.in
#cmt_final_setup_FastSiDigitization_optdebug_library = $(bin)FastSiDigitizationsetup.make
cmt_local_FastSiDigitization_optdebug_library_makefile = $(bin)FastSiDigitization_optdebug_library.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)FastSiDigitizationsetup.make

#FastSiDigitization_optdebug_library :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'FastSiDigitization_optdebug_library'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = FastSiDigitization_optdebug_library/
#FastSiDigitization_optdebug_library::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of optdebug_library_header ------
# create  a  two  part  executable.   One  a
# stripped  binary  which will occupy less space in RAM and in a dis-
# tribution and the second a debugging information file which is only
# needed  if  debugging abilities are required
# See GNU binutils OBJCOPY(1)
# http://sourceware.org/binutils/docs-2.17/binutils/objcopy.html#objcopy

depend=$(bin)$(library_prefix)FastSiDigitization.$(shlibsuffix)
target=$(depend)$(debuginfosuffix)

FastSiDigitization_optdebug_library :: $(target) ;

$(target) : $(depend)
	$(echo) stripping dbg symbols into separate file $@
	$(link_silent) objcopy --only-keep-debug $< $@
	$(link_silent) objcopy --strip-debug $<
	$(link_silent) cd $(@D) && objcopy --add-gnu-debuglink=$(@F) $(<F)
	$(link_silent) touch -c $@

FastSiDigitization_optdebug_libraryclean ::
	$(cleanup_silent) /bin/rm -f $(target)

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
FastSiDigitization_optdebug_libraryinstallname = $(library_prefix)FastSiDigitization$(library_suffix).$(shlibsuffix)$(debuginfosuffix)

FastSiDigitization_optdebug_library :: FastSiDigitization_optdebug_libraryinstall ;

install :: FastSiDigitization_optdebug_libraryinstall ;

FastSiDigitization_optdebug_libraryinstall :: $(install_dir)/$(FastSiDigitization_optdebug_libraryinstallname)
ifdef CMTINSTALLAREA
	$(echo) "$(FastSiDigitization_optdebug_libraryinstallname) installation done"
endif

$(install_dir)/$(FastSiDigitization_optdebug_libraryinstallname) :: $(bin)$(FastSiDigitization_optdebug_libraryinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(FastSiDigitization_optdebug_libraryinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##FastSiDigitization_optdebug_libraryclean :: FastSiDigitization_optdebug_libraryuninstall

uninstall :: FastSiDigitization_optdebug_libraryuninstall ;

FastSiDigitization_optdebug_libraryuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(FastSiDigitization_optdebug_libraryinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- start of optdebug_library_header ------
#-- start of cleanup_header --------------

clean :: FastSiDigitization_optdebug_libraryclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(FastSiDigitization_optdebug_library.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

FastSiDigitization_optdebug_libraryclean ::
#-- end of cleanup_header ---------------
