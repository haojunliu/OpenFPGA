#*****************************************************************************
# riscv_amomax_d.S
#-----------------------------------------------------------------------------
#
# Test amomax.w instruction.
#

#include "test_macros.h"

    TEST_RISCV
    TEST_CODEBEGIN

    TEST_CASE(2, a4, 0xffffffff80000000, \
      li a0, 0xffffffff80000000; \
      li a1, 0xfffffffffffff800; \
      la a3, amo_operand; \
      sw a0, 0(a3); \
      amomax.w	a4, a1, 0(a3); \
    )

    TEST_CASE(3, a5, 0xfffffffffffff800, lw a5, 0(a3))

    TEST_CASE(4, a4, 0, \
      li a1, 1; \
      sw x0, 0(a3); \
      amomax.w	a4, a1, 0(a3); \
    )

    TEST_CASE(5, a5, 1, lw a5, 0(a3))

    TEST_PASSFAIL
    TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND

    .bss
    .align 3
amo_operand:
    .dword 0
    .skip 65536
