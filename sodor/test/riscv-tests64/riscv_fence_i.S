#*****************************************************************************
# riscv_fence_i.S
#-----------------------------------------------------------------------------
#
# Test self-modifying code and the fence.i instruction.
#

#include "test_macros.h"

TEST_RISCV
TEST_CODEBEGIN

li t0, 111
la a0, 3f
la a1, 1f
la a2, 2f
lw a0, 0(a0)

# test I$ hit
.align 6
sw a0, 0(a1)
fence.i

1: addi t0, t0, 222
TEST_CASE( 2, t0, 444, nop )

# test prefetcher hit
li t1, 100
1: addi t1, t1, -1
bnez t1, 1b

sw a0, 0(a2)
fence.i

.align 6
2: addi t0, t0, 555
TEST_CASE( 3, t0, 777, nop )

3: addi t0, t0, 333

TEST_PASSFAIL
TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND
