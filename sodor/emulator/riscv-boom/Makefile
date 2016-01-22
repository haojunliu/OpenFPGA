
SUPERVISOR_MODE="true"
RV64_MODE="true"

bmark_timeout=500000
#bmark_timeout=89000
#bmark_timeout=2000000
#bmark_timeout=29200
#asm_test_timeout=50000
asm_test_timeout=5000

TRACERPATH?=.
TRACER?=oootracer

#global_asm_tests += \
	riscv-v3_lb \
	riscv-v3_lbu \
	riscv-v3_lh \
	riscv-v3_lhu \
	riscv-v3_sb \
	riscv-v3_sh \

local_asm_tests += \
#	test_pseg7 \
	test_1349443157713_pseg_73
 
include ../common/Makefile.include
