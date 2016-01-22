#*****************************************************************************
# riscv_rdnpc_w.S
#-----------------------------------------------------------------------------
#
# Test rdnpc instruction.
#

#include "test_macros.h"

    TEST_RISCV
    TEST_CODEBEGIN

    TEST_CASE(2, a0, 4, \
      rdnpc a0; \
      jal 1f; \
      1: sub a0, ra, a0; \
    )

    TEST_PASSFAIL
    TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND
