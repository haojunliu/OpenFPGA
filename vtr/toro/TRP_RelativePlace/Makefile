######################################################################
#
# Toro VPR interface library
#
# Note: This make file is dependent on the platform-specific ISM 
#       environment variable.  ISM is platform-specific and is used 
#       to determine various build switches and directories.
#
#       This make file currently supports:
#       - setenv ISM linux_x86_64
#       - setenv ISM linux_i686
#       - setenv ISM sun8
#
######################################################################

######################################################################
# Compiler options
######################################################################

pC++linux_x86_64 = /usr/bin/gcc
pC++linux_i686 = /usr/bin/gcc
pC++sun8 = /apps/SUNWspro_6.0-U2/bin/CC
pC++ = $(pC++$(ISM))

PIClinux_x86_64 = -shared
PIClinux_i686 = -shared
PICsun8 = -G -KPIC
PIC = $(PIC$(ISM))

CFLAGSlinux_x86_64 = -Wall -Wpointer-arith -Wcast-qual -static -fPIC -DLINUX_X86_64
CFLAGSlinux_i686 = -Wall -Wpointer-arith -Wcast-qual -static -fPIC -DLINUX_I686
CFLAGSsun8 = +w -xarch=v9 -library=iostream,Cstd -DLP64 -DSUN8
CFLAGS = $(CFLAGS$(ISM)) \
	-DPLACEMENT_REGIONS_ENABLE \
	-DPLACEMENT_RELATIVE_ENABLE \
	-I. \
	-I../TLO_LogicalObjects \
	-I../TPO_PhysicalObjects \
	-I../TGS_GeometricShapes \
	-I../TGO_GeometricObjects \
	-I../TIO_InputOutputHandlers \
	-I../TC_Common \
	-I../../libpcre/SRC \
	-I../../vpr/SRC/base -I../../vpr/SRC/util -I../../libarchfpga/include

######################################################################
# Linker options
######################################################################

LINKERlinux_x86_64 = /usr/bin/ld
LINKERlinux_i686 = /usr/bin/ld
LINKERsun8 = /usr/ccs/bin/ld
LINKER = $(LINKER$(ISM))

LFLAGSlinux_x86_64 = -shared
LFLAGSlinux_i686 = -shared
LFLAGSsun8 = -G -library=iostream -xarch=v9
LFLAGS = $(LFLAGS$(ISM))

######################################################################
# Program files
######################################################################

SOLlinux_x86_64 = so
SOLlinux_i686 = so
SOLsun8 = so
SOL = $(SOL$(ISM))

LIBSOlinux_x86_64 = ../linux_x86_64/$(PROG).$(SOL)
LIBSOlinux_i686 = ../linux_i686/$(PROG).$(SOL)
LIBSOsun8 = ../sun8/$(PROG).$(SOL)
LIBSO = $(LIBSO$(ISM))

OBJSlinux_x86_64 = linux_x86_64/TRP_RelativePlaceHandler.o \
                   linux_x86_64/TRP_RelativeMacro.o \
                   linux_x86_64/TRP_RelativeNode.o \
                   linux_x86_64/TRP_RelativeBlock.o \
                   linux_x86_64/TRP_RelativeMove.o \
                   linux_x86_64/TRP_RotateMaskKey.o \
                   linux_x86_64/TRP_RotateMaskValue.o 
OBJSlinux_i686 = linux_i686/TRP_RelativePlaceHandler.o \
                 linux_i686/TRP_RelativeMacro.o \
                 linux_i686/TRP_RelativeNode.o \
                 linux_i686/TRP_RelativeBlock.o \
                 linux_i686/TRP_RelativeMove.o \
                 linux_i686/TRP_RotateMaskKey.o \
                 linux_i686/TRP_RotateMaskValue.o
OBJSsun8 = sun8/TRP_RelativePlaceHandler.o \
           sun8/TRP_RelativeMacro.o \
           sun8/TRP_RelativeNode.o \
           sun8/TRP_RelativeBlock.o \
           sun8/TRP_RelativeMove.o \
           sun8/TRP_RotateMaskKey.o \
           sun8/TRP_RotateMaskValue.o
OBJECTS = $(OBJS$(ISM))

PROG = libTRP_RelativePlace
EXE = ../$(ISM)/$(PROG).a

######################################################################
# Target rules
######################################################################

BUILD_TARGET =

all:
	make Debug
Optimized:
	make $(EXE) CFLAGS="-O2 $(CFLAGS)" BUILD_TARGET=Optimized
Debug:
	make $(EXE) CFLAGS="-g -DDEBUG $(CFLAGS)" BUILD_TARGET=Debug
Gprof:
	make $(EXE) CFLAGS="-pg -g -DDEBUG $(CFLAGS)" BUILD_TARGET=Debug
clean:
	rm -rf $(ISM)/*

.cxx.o:;
.cxx.a:;

######################################################################
# Program rules
######################################################################

ARCMDlinux_x86_64 = $(LINKER) -r -o $(ISM)/$(PROG).a $(OBJECTS) ; \
	mv $(ISM)/$(PROG).a $(EXE)
ARCMDlinux_i686 = $(LINKER) -r -o $(ISM)/$(PROG).a $(OBJECTS) ; \
	mv $(ISM)/$(PROG).a $(EXE)
ARCMDsun8 = $(pC++) -xar -xarch=v9 -library=iostream -o $(ISM)/$(PROG).a $(OBJECTS) ; \
	mv $(ISM)/$(PROG).a $(EXE)
ARCMD = $(ARCMD$(ISM))
$(EXE): $(LIBSO)
	$(ARCMD)

$(LIBSOlinux_x86_64): $(OBJECTS) Makefile
	$(pC++) $(LFLAGS) -o $(ISM)/$(PROG).$(SOL) $(OBJECTS) ; \
	mv $(ISM)/$(PROG).$(SOL) $@
$(LIBSOlinux_i686): $(OBJECTS) Makefile
	$(pC++) $(LFLAGS) -o $(ISM)/$(PROG).$(SOL) $(OBJECTS) ; \
	mv $(ISM)/$(PROG).$(SOL) $@
$(LIBSOsun8): $(OBJECTS) Makefile
	$(pC++) $(LFLAGS) -o $(ISM)/$(PROG).$(SOL) $(OBJECTS) ; \
	mv $(ISM)/$(PROG).$(SOL) $@

$(OBJECTS): $(ISM)/%.o:%.cxx
	$(pC++) -o $@ -c $(@F:.o=.cxx) $(PIC) $(CFLAGS)

######################################################################
# Library rules
######################################################################

../$(ISM)/libTLO_LogicalObjects.a:
	cd ../TLO_LogicalObjects ; $(MAKE) $(BUILD_TARGET)

../$(ISM)/libTPO_PhysicalObjects.a:
	cd ../TPO_PhysicalObjects ; $(MAKE) $(BUILD_TARGET)

../$(ISM)/libTGS_GeometricShapes.a:
	cd ../TGS_GeometricShapes ; $(MAKE) $(BUILD_TARGET)

../$(ISM)/libTGO_GeometricObjects.a:
	cd ../TGO_GeometricObjects ; $(MAKE) $(BUILD_TARGET)

../$(ISM)/libTIO_InputOutputHandlers.a:
	cd ../TIO_InputOutputHandlers ; $(MAKE) $(BUILD_TARGET)

../$(ISM)/libTC_Common.a:
	cd ../TC_Common ; $(MAKE) $(BUILD_TARGET)
