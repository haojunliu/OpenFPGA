#=======================================================================
# UCB VLSI FLOW: Makefile for local riscv-tests 
#-----------------------------------------------------------------------
# Yunsup Lee (yunsup@cs.berkeley.edu)
#

default: all

basedir = ../../
instbasedir = $(basedir)/install
instname=riscv-tests64

#--------------------------------------------------------------------
# Sources
#--------------------------------------------------------------------

# turn off ability to compile and run tests,
# since I'm assuming the user doesn't have 
# the full tool-chain installed.
asm_tests = \
	riscv_simple.S \
	riscv_example.S \
	riscv_fence_i.S \
	riscv_addi.S \
	riscv_add.S \
	riscv_addiw.S \
	riscv_addw.S \
	riscv_and.S \
	riscv_andi.S \
	riscv_beq.S \
	riscv_bge.S \
	riscv_bgeu.S \
	riscv_blt.S \
	riscv_bltu.S \
	riscv_bne.S \
	riscv_j.S \
	riscv_jal.S \
	riscv_jalr.S \
	riscv_jalr_r.S \
	riscv_jalr_j.S \
	riscv_lui.S \
	riscv_lb.S \
	riscv_lbu.S \
	riscv_lh.S \
	riscv_lhu.S \
	riscv_lw.S \
	riscv_lwu.S \
	riscv_ld.S \
	riscv_or.S \
	riscv_ori.S \
	riscv_rdnpc.S \
	riscv_slt.S \
	riscv_sltu.S \
	riscv_slti.S \
	riscv_sltiu.S \
	riscv_slli.S \
	riscv_sll.S \
	riscv_slliw.S \
	riscv_sllw.S \
	riscv_srai.S \
	riscv_sra.S \
	riscv_sraiw.S \
	riscv_sraw.S \
	riscv_srli.S \
	riscv_srl.S \
	riscv_srliw.S \
	riscv_srlw.S \
	riscv_sub.S \
	riscv_subw.S \
	riscv_sb.S \
	riscv_sh.S \
	riscv_sw.S \
	riscv_sd.S \
	riscv_xor.S \
	riscv_xori.S \
	
	
#	riscv_mul.S \
	riscv_mulw.S \
	riscv_mulh.S \
	riscv_mulhu.S \
	riscv_mulhsu.S \
	riscv_div.S \
	riscv_divw.S \
	riscv_divu.S \
	riscv_divuw.S \
	riscv_rem.S \
	riscv_remw.S \
	riscv_remu.S \
	riscv_remuw.S \

#	riscv_ipi.S \
	riscv_fp_ldst.S \
	riscv_fsgnj.S \
	riscv_fadd.S \
	riscv_fmin.S \
	riscv_fmadd.S \
	riscv_fcvt_w.S \
	riscv_fcvt.S \
	riscv_fcmp.S \
	riscv_amoadd_w.S \
	riscv_amoadd_d.S \
	riscv_amoswap_w.S \
	riscv_amoswap_d.S \
	riscv_amoand_w.S \
	riscv_amoand_d.S \
	riscv_amoor_w.S \
	riscv_amoor_d.S \
	riscv_amomin_w.S \
	riscv_amomin_d.S \
	riscv_amomax_w.S \
	riscv_amomax_d.S \
	riscv_amominu_w.S \
	riscv_amominu_d.S \
	riscv_amomaxu_w.S \
	riscv_amomaxu_d.S \
	riscv_fp_move.S \
	riscv_fp_structural.S \


extra_files = \
	test_macros.h \

#--------------------------------------------------------------------
# Build rules
#--------------------------------------------------------------------

RISCV_GCC = riscv-gcc 
RISCV_GCC_OPTS = -DENABLE_STATS -O2 -nostdlib -nostartfiles -T test.ld -D__USER_PHYSICAL_SCALAR
RISCV_OBJDUMP = riscv-objdump --disassemble-all --disassemble-zeroes --section=.text --section=.data
RISCV_SIM = echo r | fesvr -testrun -d

#------------------------------------------------------------
# Build assembly tests

asm_tests_bin  = $(patsubst %.S, %, $(asm_tests))
asm_tests_dump = $(addsuffix .dump, $(asm_tests_bin))
asm_tests_hex = $(addsuffix .hex, $(asm_tests_bin))
asm_tests_out  = $(addsuffix .out,  $(asm_tests_bin))
 
%.hex: %
	elf2hex 16 16384 $< > $@
 
$(asm_tests_dump): %.dump: %
	$(RISCV_OBJDUMP) $< > $@

$(asm_tests_bin): %: %.S
	$(RISCV_GCC) $(RISCV_GCC_OPTS) $< -o $@

$(asm_tests_out): %.out: %
	$(RISCV_SIM) $< > $@

riscv-: $(asm_tests_dump) $(asm_tests_hex)
run: $(asm_tests_out)
	echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(asm_tests_out); echo;

junk += $(asm_tests_bin) $(asm_tests_dump) $(asm_tests_out) $(asm_tests_hex)

#------------------------------------------------------------
# Default

all: riscv-
    
#------------------------------------------------------------
# Install

date_suffix = $(shell date +%Y-%m-%d_%H-%M)
install_dir = $(instbasedir)/$(instname)
# Good for when you expect to have multiple versions... but for Sodor I'm only including one copy with Repo
#install_dir = $(instbasedir)/$(instname)-$(date_suffix) 
latest_install = $(shell ls -1 -d $(instbasedir)/$(instname)* | tail -n 1)

install:
	mkdir -p $(install_dir)
	cp -r $(asm_tests_bin) $(asm_tests_dump) $(asm_tests_hex) $(install_dir)

install-link:
	rm -rf $(instbasedir)/$(instname)
	ln -s $(latest_install) $(instbasedir)/$(instname)
                     
#------------------------------------------------------------
# Clean up

clean:
	rm -rf $(junk)
