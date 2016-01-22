CPPFLAGS = -O2
CPP = g++
 
all: emulator


#choose between 32b anad 64b binaries and using proxy-kernel or not
RV64_MODE?="false"
SUPERVISOR_MODE?="false"
 

common=../common
install=../../install

FESVR=$(install)/bin/fesvr
ifeq ($(RV64_MODE),"false")
RISCV_PK=$(install)riscv-pk32/bin/riscv-pk
else
RISCV_PK=$(install)riscv-pk64/bin/riscv-pk
endif

$(FESVR): 
	make -C ../../ riscv-fesvr/build/fesvr

#assume no riscv-gcc installed, so don't try to build riscv-pk
$(RISCV_PK): 
	echo ""
#	make -C ../../ $(RISCV_PK)


# Allow us to use different Tracer modules for each processor
TRACERPATH?=$(common)
TRACER?=tracer
 
emulator.o: emulator.cpp generated-src/Top.h ./*.c*
	$(CPP) -c $(CPPFLAGS) emulator.cpp -I$(common) -I./generated-src 

Top.o: ./generated-src/Top.cpp ./generated-src/Top.h
	$(CPP) -c $(CPPFLAGS) ./generated-src/Top.cpp -I$(common) -I./generated-src 

disasm.o: $(common)/disasm.h $(common)/disasm.cc
	$(CPP) -c $(CPPFLAGS) $(common)/disasm.cc -I$(common)

$(TRACER).o: $(TRACERPATH)/$(TRACER).h $(TRACERPATH)/$(TRACER).cpp
	$(CPP) -c $(CPPFLAGS) $(TRACERPATH)/$(TRACER).cpp -I$(common) -I./generated-src 

emulator: emulator.o Top.o $(TRACER).o disasm.o
	$(CPP) -g -o emulator Top.o emulator.o $(TRACER).o disasm.o

clean:
	rm -f *.o emulator $(common)/*.o ./generated-src/timestamp *.out *.vcd *.vpd 

#--------------------------------------------------------------------
# Tests
#--------------------------------------------------------------------

basedir=.

# Globally installed assembly tests
ifeq ($(RV64_MODE),"false")
	global_tstdir = $(install)/riscv-tests32
	global_asm_tests += \
		riscv_example \
		riscv-v1_addi \
		riscv-v1_bne \
		riscv-v1_simple \
		riscv-v1_sw \
		riscv-v2_addi \
		riscv-v2_add \
		riscv-v2_and \
		riscv-v2_andi \
		riscv-v2_beq \
		riscv-v2_bge \
		riscv-v2_bgeu \
		riscv-v2_blt \
		riscv-v2_bltu \
		riscv-v2_bne \
		riscv-v2_j \
		riscv-v2_jal \
		riscv-v2_jalr  \
		riscv-v2_lui \
		riscv-v2_lw \
		riscv-v2_or \
		riscv-v2_ori \
		riscv-v2_simple \
		riscv-v2_slt \
		riscv-v2_sltu \
		riscv-v2_slti \
		riscv-v2_sltiu \
		riscv-v2_slli \
		riscv-v2_sll \
		riscv-v2_srli \
		riscv-v2_srl \
		riscv-v2_sub \
		riscv-v2_sw \
		riscv-v2_xor \
		riscv-v2_xori \

else
	global_tstdir = $(install)/riscv-tests64
	global_asm_tests += \
		riscv_simple \
		riscv_example \
		riscv_fence_i \
		riscv_addi \
		riscv_add \
		riscv_addiw \
		riscv_addw \
		riscv_and \
		riscv_andi \
		riscv_beq \
		riscv_bge \
		riscv_bgeu \
		riscv_blt \
		riscv_bltu \
		riscv_bne \
		riscv_j \
		riscv_jal \
		riscv_jalr \
		riscv_jalr_r \
		riscv_jalr_j \
		riscv_lui \
		riscv_lb \
		riscv_lbu \
		riscv_lh \
		riscv_lhu \
		riscv_lw \
		riscv_lwu \
		riscv_ld \
		riscv_or \
		riscv_ori \
		riscv_rdnpc \
		riscv_slt \
		riscv_sltu \
		riscv_slti \
		riscv_sltiu \
		riscv_slli \
		riscv_sll \
		riscv_slliw \
		riscv_sllw \
		riscv_srai \
		riscv_sra \
		riscv_sraiw \
		riscv_sraw \
		riscv_srli \
		riscv_srl \
		riscv_srliw \
		riscv_srlw \
		riscv_sub \
		riscv_subw \
		riscv_sb \
		riscv_sh \
		riscv_sw \
		riscv_sd \
		riscv_xor \
		riscv_xori \
		riscv_mul \
		riscv_mulw \
		riscv_mulh \
		riscv_mulhu \
		riscv_mulhsu \


endif

# Local assembly tests
ifeq ($(RV64_MODE),"false")
	local_tstdir = ../../test/riscv-tests32
else
	local_tstdir = ../../test/riscv-tests64
endif


local_asm_tests := \
	$(local_asm_tests)
	#append any tests set by individual processors

# taken out, b/c of bug with v1 being built at 0x2000, which is too big for LW
# offsets without using LUI
#	riscv-v1_lw \

# Globally installed benchmarks
global_bmarkdir = $(install)/riscv-bmarks
global_bmarks = \
	median \
	mix_manufacturing \
	multiply \
	qsort \
	towers \
	vvadd \

# Local benchmarks
local_bmarkdir = ../../test/riscv-bmarks
local_bmarks = \


#--------------------------------------------------------------------
# Run assembly tests and benchmarks
#--------------------------------------------------------------------

global_asm_tests_out = $(addsuffix .out, $(global_asm_tests))
local_asm_tests_out = $(addsuffix .out, $(local_asm_tests))
global_bmarks_out = $(addsuffix .riscv.out, $(global_bmarks))
local_bmarks_out = $(addsuffix .riscv.out, $(local_bmarks))
global_bmarks_outgz = $(addsuffix .riscv.out.gz, $(global_bmarks))
local_bmarks_outgz = $(addsuffix .riscv.out.gz, $(local_bmarks))


asm_test_timeout ?=5000
bmark_timeout ?=100000

# allow some processors to override testmod when running benchmarks
ifeq ($(SUPERVISOR_MODE),"false")
RUN_OPTS=-testrun
PK_PATH=
else
RUN_OPTS=
ifeq ($(RV64_MODE),"false")
PK_PATH=PATH=$(install)/riscv-pk32/bin:$(PATH);
else
PK_PATH=PATH=$(install)/riscv-pk64/bin:$(PATH);
endif
endif

#assume no riscv-gcc installed, so don't try to build binaries
$(local_bmarkdir)/$(local_bmarks):
	echo ""
#	cd ../../test/riscv-bmarks/; make; make run;
		
$(local_tstdir)/$(local_asm_tests):
	echo ""
#	cd ../../test/riscv-tests/; make; make run;


$(global_asm_tests_out): %.out: emulator $(FESVR)
	-$(FESVR) -c -testrun -m$(asm_test_timeout) -vcpu.vcd +loadmem=$(global_tstdir)/$*.hex none 2> $@ 
#	-$(FESVR) -c -testrun -m$(asm_test_timeout) -l +loadmem=$(global_tstdir)/$*.hex none 2> $@ 

$(local_asm_tests_out): %.out: emulator $(FESVR)
	-$(FESVR) -c -testrun -m$(asm_test_timeout) +loadmem=$(local_tstdir)/$*.hex none 2> $@ 
#	-$(FESVR) -c -testrun -m$(asm_test_timeout) -l -vcpu.vcd +loadmem=$(local_tstdir)/$*.hex none 2> $@ 



filetype=rv32u.hex
ifeq ($(SUPERVISOR_MODE),"true")
ifeq ($(RV64_MODE),"false")
	filetype=rv32s
else
	filetype=rv64s
endif
endif

ifeq ($(SUPERVISOR_MODE),"false")
 
$(global_bmarks_out): %.riscv.out: emulator $(FESVR)
	-$(FESVR) -c $(RUN_OPTS) -m$(bmark_timeout) +loadmem=$(global_bmarkdir)/$*.$(filetype) none 2> $@

$(local_bmarks_out): %.riscv.out: emulator $(FESVR)
	-$(FESVR) -c $(RUN_OPTS) -m$(bmark_timeout) +loadmem=$(local_bmarkdir)/$*.$(filetype) none 2> $@
    
else                                                   

$(global_bmarks_out): %.riscv.out: emulator $(FESVR)
	-$(PK_PATH) $(FESVR) -c $(RUN_OPTS) -m$(bmark_timeout) $(global_bmarkdir)/$*.$(filetype) 2> $@
#	-$(PK_PATH) $(FESVR) -c $(RUN_OPTS) -vcpu.vcd -m$(bmark_timeout) $(global_bmarkdir)/$*.$(filetype) 2> $@
#	-$(PK_PATH) $(FESVR) -c $(RUN_OPTS) -oregdump.txt -m$(bmark_timeout) $(global_bmarkdir)/$*.$(filetype) 2> $@

$(local_bmarks_out): %.riscv.out: emulator $(FESVR)
	-$(PK_PATH) $(FESVR) -c $(RUN_OPTS) -m$(bmark_timeout) $(local_bmarkdir)/$*.$(filetype) 2> $@
                                                       

$(global_bmarks_outgz): %.riscv.out.gz: emulator $(FESVR)
	-$(PK_PATH) $(FESVR) -c $(RUN_OPTS) -l -m$(bmark_timeout) $(global_bmarkdir)/$*.$(filetype) 2>&1 | gzip > $@
#	-$(PK_PATH) $(FESVR) -c $(RUN_OPTS) -vcpu.vcd -l -m$(bmark_timeout) $(global_bmarkdir)/$*.$(filetype) 2>&1 | gzip > $@

$(local_bmarks_outgz): %.riscv.out.gz: emulator $(FESVR)
	-$(PK_PATH) $(FESVR) -c $(RUN_OPTS) -m$(bmark_timeout) $(local_bmarkdir)/$*.$(filetype) 2>&1 | gzip > $@

endif


run-asm-tests: $(global_asm_tests_out) $(local_asm_tests_out)
	@echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
          $(global_asm_tests_out) $(local_asm_tests_out); echo;

# Use the out.gz version if you want to print out the benchmarks to log files (-l)... except the logfiles are so big, it's best to zip them up.
#run-bmarks: $(global_bmarks_outgz) $(local_bmarks_outgz)
run-bmarks: $(global_bmarks_out) $(local_bmarks_out)
	@echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(global_bmarks_out) $(local_bmarks_out); echo;

vpd:
	vcd2vpd cpu.vcd cpu.vpd


run: run-asm-tests run-bmarks

clean-tests:
	rm -f *.out
