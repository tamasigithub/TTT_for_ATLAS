#-- start of make_header -----------------

#====================================
#  Document InDetTrackingGeometryXML_optdebug_library
#
#   Generated Tue Jan 29 18:51:10 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetTrackingGeometryXML_optdebug_library_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetTrackingGeometryXML_optdebug_library_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetTrackingGeometryXML_optdebug_library

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXML_optdebug_library = $(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXML_optdebug_library.make
cmt_local_tagfile_InDetTrackingGeometryXML_optdebug_library = $(bin)$(InDetTrackingGeometryXML_tag)_InDetTrackingGeometryXML_optdebug_library.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetTrackingGeometryXML_tag = $(tag)

#cmt_local_tagfile_InDetTrackingGeometryXML_optdebug_library = $(InDetTrackingGeometryXML_tag).make
cmt_local_tagfile_InDetTrackingGeometryXML_optdebug_library = $(bin)$(InDetTrackingGeometryXML_tag).make

endif

include $(cmt_local_tagfile_InDetTrackingGeometryXML_optdebug_library)
#-include $(cmt_local_tagfile_InDetTrackingGeometryXML_optdebug_library)

ifdef cmt_InDetTrackingGeometryXML_optdebug_library_has_target_tag

cmt_final_setup_InDetTrackingGeometryXML_optdebug_library = $(bin)setup_InDetTrackingGeometryXML_optdebug_library.make
cmt_dependencies_in_InDetTrackingGeometryXML_optdebug_library = $(bin)dependencies_InDetTrackingGeometryXML_optdebug_library.in
#cmt_final_setup_InDetTrackingGeometryXML_optdebug_library = $(bin)InDetTrackingGeometryXML_InDetTrackingGeometryXML_optdebug_librarysetup.make
cmt_local_InDetTrackingGeometryXML_optdebug_library_makefile = $(bin)InDetTrackingGeometryXML_optdebug_library.make

else

cmt_final_setup_InDetTrackingGeometryXML_optdebug_library = $(bin)setup.make
cmt_dependencies_in_InDetTrackingGeometryXML_optdebug_library = $(bin)dependencies.in
#cmt_final_setup_InDetTrackingGeometryXML_optdebug_library = $(bin)InDetTrackingGeometryXMLsetup.make
cmt_local_InDetTrackingGeometryXML_optdebug_library_makefile = $(bin)InDetTrackingGeometryXML_optdebug_library.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetTrackingGeometryXMLsetup.make

#InDetTrackingGeometryXML_optdebug_library :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetTrackingGeometryXML_optdebug_library'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetTrackingGeometryXML_optdebug_library/
#InDetTrackingGeometryXML_optdebug_library::
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

depend=$(bin)$(library_prefix)InDetTrackingGeometryXML.$(shlibsuffix)
target=$(depend)$(debuginfosuffix)

InDetTrackingGeometryXML_optdebug_library :: $(target) ;

$(target) : $(depend)
	$(echo) stripping dbg symbols into separate file $@
	$(link_silent) objcopy --only-keep-debug $< $@
	$(link_silent) objcopy --strip-debug $<
	$(link_silent) cd $(@D) && objcopy --add-gnu-debuglink=$(@F) $(<F)
	$(link_silent) touch -c $@

InDetTrackingGeometryXML_optdebug_libraryclean ::
	$(cleanup_silent) /bin/rm -f $(target)

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
InDetTrackingGeometryXML_optdebug_libraryinstallname = $(library_prefix)InDetTrackingGeometryXML$(library_suffix).$(shlibsuffix)$(debuginfosuffix)

InDetTrackingGeometryXML_optdebug_library :: InDetTrackingGeometryXML_optdebug_libraryinstall ;

install :: InDetTrackingGeometryXML_optdebug_libraryinstall ;

InDetTrackingGeometryXML_optdebug_libraryinstall :: $(install_dir)/$(InDetTrackingGeometryXML_optdebug_libraryinstallname)
ifdef CMTINSTALLAREA
	$(echo) "$(InDetTrackingGeometryXML_optdebug_libraryinstallname) installation done"
endif

$(install_dir)/$(InDetTrackingGeometryXML_optdebug_libraryinstallname) :: $(bin)$(InDetTrackingGeometryXML_optdebug_libraryinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetTrackingGeometryXML_optdebug_libraryinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##InDetTrackingGeometryXML_optdebug_libraryclean :: InDetTrackingGeometryXML_optdebug_libraryuninstall

uninstall :: InDetTrackingGeometryXML_optdebug_libraryuninstall ;

InDetTrackingGeometryXML_optdebug_libraryuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(InDetTrackingGeometryXML_optdebug_libraryinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- start of optdebug_library_header ------
#-- start of cleanup_header --------------

clean :: InDetTrackingGeometryXML_optdebug_libraryclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetTrackingGeometryXML_optdebug_library.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetTrackingGeometryXML_optdebug_libraryclean ::
#-- end of cleanup_header ---------------
