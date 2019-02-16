#-- start of make_header -----------------

#====================================
#  Document install_joboptions
#
#   Generated Tue Jan 29 18:59:17 2019  by tkar
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_joboptions_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_joboptions_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_joboptions

Digitization_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(Digitization_tag)_install_joboptions.make
cmt_local_tagfile_install_joboptions = $(bin)$(Digitization_tag)_install_joboptions.make

else

tags      = $(tag),$(CMTEXTRATAGS)

Digitization_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(Digitization_tag).make
cmt_local_tagfile_install_joboptions = $(bin)$(Digitization_tag).make

endif

include $(cmt_local_tagfile_install_joboptions)
#-include $(cmt_local_tagfile_install_joboptions)

ifdef cmt_install_joboptions_has_target_tag

cmt_final_setup_install_joboptions = $(bin)setup_install_joboptions.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies_install_joboptions.in
#cmt_final_setup_install_joboptions = $(bin)Digitization_install_joboptionssetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

else

cmt_final_setup_install_joboptions = $(bin)setup.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies.in
#cmt_final_setup_install_joboptions = $(bin)Digitizationsetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)Digitizationsetup.make

#install_joboptions :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_joboptions'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_joboptions/
#install_joboptions::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------


ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/jobOptions/Digitization

install_joboptions :: install_joboptionsinstall ;

install :: install_joboptionsinstall ;

install_joboptionsclean :: install_joboptionsuninstall

uninstall :: install_joboptionsuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_joboptionsinstall :: ;

CaloDigitization_py_dependencies = ../share/CaloDigitization.py
ConfigDigitization_py_dependencies = ../share/ConfigDigitization.py
ConfigPileUpEventLoopMgr_py_dependencies = ../share/ConfigPileUpEventLoopMgr.py
DetectorDigitization_py_dependencies = ../share/DetectorDigitization.py
Digitization_py_dependencies = ../share/Digitization.py
FwdDetDigitization_py_dependencies = ../share/FwdDetDigitization.py
InDetDigitization_py_dependencies = ../share/InDetDigitization.py
LVL1Digitization_py_dependencies = ../share/LVL1Digitization.py
LumiBlockOverrides_py_dependencies = ../share/LumiBlockOverrides.py
MuonDigitization_py_dependencies = ../share/MuonDigitization.py
RunNumberOverride_py_dependencies = ../share/RunNumberOverride.py
TruthDigitization_py_dependencies = ../share/TruthDigitization.py
DigitizationConfig_py_dependencies = ../share/jobOpts/DigitizationConfig.py
DigitizationRTT_all_py_dependencies = ../share/jobOpts/DigitizationRTT_all.py
DigitizationRTT_all_leakcheck_py_dependencies = ../share/jobOpts/DigitizationRTT_all_leakcheck.py
DigitizationRTT_all_newconfig_py_dependencies = ../share/jobOpts/DigitizationRTT_all_newconfig.py
DigitizationRTT_all_noLVL1_py_dependencies = ../share/jobOpts/DigitizationRTT_all_noLVL1.py
DigitizationRTT_all_noLVL1_noRDO_py_dependencies = ../share/jobOpts/DigitizationRTT_all_noLVL1_noRDO.py
DigitizationRTT_all_noLVL1_pileup_py_dependencies = ../share/jobOpts/DigitizationRTT_all_noLVL1_pileup.py
DigitizationRTT_all_noLVL1_ranlux_py_dependencies = ../share/jobOpts/DigitizationRTT_all_noLVL1_ranlux.py
DigitizationRTT_all_noRDO_py_dependencies = ../share/jobOpts/DigitizationRTT_all_noRDO.py
DigitizationRTT_all_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_perfmon.py
DigitizationRTT_all_pileup_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup.py
DigitizationRTT_all_pileup01_450ns_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup01_450ns_perfmon.py
DigitizationRTT_all_pileup05_75ns_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup05_75ns_perfmon.py
DigitizationRTT_all_pileup100_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup100_perfmon.py
DigitizationRTT_all_pileup10_75ns_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup10_75ns_perfmon.py
DigitizationRTT_all_pileup10_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup10_perfmon.py
DigitizationRTT_all_pileup20_25ns_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup20_25ns_perfmon.py
DigitizationRTT_all_pileup35_leakcheck_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup35_leakcheck.py
DigitizationRTT_all_pileup35_perfmon_py_dependencies = ../share/jobOpts/DigitizationRTT_all_pileup35_perfmon.py
DigitizationRTT_bcm_py_dependencies = ../share/jobOpts/DigitizationRTT_bcm.py
DigitizationRTT_calo_py_dependencies = ../share/jobOpts/DigitizationRTT_calo.py
DigitizationRTT_calo_noLVL1_py_dependencies = ../share/jobOpts/DigitizationRTT_calo_noLVL1.py
DigitizationRTT_csc_py_dependencies = ../share/jobOpts/DigitizationRTT_csc.py
DigitizationRTT_id_py_dependencies = ../share/jobOpts/DigitizationRTT_id.py
DigitizationRTT_id_noLVL1_py_dependencies = ../share/jobOpts/DigitizationRTT_id_noLVL1.py
DigitizationRTT_lar_py_dependencies = ../share/jobOpts/DigitizationRTT_lar.py
DigitizationRTT_mdt_py_dependencies = ../share/jobOpts/DigitizationRTT_mdt.py
DigitizationRTT_muon_py_dependencies = ../share/jobOpts/DigitizationRTT_muon.py
DigitizationRTT_muon_noLVL1_py_dependencies = ../share/jobOpts/DigitizationRTT_muon_noLVL1.py
DigitizationRTT_noNoise_py_dependencies = ../share/jobOpts/DigitizationRTT_noNoise.py
DigitizationRTT_pixels_py_dependencies = ../share/jobOpts/DigitizationRTT_pixels.py
DigitizationRTT_rndm_Split_1_py_dependencies = ../share/jobOpts/DigitizationRTT_rndm_Split_1.py
DigitizationRTT_rndm_Split_2_py_dependencies = ../share/jobOpts/DigitizationRTT_rndm_Split_2.py
DigitizationRTT_rndm_Unsplit_py_dependencies = ../share/jobOpts/DigitizationRTT_rndm_Unsplit.py
DigitizationRTT_rpc_py_dependencies = ../share/jobOpts/DigitizationRTT_rpc.py
DigitizationRTT_sct_py_dependencies = ../share/jobOpts/DigitizationRTT_sct.py
DigitizationRTT_tgc_py_dependencies = ../share/jobOpts/DigitizationRTT_tgc.py
DigitizationRTT_tile_py_dependencies = ../share/jobOpts/DigitizationRTT_tile.py
DigitizationRTT_trt_py_dependencies = ../share/jobOpts/DigitizationRTT_trt.py
DigitizationRTT_truth_py_dependencies = ../share/jobOpts/DigitizationRTT_truth.py
ForceUseOfAlgorithms_py_dependencies = ../share/jobOpts/ForceUseOfAlgorithms.py
ForceUseOfPileUpTools_py_dependencies = ../share/jobOpts/ForceUseOfPileUpTools.py
MC08PileUpLumi1.0E34_50ns_py_dependencies = ../share/jobOpts/MC08PileUpLumi1.0E34_50ns.py
MC09PileUpLumi0.0_50ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi0.0_50ns.py
MC09PileUpLumi0.5E34_50ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi0.5E34_50ns.py
MC09PileUpLumi1.0E33_25ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi1.0E33_25ns.py
MC09PileUpLumi1.0E34_50ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi1.0E34_50ns.py
MC09PileUpLumi2.0E34_50ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi2.0E34_50ns.py
MC09PileUpLumi3.0E34_50ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi3.0E34_50ns.py
MC09PileUpLumi3.5E33_25ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi3.5E33_25ns.py
MC09PileUpLumi4.0E34_50ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi4.0E34_50ns.py
MC09PileUpLumi5.0E34_50ns_py_dependencies = ../share/jobOpts/MC09PileUpLumi5.0E34_50ns.py
MC10PileUpLumi0.0_50ns_py_dependencies = ../share/jobOpts/MC10PileUpLumi0.0_50ns.py
MC10PileUpLumi0.5E34_50ns_py_dependencies = ../share/jobOpts/MC10PileUpLumi0.5E34_50ns.py
MC10PileUpLumi1.0E34_50ns_py_dependencies = ../share/jobOpts/MC10PileUpLumi1.0E34_50ns.py
ReadRDOs_py_dependencies = ../share/jobOpts/ReadRDOs.py
MC10PileUpLumi2.0E34_50ns_py_dependencies = ../share/jobOpts/MC10PileUpLumi2.0E34_50ns.py
MC10PileUpLumi3.0E34_50ns_py_dependencies = ../share/jobOpts/MC10PileUpLumi3.0E34_50ns.py
MC10PileUpLumi4.0E34_50ns_py_dependencies = ../share/jobOpts/MC10PileUpLumi4.0E34_50ns.py
MC10PileUpLumi5.0E34_50ns_py_dependencies = ../share/jobOpts/MC10PileUpLumi5.0E34_50ns.py
NightlyPileUp_py_dependencies = ../share/jobOpts/NightlyPileUp.py
cavernfiles_py_dependencies = ../share/jobOpts/cavernfiles.py
mc09cavernfiles_py_dependencies = ../share/jobOpts/mc09cavernfiles.py
mc09minbiasfiles_py_dependencies = ../share/jobOpts/mc09minbiasfiles.py
mc10Bminbiasfiles_py_dependencies = ../share/jobOpts/mc10Bminbiasfiles.py
mc10cavernfiles_py_dependencies = ../share/jobOpts/mc10cavernfiles.py
mc10minbiasfiles_py_dependencies = ../share/jobOpts/mc10minbiasfiles.py
minbiasfiles_py_dependencies = ../share/jobOpts/minbiasfiles.py


install_joboptionsinstall :: ${install_dir}/CaloDigitization.py ;

${install_dir}/CaloDigitization.py :: ../share/CaloDigitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/CaloDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CaloDigitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/CaloDigitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/CaloDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CaloDigitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfigDigitization.py ;

${install_dir}/ConfigDigitization.py :: ../share/ConfigDigitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfigDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfigDigitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfigDigitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfigDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfigDigitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfigPileUpEventLoopMgr.py ;

${install_dir}/ConfigPileUpEventLoopMgr.py :: ../share/ConfigPileUpEventLoopMgr.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfigPileUpEventLoopMgr.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfigPileUpEventLoopMgr.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfigPileUpEventLoopMgr.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfigPileUpEventLoopMgr.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfigPileUpEventLoopMgr.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DetectorDigitization.py ;

${install_dir}/DetectorDigitization.py :: ../share/DetectorDigitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/DetectorDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DetectorDigitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/DetectorDigitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/DetectorDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DetectorDigitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/Digitization.py ;

${install_dir}/Digitization.py :: ../share/Digitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Digitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Digitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/Digitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/Digitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Digitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/FwdDetDigitization.py ;

${install_dir}/FwdDetDigitization.py :: ../share/FwdDetDigitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FwdDetDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "FwdDetDigitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/FwdDetDigitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/FwdDetDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "FwdDetDigitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetDigitization.py ;

${install_dir}/InDetDigitization.py :: ../share/InDetDigitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetDigitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetDigitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetDigitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/LVL1Digitization.py ;

${install_dir}/LVL1Digitization.py :: ../share/LVL1Digitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LVL1Digitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1Digitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LVL1Digitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LVL1Digitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1Digitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/LumiBlockOverrides.py ;

${install_dir}/LumiBlockOverrides.py :: ../share/LumiBlockOverrides.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LumiBlockOverrides.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LumiBlockOverrides.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/LumiBlockOverrides.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/LumiBlockOverrides.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LumiBlockOverrides.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MuonDigitization.py ;

${install_dir}/MuonDigitization.py :: ../share/MuonDigitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/MuonDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MuonDigitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/MuonDigitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/MuonDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MuonDigitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/RunNumberOverride.py ;

${install_dir}/RunNumberOverride.py :: ../share/RunNumberOverride.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/RunNumberOverride.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "RunNumberOverride.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/RunNumberOverride.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/RunNumberOverride.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "RunNumberOverride.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TruthDigitization.py ;

${install_dir}/TruthDigitization.py :: ../share/TruthDigitization.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TruthDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TruthDigitization.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/TruthDigitization.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TruthDigitization.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TruthDigitization.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationConfig.py ;

${install_dir}/DigitizationConfig.py :: ../share/jobOpts/DigitizationConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationConfig.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationConfig.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all.py ;

${install_dir}/DigitizationRTT_all.py :: ../share/jobOpts/DigitizationRTT_all.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_leakcheck.py ;

${install_dir}/DigitizationRTT_all_leakcheck.py :: ../share/jobOpts/DigitizationRTT_all_leakcheck.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_leakcheck.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_leakcheck.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_leakcheck.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_leakcheck.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_leakcheck.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_newconfig.py ;

${install_dir}/DigitizationRTT_all_newconfig.py :: ../share/jobOpts/DigitizationRTT_all_newconfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_newconfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_newconfig.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_newconfig.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_newconfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_newconfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_noLVL1.py ;

${install_dir}/DigitizationRTT_all_noLVL1.py :: ../share/jobOpts/DigitizationRTT_all_noLVL1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_noLVL1.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_noLVL1.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_noLVL1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_noLVL1_noRDO.py ;

${install_dir}/DigitizationRTT_all_noLVL1_noRDO.py :: ../share/jobOpts/DigitizationRTT_all_noLVL1_noRDO.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1_noRDO.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_noLVL1_noRDO.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_noLVL1_noRDO.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1_noRDO.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_noLVL1_noRDO.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_noLVL1_pileup.py ;

${install_dir}/DigitizationRTT_all_noLVL1_pileup.py :: ../share/jobOpts/DigitizationRTT_all_noLVL1_pileup.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1_pileup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_noLVL1_pileup.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_noLVL1_pileup.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1_pileup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_noLVL1_pileup.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_noLVL1_ranlux.py ;

${install_dir}/DigitizationRTT_all_noLVL1_ranlux.py :: ../share/jobOpts/DigitizationRTT_all_noLVL1_ranlux.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1_ranlux.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_noLVL1_ranlux.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_noLVL1_ranlux.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noLVL1_ranlux.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_noLVL1_ranlux.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_noRDO.py ;

${install_dir}/DigitizationRTT_all_noRDO.py :: ../share/jobOpts/DigitizationRTT_all_noRDO.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noRDO.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_noRDO.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_noRDO.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_noRDO.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_noRDO.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_perfmon.py ;

${install_dir}/DigitizationRTT_all_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup.py ;

${install_dir}/DigitizationRTT_all_pileup.py :: ../share/jobOpts/DigitizationRTT_all_pileup.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup01_450ns_perfmon.py ;

${install_dir}/DigitizationRTT_all_pileup01_450ns_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_pileup01_450ns_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup01_450ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup01_450ns_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup01_450ns_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup01_450ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup01_450ns_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup05_75ns_perfmon.py ;

${install_dir}/DigitizationRTT_all_pileup05_75ns_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_pileup05_75ns_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup05_75ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup05_75ns_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup05_75ns_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup05_75ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup05_75ns_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup100_perfmon.py ;

${install_dir}/DigitizationRTT_all_pileup100_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_pileup100_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup100_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup100_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup100_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup100_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup100_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup10_75ns_perfmon.py ;

${install_dir}/DigitizationRTT_all_pileup10_75ns_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_pileup10_75ns_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup10_75ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup10_75ns_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup10_75ns_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup10_75ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup10_75ns_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup10_perfmon.py ;

${install_dir}/DigitizationRTT_all_pileup10_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_pileup10_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup10_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup10_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup10_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup10_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup10_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup20_25ns_perfmon.py ;

${install_dir}/DigitizationRTT_all_pileup20_25ns_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_pileup20_25ns_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup20_25ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup20_25ns_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup20_25ns_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup20_25ns_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup20_25ns_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup35_leakcheck.py ;

${install_dir}/DigitizationRTT_all_pileup35_leakcheck.py :: ../share/jobOpts/DigitizationRTT_all_pileup35_leakcheck.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup35_leakcheck.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup35_leakcheck.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup35_leakcheck.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup35_leakcheck.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup35_leakcheck.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_all_pileup35_perfmon.py ;

${install_dir}/DigitizationRTT_all_pileup35_perfmon.py :: ../share/jobOpts/DigitizationRTT_all_pileup35_perfmon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup35_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_all_pileup35_perfmon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_all_pileup35_perfmon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_all_pileup35_perfmon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_all_pileup35_perfmon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_bcm.py ;

${install_dir}/DigitizationRTT_bcm.py :: ../share/jobOpts/DigitizationRTT_bcm.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_bcm.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_bcm.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_bcm.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_bcm.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_bcm.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_calo.py ;

${install_dir}/DigitizationRTT_calo.py :: ../share/jobOpts/DigitizationRTT_calo.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_calo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_calo.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_calo.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_calo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_calo.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_calo_noLVL1.py ;

${install_dir}/DigitizationRTT_calo_noLVL1.py :: ../share/jobOpts/DigitizationRTT_calo_noLVL1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_calo_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_calo_noLVL1.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_calo_noLVL1.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_calo_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_calo_noLVL1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_csc.py ;

${install_dir}/DigitizationRTT_csc.py :: ../share/jobOpts/DigitizationRTT_csc.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_csc.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_csc.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_csc.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_csc.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_csc.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_id.py ;

${install_dir}/DigitizationRTT_id.py :: ../share/jobOpts/DigitizationRTT_id.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_id.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_id.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_id.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_id.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_id.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_id_noLVL1.py ;

${install_dir}/DigitizationRTT_id_noLVL1.py :: ../share/jobOpts/DigitizationRTT_id_noLVL1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_id_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_id_noLVL1.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_id_noLVL1.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_id_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_id_noLVL1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_lar.py ;

${install_dir}/DigitizationRTT_lar.py :: ../share/jobOpts/DigitizationRTT_lar.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_lar.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_lar.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_lar.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_lar.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_lar.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_mdt.py ;

${install_dir}/DigitizationRTT_mdt.py :: ../share/jobOpts/DigitizationRTT_mdt.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_mdt.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_mdt.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_mdt.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_mdt.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_mdt.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_muon.py ;

${install_dir}/DigitizationRTT_muon.py :: ../share/jobOpts/DigitizationRTT_muon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_muon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_muon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_muon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_muon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_muon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_muon_noLVL1.py ;

${install_dir}/DigitizationRTT_muon_noLVL1.py :: ../share/jobOpts/DigitizationRTT_muon_noLVL1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_muon_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_muon_noLVL1.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_muon_noLVL1.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_muon_noLVL1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_muon_noLVL1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_noNoise.py ;

${install_dir}/DigitizationRTT_noNoise.py :: ../share/jobOpts/DigitizationRTT_noNoise.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_noNoise.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_noNoise.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_noNoise.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_noNoise.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_noNoise.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_pixels.py ;

${install_dir}/DigitizationRTT_pixels.py :: ../share/jobOpts/DigitizationRTT_pixels.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_pixels.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_pixels.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_pixels.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_pixels.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_pixels.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_rndm_Split_1.py ;

${install_dir}/DigitizationRTT_rndm_Split_1.py :: ../share/jobOpts/DigitizationRTT_rndm_Split_1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rndm_Split_1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_rndm_Split_1.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_rndm_Split_1.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rndm_Split_1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_rndm_Split_1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_rndm_Split_2.py ;

${install_dir}/DigitizationRTT_rndm_Split_2.py :: ../share/jobOpts/DigitizationRTT_rndm_Split_2.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rndm_Split_2.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_rndm_Split_2.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_rndm_Split_2.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rndm_Split_2.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_rndm_Split_2.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_rndm_Unsplit.py ;

${install_dir}/DigitizationRTT_rndm_Unsplit.py :: ../share/jobOpts/DigitizationRTT_rndm_Unsplit.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rndm_Unsplit.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_rndm_Unsplit.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_rndm_Unsplit.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rndm_Unsplit.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_rndm_Unsplit.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_rpc.py ;

${install_dir}/DigitizationRTT_rpc.py :: ../share/jobOpts/DigitizationRTT_rpc.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rpc.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_rpc.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_rpc.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_rpc.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_rpc.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_sct.py ;

${install_dir}/DigitizationRTT_sct.py :: ../share/jobOpts/DigitizationRTT_sct.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_sct.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_sct.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_sct.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_sct.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_sct.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_tgc.py ;

${install_dir}/DigitizationRTT_tgc.py :: ../share/jobOpts/DigitizationRTT_tgc.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_tgc.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_tgc.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_tgc.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_tgc.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_tgc.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_tile.py ;

${install_dir}/DigitizationRTT_tile.py :: ../share/jobOpts/DigitizationRTT_tile.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_tile.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_tile.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_tile.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_tile.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_tile.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_trt.py ;

${install_dir}/DigitizationRTT_trt.py :: ../share/jobOpts/DigitizationRTT_trt.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_trt.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_trt.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_trt.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_trt.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_trt.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/DigitizationRTT_truth.py ;

${install_dir}/DigitizationRTT_truth.py :: ../share/jobOpts/DigitizationRTT_truth.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_truth.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DigitizationRTT_truth.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/DigitizationRTT_truth.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/DigitizationRTT_truth.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DigitizationRTT_truth.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ForceUseOfAlgorithms.py ;

${install_dir}/ForceUseOfAlgorithms.py :: ../share/jobOpts/ForceUseOfAlgorithms.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/ForceUseOfAlgorithms.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ForceUseOfAlgorithms.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/ForceUseOfAlgorithms.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/ForceUseOfAlgorithms.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ForceUseOfAlgorithms.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ForceUseOfPileUpTools.py ;

${install_dir}/ForceUseOfPileUpTools.py :: ../share/jobOpts/ForceUseOfPileUpTools.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/ForceUseOfPileUpTools.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ForceUseOfPileUpTools.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/ForceUseOfPileUpTools.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/ForceUseOfPileUpTools.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ForceUseOfPileUpTools.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC08PileUpLumi1.0E34_50ns.py ;

${install_dir}/MC08PileUpLumi1.0E34_50ns.py :: ../share/jobOpts/MC08PileUpLumi1.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC08PileUpLumi1.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC08PileUpLumi1.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC08PileUpLumi1.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC08PileUpLumi1.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC08PileUpLumi1.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi0.0_50ns.py ;

${install_dir}/MC09PileUpLumi0.0_50ns.py :: ../share/jobOpts/MC09PileUpLumi0.0_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi0.0_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi0.0_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi0.0_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi0.0_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi0.0_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi0.5E34_50ns.py ;

${install_dir}/MC09PileUpLumi0.5E34_50ns.py :: ../share/jobOpts/MC09PileUpLumi0.5E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi0.5E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi0.5E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi0.5E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi0.5E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi0.5E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi1.0E33_25ns.py ;

${install_dir}/MC09PileUpLumi1.0E33_25ns.py :: ../share/jobOpts/MC09PileUpLumi1.0E33_25ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi1.0E33_25ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi1.0E33_25ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi1.0E33_25ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi1.0E33_25ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi1.0E33_25ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi1.0E34_50ns.py ;

${install_dir}/MC09PileUpLumi1.0E34_50ns.py :: ../share/jobOpts/MC09PileUpLumi1.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi1.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi1.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi1.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi1.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi1.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi2.0E34_50ns.py ;

${install_dir}/MC09PileUpLumi2.0E34_50ns.py :: ../share/jobOpts/MC09PileUpLumi2.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi2.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi2.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi2.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi2.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi2.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi3.0E34_50ns.py ;

${install_dir}/MC09PileUpLumi3.0E34_50ns.py :: ../share/jobOpts/MC09PileUpLumi3.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi3.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi3.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi3.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi3.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi3.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi3.5E33_25ns.py ;

${install_dir}/MC09PileUpLumi3.5E33_25ns.py :: ../share/jobOpts/MC09PileUpLumi3.5E33_25ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi3.5E33_25ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi3.5E33_25ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi3.5E33_25ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi3.5E33_25ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi3.5E33_25ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi4.0E34_50ns.py ;

${install_dir}/MC09PileUpLumi4.0E34_50ns.py :: ../share/jobOpts/MC09PileUpLumi4.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi4.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi4.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi4.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi4.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi4.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC09PileUpLumi5.0E34_50ns.py ;

${install_dir}/MC09PileUpLumi5.0E34_50ns.py :: ../share/jobOpts/MC09PileUpLumi5.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi5.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC09PileUpLumi5.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC09PileUpLumi5.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC09PileUpLumi5.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC09PileUpLumi5.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC10PileUpLumi0.0_50ns.py ;

${install_dir}/MC10PileUpLumi0.0_50ns.py :: ../share/jobOpts/MC10PileUpLumi0.0_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi0.0_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC10PileUpLumi0.0_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC10PileUpLumi0.0_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi0.0_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC10PileUpLumi0.0_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC10PileUpLumi0.5E34_50ns.py ;

${install_dir}/MC10PileUpLumi0.5E34_50ns.py :: ../share/jobOpts/MC10PileUpLumi0.5E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi0.5E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC10PileUpLumi0.5E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC10PileUpLumi0.5E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi0.5E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC10PileUpLumi0.5E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC10PileUpLumi1.0E34_50ns.py ;

${install_dir}/MC10PileUpLumi1.0E34_50ns.py :: ../share/jobOpts/MC10PileUpLumi1.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi1.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC10PileUpLumi1.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC10PileUpLumi1.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi1.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC10PileUpLumi1.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ReadRDOs.py ;

${install_dir}/ReadRDOs.py :: ../share/jobOpts/ReadRDOs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/ReadRDOs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ReadRDOs.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/ReadRDOs.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/ReadRDOs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ReadRDOs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC10PileUpLumi2.0E34_50ns.py ;

${install_dir}/MC10PileUpLumi2.0E34_50ns.py :: ../share/jobOpts/MC10PileUpLumi2.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi2.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC10PileUpLumi2.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC10PileUpLumi2.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi2.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC10PileUpLumi2.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC10PileUpLumi3.0E34_50ns.py ;

${install_dir}/MC10PileUpLumi3.0E34_50ns.py :: ../share/jobOpts/MC10PileUpLumi3.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi3.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC10PileUpLumi3.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC10PileUpLumi3.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi3.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC10PileUpLumi3.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC10PileUpLumi4.0E34_50ns.py ;

${install_dir}/MC10PileUpLumi4.0E34_50ns.py :: ../share/jobOpts/MC10PileUpLumi4.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi4.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC10PileUpLumi4.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC10PileUpLumi4.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi4.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC10PileUpLumi4.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/MC10PileUpLumi5.0E34_50ns.py ;

${install_dir}/MC10PileUpLumi5.0E34_50ns.py :: ../share/jobOpts/MC10PileUpLumi5.0E34_50ns.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi5.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC10PileUpLumi5.0E34_50ns.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/MC10PileUpLumi5.0E34_50ns.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/MC10PileUpLumi5.0E34_50ns.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC10PileUpLumi5.0E34_50ns.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/NightlyPileUp.py ;

${install_dir}/NightlyPileUp.py :: ../share/jobOpts/NightlyPileUp.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/NightlyPileUp.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "NightlyPileUp.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/NightlyPileUp.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/NightlyPileUp.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "NightlyPileUp.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/cavernfiles.py ;

${install_dir}/cavernfiles.py :: ../share/jobOpts/cavernfiles.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/cavernfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "cavernfiles.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/cavernfiles.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/cavernfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "cavernfiles.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/mc09cavernfiles.py ;

${install_dir}/mc09cavernfiles.py :: ../share/jobOpts/mc09cavernfiles.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc09cavernfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "mc09cavernfiles.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/mc09cavernfiles.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc09cavernfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "mc09cavernfiles.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/mc09minbiasfiles.py ;

${install_dir}/mc09minbiasfiles.py :: ../share/jobOpts/mc09minbiasfiles.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc09minbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "mc09minbiasfiles.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/mc09minbiasfiles.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc09minbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "mc09minbiasfiles.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/mc10Bminbiasfiles.py ;

${install_dir}/mc10Bminbiasfiles.py :: ../share/jobOpts/mc10Bminbiasfiles.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc10Bminbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "mc10Bminbiasfiles.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/mc10Bminbiasfiles.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc10Bminbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "mc10Bminbiasfiles.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/mc10cavernfiles.py ;

${install_dir}/mc10cavernfiles.py :: ../share/jobOpts/mc10cavernfiles.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc10cavernfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "mc10cavernfiles.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/mc10cavernfiles.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc10cavernfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "mc10cavernfiles.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/mc10minbiasfiles.py ;

${install_dir}/mc10minbiasfiles.py :: ../share/jobOpts/mc10minbiasfiles.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc10minbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "mc10minbiasfiles.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/mc10minbiasfiles.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/mc10minbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "mc10minbiasfiles.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/minbiasfiles.py ;

${install_dir}/minbiasfiles.py :: ../share/jobOpts/minbiasfiles.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/minbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "minbiasfiles.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.20.10/AtlasCore/20.20.10/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOpts/minbiasfiles.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOpts/minbiasfiles.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "minbiasfiles.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_joboptionsclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_joboptions.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_joboptionsclean ::
#-- end of cleanup_header ---------------
