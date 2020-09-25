#Generated by VPC

NAME=mathlib_extended
TARGET_PLATFORM=linux64
TARGET_PLATFORM_EXT=_client
VPC_HOST=linux

SRCROOT=..
LINUX_MAKEFILE=1
USE_VALVE_BINDIR=0
# If no configuration is specified, "release" will be used.
CFG ?= release




















################################################################################
#
# CFG=debug
#
################################################################################

ifeq "$(CFG)" "debug"

GCC_ExtraCompilerFlags=
GCC_ExtraCxxCompilerFlags=
GCC_ExtraLinkerFlags=
DisableLinkerDeadCodeElimination=
SymbolVisibility=hidden
TreatWarningsAsErrors=false
OptimizerLevel=-gdwarf-4 -g2 $(OptimizerLevel_CompilerSpecific)
PrecompiledHeaderInclude=
SystemLibraries=
DLL_EXT=_client.so
SYM_EXT=.dbg
DEVTOOLS := ../devtools
MAKEFILE_BASE := $(DEVTOOLS)/makefile_base_posix.mak
COMPILE_DEPENDANT_MAKEFILES := mathlib_extended_linux64.mak $(MAKEFILE_BASE)
FORCEINCLUDES= 
DEFINES += -DVPC -DCSTRIKE_REL_BUILD=1 -DRAD_TELEMETRY_DISABLED -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -DMEMOVERRIDE_MODULE=mathlib_extended -D_DLL_EXT=_client.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DCSTRIKE15 -DMATHLIB_EXTENDED_LIB -DSOURCE1 -D_DLL_EXT=_client.so -D_DLL_PREFIX=lib -D_EXTERNAL_DLL_EXT=.so -D_LINUX=1 -D_LINUXSTEAMRT64=1 -D_POSIX=1 -DLINUX=1 -DLINUX64=1 -DLINUXSTEAMRT64=1 -DPOSIX=1 -DPROJECTDIR=/home/lwss/Documents/cstrike15_src/mathlib -DVPCGAME=csgo -DVPCGAMECAPS=CSGO 
INCLUDEDIRS += ../common ../public ../public/tier0 ../public/tier1 ../thirdparty/SDL2 ../public/mathlib 
CONFTYPE=lib
OUTPUTFILE=../lib/public/linux64/mathlib_extended_client.a
GAMEOUTPUTFILE=

CPPFILES= \
    disjoint_set_forest.cpp \
    dynamictree.cpp \
    eigen.cpp \
    simdvectormatrix.cpp \
    femodel.cpp \
    femodelbuilder.cpp \
    feagglomerator.cpp \
    svd.cpp \
    transform.cpp \
    femodeldesc.cpp \
    softbody.cpp \
    softbodyenvironment.cpp

unexport CPPFILES

LIBFILES =

unexport LIBFILES

LIBFILENAMES =

unexport LIBFILENAMES

ALL_CUSTOM_BUILD_TOOLS =

unexport ALL_CUSTOM_BUILD_TOOLS

ALL_CUSTOM_BUILD_TOOL_DEPENDENCIES =

unexport ALL_CUSTOM_BUILD_TOOL_DEPENDENCIES

ALL_CUSTOM_BUILD_TOOL_SCRIPTS =

unexport ALL_CUSTOM_BUILD_TOOL_SCRIPTS

ALL_CUSTOM_BUILD_TOOL_OUTPUTS =

unexport ALL_CUSTOM_BUILD_TOOL_OUTPUTS

ALL_DEPGEN_FILES = \
    $(OBJ_DIR)/disjoint_set_forest.P \
    $(OBJ_DIR)/dynamictree.P \
    $(OBJ_DIR)/eigen.P \
    $(OBJ_DIR)/simdvectormatrix.P \
    $(OBJ_DIR)/femodel.P \
    $(OBJ_DIR)/femodelbuilder.P \
    $(OBJ_DIR)/feagglomerator.P \
    $(OBJ_DIR)/svd.P \
    $(OBJ_DIR)/transform.P \
    $(OBJ_DIR)/femodeldesc.P \
    $(OBJ_DIR)/softbody.P \
    $(OBJ_DIR)/softbodyenvironment.P

unexport ALL_DEPGEN_FILES


#
# Include the base makefile now.
#
include $(MAKEFILE_BASE)


#
# Create sentinel directories
#
$(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/_vpc_create_dirs: mathlib_extended_linux64.mak | $(OBJ_DIR)/_create_dir
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) create custom build tools dir start
	$(QUIET_PREFIX) $(MKDIR) -p $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/locks $(QUIET_ECHO_POSTFIX)
	$(QUIET_PREFIX) $(MKDIR) -p $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/ranthisbuild $(QUIET_ECHO_POSTFIX)
	$(QUIET_PREFIX) $(MKDIR) -p $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/sentinels $(QUIET_ECHO_POSTFIX)
	$(QUIET_PREFIX) $(TOUCH) $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/_vpc_create_dirs


#
# include all the depgen .P files which will include dependency information.
#
include $(wildcard $(OBJ_DIR)/disjoint_set_forest.P)
include $(wildcard $(OBJ_DIR)/dynamictree.P)
include $(wildcard $(OBJ_DIR)/eigen.P)
include $(wildcard $(OBJ_DIR)/simdvectormatrix.P)
include $(wildcard $(OBJ_DIR)/femodel.P)
include $(wildcard $(OBJ_DIR)/femodelbuilder.P)
include $(wildcard $(OBJ_DIR)/feagglomerator.P)
include $(wildcard $(OBJ_DIR)/svd.P)
include $(wildcard $(OBJ_DIR)/transform.P)
include $(wildcard $(OBJ_DIR)/femodeldesc.P)
include $(wildcard $(OBJ_DIR)/softbody.P)
include $(wildcard $(OBJ_DIR)/softbodyenvironment.P)


#
# Compare/cache a string of compile settings to see if we need to recompile .o's
#
$(eval $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS,COMPILE_O_GLOBAL_SETTINGS,$$(call COMPILE_O_SETTINGS,$$(CFG_CPPFLAGS))))


#
# Compile rules
#
$(OBJ_DIR)/disjoint_set_forest.o: disjoint_set_forest.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/disjoint_set_forest.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/disjoint_set_forest.o

$(OBJ_DIR)/dynamictree.o: dynamictree.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/dynamictree.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/dynamictree.o

$(OBJ_DIR)/eigen.o: eigen.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/eigen.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/eigen.o

$(OBJ_DIR)/simdvectormatrix.o: simdvectormatrix.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/simdvectormatrix.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/simdvectormatrix.o

$(OBJ_DIR)/femodel.o: femodel.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/femodel.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/femodel.o

$(OBJ_DIR)/femodelbuilder.o: femodelbuilder.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/femodelbuilder.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/femodelbuilder.o

$(OBJ_DIR)/feagglomerator.o: feagglomerator.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/feagglomerator.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/feagglomerator.o

$(OBJ_DIR)/svd.o: svd.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/svd.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/svd.o

$(OBJ_DIR)/transform.o: transform.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/transform.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/transform.o

$(OBJ_DIR)/femodeldesc.o: femodeldesc.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/femodeldesc.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/femodeldesc.o

$(OBJ_DIR)/softbody.o: softbody.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/softbody.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/softbody.o

$(OBJ_DIR)/softbodyenvironment.o: softbodyenvironment.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/softbodyenvironment.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/softbodyenvironment.o

endif # (CFG=debug)




















################################################################################
#
# CFG=release
#
################################################################################

ifeq "$(CFG)" "release"

GCC_ExtraCompilerFlags=
GCC_ExtraCxxCompilerFlags=
GCC_ExtraLinkerFlags=
DisableLinkerDeadCodeElimination=
SymbolVisibility=hidden
TreatWarningsAsErrors=false
OptimizerLevel=-gdwarf-4 -g2 $(OptimizerLevel_CompilerSpecific)
PrecompiledHeaderInclude=
SystemLibraries=
DLL_EXT=_client.so
SYM_EXT=.dbg
DEVTOOLS := ../devtools
MAKEFILE_BASE := $(DEVTOOLS)/makefile_base_posix.mak
COMPILE_DEPENDANT_MAKEFILES := mathlib_extended_linux64.mak $(MAKEFILE_BASE)
FORCEINCLUDES= 
DEFINES += -DVPC -DCSTRIKE_REL_BUILD=1 -DRAD_TELEMETRY_DISABLED -DNDEBUG -D_GLIBCXX_USE_CXX11_ABI=0 -DGNUC -DPOSIX -DCOMPILER_GCC -DMEMOVERRIDE_MODULE=mathlib_extended -D_DLL_EXT=_client.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DCSTRIKE15 -DMATHLIB_EXTENDED_LIB -DSOURCE1 -D_DLL_EXT=_client.so -D_DLL_PREFIX=lib -D_EXTERNAL_DLL_EXT=.so -D_LINUX=1 -D_LINUXSTEAMRT64=1 -D_POSIX=1 -DLINUX=1 -DLINUX64=1 -DLINUXSTEAMRT64=1 -DPOSIX=1 -DPROJECTDIR=/home/lwss/Documents/cstrike15_src/mathlib -DVPCGAME=csgo -DVPCGAMECAPS=CSGO 
INCLUDEDIRS += ../common ../public ../public/tier0 ../public/tier1 ../thirdparty/SDL2 ../public/mathlib 
CONFTYPE=lib
OUTPUTFILE=../lib/public/linux64/mathlib_extended_client.a
GAMEOUTPUTFILE=

CPPFILES= \
    disjoint_set_forest.cpp \
    dynamictree.cpp \
    eigen.cpp \
    simdvectormatrix.cpp \
    femodel.cpp \
    femodelbuilder.cpp \
    feagglomerator.cpp \
    svd.cpp \
    transform.cpp \
    femodeldesc.cpp \
    softbody.cpp \
    softbodyenvironment.cpp

unexport CPPFILES

LIBFILES =

unexport LIBFILES

LIBFILENAMES =

unexport LIBFILENAMES

ALL_CUSTOM_BUILD_TOOLS =

unexport ALL_CUSTOM_BUILD_TOOLS

ALL_CUSTOM_BUILD_TOOL_DEPENDENCIES =

unexport ALL_CUSTOM_BUILD_TOOL_DEPENDENCIES

ALL_CUSTOM_BUILD_TOOL_SCRIPTS =

unexport ALL_CUSTOM_BUILD_TOOL_SCRIPTS

ALL_CUSTOM_BUILD_TOOL_OUTPUTS =

unexport ALL_CUSTOM_BUILD_TOOL_OUTPUTS

ALL_DEPGEN_FILES = \
    $(OBJ_DIR)/disjoint_set_forest.P \
    $(OBJ_DIR)/dynamictree.P \
    $(OBJ_DIR)/eigen.P \
    $(OBJ_DIR)/simdvectormatrix.P \
    $(OBJ_DIR)/femodel.P \
    $(OBJ_DIR)/femodelbuilder.P \
    $(OBJ_DIR)/feagglomerator.P \
    $(OBJ_DIR)/svd.P \
    $(OBJ_DIR)/transform.P \
    $(OBJ_DIR)/femodeldesc.P \
    $(OBJ_DIR)/softbody.P \
    $(OBJ_DIR)/softbodyenvironment.P

unexport ALL_DEPGEN_FILES


#
# Include the base makefile now.
#
include $(MAKEFILE_BASE)


#
# Create sentinel directories
#
$(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/_vpc_create_dirs: mathlib_extended_linux64.mak | $(OBJ_DIR)/_create_dir
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) create custom build tools dir start
	$(QUIET_PREFIX) $(MKDIR) -p $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/locks $(QUIET_ECHO_POSTFIX)
	$(QUIET_PREFIX) $(MKDIR) -p $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/ranthisbuild $(QUIET_ECHO_POSTFIX)
	$(QUIET_PREFIX) $(MKDIR) -p $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/sentinels $(QUIET_ECHO_POSTFIX)
	$(QUIET_PREFIX) $(TOUCH) $(OBJ_DIR)/_vpc_generated_scripts/custom_build_tools/_vpc_create_dirs


#
# include all the depgen .P files which will include dependency information.
#
include $(wildcard $(OBJ_DIR)/disjoint_set_forest.P)
include $(wildcard $(OBJ_DIR)/dynamictree.P)
include $(wildcard $(OBJ_DIR)/eigen.P)
include $(wildcard $(OBJ_DIR)/simdvectormatrix.P)
include $(wildcard $(OBJ_DIR)/femodel.P)
include $(wildcard $(OBJ_DIR)/femodelbuilder.P)
include $(wildcard $(OBJ_DIR)/feagglomerator.P)
include $(wildcard $(OBJ_DIR)/svd.P)
include $(wildcard $(OBJ_DIR)/transform.P)
include $(wildcard $(OBJ_DIR)/femodeldesc.P)
include $(wildcard $(OBJ_DIR)/softbody.P)
include $(wildcard $(OBJ_DIR)/softbodyenvironment.P)


#
# Compare/cache a string of compile settings to see if we need to recompile .o's
#
$(eval $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS,COMPILE_O_GLOBAL_SETTINGS,$$(call COMPILE_O_SETTINGS,$$(CFG_CPPFLAGS))))


#
# Compile rules
#
$(OBJ_DIR)/disjoint_set_forest.o: disjoint_set_forest.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/disjoint_set_forest.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/disjoint_set_forest.o

$(OBJ_DIR)/dynamictree.o: dynamictree.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/dynamictree.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/dynamictree.o

$(OBJ_DIR)/eigen.o: eigen.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/eigen.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/eigen.o

$(OBJ_DIR)/simdvectormatrix.o: simdvectormatrix.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/simdvectormatrix.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/simdvectormatrix.o

$(OBJ_DIR)/femodel.o: femodel.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/femodel.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/femodel.o

$(OBJ_DIR)/femodelbuilder.o: femodelbuilder.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/femodelbuilder.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/femodelbuilder.o

$(OBJ_DIR)/feagglomerator.o: feagglomerator.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/feagglomerator.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/feagglomerator.o

$(OBJ_DIR)/svd.o: svd.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/svd.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/svd.o

$(OBJ_DIR)/transform.o: transform.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/transform.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/transform.o

$(OBJ_DIR)/femodeldesc.o: femodeldesc.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/femodeldesc.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/femodeldesc.o

$(OBJ_DIR)/softbody.o: softbody.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/softbody.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/softbody.o

$(OBJ_DIR)/softbodyenvironment.o: softbodyenvironment.cpp $(call DETECT_STRING_CHANGE_BETWEEN_BUILDS_TIMESTAMP_FILE,COMPILE_O_GLOBAL_SETTINGS) | _precompile_steps
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile start for file $(OBJ_DIR)/softbodyenvironment.o
	$(QUIET_PREFIX) $(call SPEW_UPDATED_DEPENDENCIES)
	$(QUIET_PREFIX) $(call RUN_PREBUILD_EVENT_ONCE)
	$(PRE_COMPILE_FILE)
	$(QUIET_PREFIX) $(MKDIR) -p "$(dir $@)"
	$(call COMPILE_FILE, $(CFG_CPPFLAGS)) $(POST_COMPILE_FILE)
	$(QUIET_PREFIX) $(BUILD_DEBUG_ECHO) COMPILE_FILE compile end for file $(OBJ_DIR)/softbodyenvironment.o

endif # (CFG=release)