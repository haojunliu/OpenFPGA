#*****************************************************************************
# riscv_fp_ldst.S
#-----------------------------------------------------------------------------
#
# This test verifies that flw, fld, fsw, and fsd work properly.
#

#include "test_macros.h"

TEST_RISCV
TEST_CODEBEGIN

TEST_CASE(2, t0, 0x4000000040400000, la t1, tdat; flw f1, 4(t1); fsw f1, 12(t1); ld t0, 8(t1))
TEST_CASE(3, t0, 0x400000003f800000, la t1, tdat; fld f2, 0(t1); fsd f2, 8(t1); ld t0, 8(t1))

TEST_PASSFAIL
TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND

.data
tdat:
.word 0x3f800000
.word 0x40000000
.word 0x40400000
.word 0x40800000
