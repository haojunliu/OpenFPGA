#*****************************************************************************
# riscv_simple.S
#-----------------------------------------------------------------------------
#
# This is the most basic self checking test. If your simulator does not
# pass thiss then there is little chance that it will pass any of the
# more complicated self checking tests.
#

#include "test_macros.h"

        TEST_RISCV
        TEST_CODEBEGIN

        TEST_PASS

        TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND
