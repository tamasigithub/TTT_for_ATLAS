#-- start of make_header -----------------

#====================================
#  Document InDetReadoutGeometry_optdebug_library
#
#   Generated Tue Jan 29 18:45:41 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetReadoutGeometry_optdebug_library_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetReadoutGeometry_optdebug_library_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetReadoutGeometry_optdebug_library

InDetReadoutGeometry_tag = $(tag)

#cmt_local_tagfile_InDetReadoutGeometry_optdebug_library = $(InDetReadoutGeometry_tag)_InDetReadoutGeometry_optdebug_library.make
cmt_local_tagfile_InDetReadoutGeometry_optdebug_library = $(bin)$(InDetReadoutGeometry_tag)_InDetReadoutGeometry_optdebug_library.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetReadoutGeometry_tag = $(tag)

#cmt_local_tagfile_InDetReadoutGeometry_optdebug_library = $(InDetReadoutGeometry_tag).make
cmt_local_tagfile_InDetReadoutGeometry_optdebug_library = $(bin)$(InDetReadoutGeometry_tag).make

endif

include $(cmt_local_tagfile_InDetReadoutGeometry_optdebug_library)
#-include $(cmt_local_tagfile_InDetReadoutGeometry_optdebug_library)

ifdef cmt_InDetReadoutGeometry_optdebug_library_has_target_tag

cmt_final_setup_InDetReadoutGeometry_optdebug_library = $(bin)setup_InDetReadoutGeometry_optdebug_library.make
cmt_dependencies_in_InDetReadoutGeometry_optdebug_library = $(bin)dependencies_InDetReadoutGeometry_optdebug_library.in
#cmt_final_setup_InDetReadoutGeometry_optdebug_library = $(bin)InDetReadoutGeometry_InDetReadoutGeometry_optdebug_librarysetup.make
cmt_local_InDetReadoutGeometry_optdebug_library_makefile = $(bin)InDetReadoutGeometry_optdebug_library.make

else

cmt_final_setup_InDetReadoutGeometry_optdebug_library = $(bin)setup.make
cmt_dependencies_in_InDetReadoutGeometry_optdebug_library = $(bin)dependencies.in
#cmt_final_setup_InDetReadoutGeometry_optdebug_library = $(bin)InDetReadoutGeometrysetup.make
cmt_local_InDetReadoutGeometry_optdebug_library_makefile = $(bin)InDetReadoutGeometry_optdebug_library.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetReadoutGeometrysetup.make

#InDetReadoutGeometry_optdebug_library :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetReadoutGeometry_optdebug_library'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetReadoutGeometry_optdebug_library/
#InDetReadoutGeometry_optdebug_library::
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

depend=$(bin)$(library_prefix)InDetReadoutGeometry.$(shlibsuffix)
target=$(depend)$(debuginfosuffix)

InDetReadoutGeometry_optdebug_library :: $(target) ;

$(target) : $(depend)
	$(echo) stripping dbg symbols into separate file $@
	$(link_silent) objcopy --only-keep-debug $< $@
	$(link_silent) objcopy --strip-debug $<
	$(link_silent) cd $(@D) && objcopy --add-gnu-debuglink=$(@F) $(<F)
	$(link_silent) touch -c $@

InDetReadoutGeometry_optdebug_libraryclean ::
	$(cleanup_silent) /bin/rm -f $(target)

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
InDetReadoutGeometry_optdebug_libraryinstallname = $(library_prefix)InDetReadoutGeometry$(library_suffix).$(shlibsuffix)$(debuginfosuffix)

InDetReadoutGeometry_optdebug_library :: InDetReadoutGeometry_optdebug_libraryinstall ;

install :: InDetReadoutGeometry_optdebug_libraryinstall ;

InDetReadoutGeometry_optdebug_libraryinstall :: $(install_dir)/$(InDetReadoutGeometry_optdebug_libraryinstallname)
ifdef CMTINSTALLAREA
	$(echo) "$(InDetReadoutGeometry_optdebug_libraryinstallname) installation done"
endif

$(install_dir)/$(InDetReadoutGeometry_optdebug_libraryinstallname) :: $(bin)$(InDetReadoutGeometry_optdebug_libraryinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetReadoutGeometry_optdebug_libraryinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##InDetReadoutGeometry_optdebug_libraryclean :: InDetReadoutGeometry_optdebug_libraryuninstall

uninstall :: InDetReadoutGeometry_optdebug_libraryuninstall ;

InDetReadoutGeometry_optdebug_libraryuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetReadoutGeometry_optdebug_libraryinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- start of optdebug_library_header ------
#-- start of cleanup_header --------------

clean :: InDetReadoutGeometry_optdebug_libraryclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetReadoutGeometry_optdebug_library.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetReadoutGeometry_optdebug_libraryclean ::
#-- end of cleanup_header ---------------
