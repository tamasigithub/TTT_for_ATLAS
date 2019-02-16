#-- start of make_header -----------------

#====================================
#  Document buildwithqmake
#
#   Generated Tue Jan 29 18:53:32 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_buildwithqmake_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_buildwithqmake_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_buildwithqmake

VP1GeometrySystems_tag = $(tag)

#cmt_local_tagfile_buildwithqmake = $(VP1GeometrySystems_tag)_buildwithqmake.make
cmt_local_tagfile_buildwithqmake = $(bin)$(VP1GeometrySystems_tag)_buildwithqmake.make

else

tags      = $(tag),$(CMTEXTRATAGS)

VP1GeometrySystems_tag = $(tag)

#cmt_local_tagfile_buildwithqmake = $(VP1GeometrySystems_tag).make
cmt_local_tagfile_buildwithqmake = $(bin)$(VP1GeometrySystems_tag).make

endif

include $(cmt_local_tagfile_buildwithqmake)
#-include $(cmt_local_tagfile_buildwithqmake)

ifdef cmt_buildwithqmake_has_target_tag

cmt_final_setup_buildwithqmake = $(bin)setup_buildwithqmake.make
cmt_dependencies_in_buildwithqmake = $(bin)dependencies_buildwithqmake.in
#cmt_final_setup_buildwithqmake = $(bin)VP1GeometrySystems_buildwithqmakesetup.make
cmt_local_buildwithqmake_makefile = $(bin)buildwithqmake.make

else

cmt_final_setup_buildwithqmake = $(bin)setup.make
cmt_dependencies_in_buildwithqmake = $(bin)dependencies.in
#cmt_final_setup_buildwithqmake = $(bin)VP1GeometrySystemssetup.make
cmt_local_buildwithqmake_makefile = $(bin)buildwithqmake.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)VP1GeometrySystemssetup.make

#buildwithqmake :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'buildwithqmake'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = buildwithqmake/
#buildwithqmake::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of cmt_action_runner_header ---------------

ifdef ONCE
buildwithqmake_once = 1
endif

ifdef buildwithqmake_once

buildwithqmakeactionstamp = $(bin)buildwithqmake.actionstamp
#buildwithqmakeactionstamp = buildwithqmake.actionstamp

buildwithqmake :: $(buildwithqmakeactionstamp)
	$(echo) "buildwithqmake ok"
#	@echo buildwithqmake ok

#$(buildwithqmakeactionstamp) :: $(buildwithqmake_dependencies)
$(buildwithqmakeactionstamp) ::
	$(silent) create-qt4-based-lib   
	$(silent) cat /dev/null > $(buildwithqmakeactionstamp)
#	@echo ok > $(buildwithqmakeactionstamp)

buildwithqmakeclean ::
	$(cleanup_silent) /bin/rm -f $(buildwithqmakeactionstamp)

else

#buildwithqmake :: $(buildwithqmake_dependencies)
buildwithqmake ::
	$(silent) create-qt4-based-lib   

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: buildwithqmakeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(buildwithqmake.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

buildwithqmakeclean ::
#-- end of cleanup_header ---------------
