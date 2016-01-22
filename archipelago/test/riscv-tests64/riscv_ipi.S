#*****************************************************************************
# riscv_ipi.S
#-----------------------------------------------------------------------------
#
# Test interprocessor interrupts.
#

#include "test_macros.h"

TEST_RISCV
TEST_CODEBEGIN

# clear pending IPIs then enable interrupts
la t0, handler
mtpcr t0, cr3
mtpcr x0, cr9
mfpcr t0, cr0
li t1, 0x00ff0001
or t0, t0, t1
mtpcr t0, cr0

# wait for all cores to boot
la t0, coreid
li t1, 1
amoadd.w x0, t1, 0(t0)
lw t3, 4(x0)
1: lw t1, 0(t0)
blt t1, t3, 1b

# IPI dominoes
mfpcr t0, cr10
1: bnez t0, 1b
add t0, t0, 1
rem t0, t0, t3
mtpcr t0, cr8
1: b 1b

handler:
mfpcr t0, cr10
bnez t0, 2f
TEST_PASS
TEST_PASSFAIL

2: add t0, t0, 1
rem t0, t0, t3
mtpcr t0, cr8
1: b 1b

TEST_CODEEND

TEST_DATABEGIN
coreid: .word 0
foo: .word 0
TEST_DATAEND
