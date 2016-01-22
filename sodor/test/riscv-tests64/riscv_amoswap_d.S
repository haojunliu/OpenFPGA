#*****************************************************************************
# riscv_amoswap.d.S
#-----------------------------------------------------------------------------
#
# Test amoswap.d instruction.
#

#include "test_macros.h"

    TEST_RISCV
    TEST_CODEBEGIN

    TEST_CASE(2, a4, 0xffffffff80000000, \
      li a0, 0xffffffff80000000; \
      li a1, 0xfffffffffffff800; \
      la a3, amo_operand; \
      sd a0, 0(a3); \
      nop; nop; nop; nop; \
      nop; nop; nop; nop; \
      nop; nop; nop; nop; \
      nop; nop; nop; nop; \
      nop; nop; nop; nop; \
      nop; nop; nop; nop; \
      nop; nop; nop; nop; \
      amoswap.d	a4, a1, 0(a3); \
    )

    TEST_CASE(3, a5, 0xfffffffffffff800, ld a5, 0(a3))

    # try again after a cache miss
    TEST_CASE(4, a4, 0xfffffffffffff800, \
      li  a1, 0x0000000080000000; \
      li  a4, 16384; \
      add a5, a3, a4; \
      ld  x0, 0(a5); \
      add a5, a5, a4; \
      ld  x0, 0(a5); \
      add a5, a5, a4; \
      ld  x0, 0(a5); \
      add a5, a5, a4; \
      ld  x0, 0(a5); \
      amoswap.d a4, a1, 0(a3); \
    )

    TEST_CASE(5, a5, 0x0000000080000000, ld a5, 0(a3))

    TEST_PASSFAIL
    TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND

    .bss
    .align 3
amo_operand:
    .dword 0
    .skip 65536
