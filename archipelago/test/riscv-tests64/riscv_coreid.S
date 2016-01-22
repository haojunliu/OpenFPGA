#*****************************************************************************
# riscv_coreid.S
#-----------------------------------------------------------------------------
#
# Test lui instruction.
#

#include "test_macros.h"

        TEST_RISCV
        TEST_CODEBEGIN

        #-------------------------------------------------------------
        # Basic tests
        #-------------------------------------------------------------

        TEST_CASE( 2, x1, 0x1, mfpcr x1, cr12 );

        TEST_PASSFAIL
        TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND
