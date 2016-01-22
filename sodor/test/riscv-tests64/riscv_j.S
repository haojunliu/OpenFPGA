#*****************************************************************************
# riscv_j.S
#-----------------------------------------------------------------------------
#
# Test j instruction.
#

#include "test_macros.h"

        TEST_RISCV
        TEST_CODEBEGIN

        #-------------------------------------------------------------
        # Test basic
        #-------------------------------------------------------------

        li  x28, 2;
        j test_2;
        j fail;
test_2:

        #-------------------------------------------------------------
        # Test delay slot instructions not executed nor bypassed
        #-------------------------------------------------------------

        TEST_CASE( 3, x1, 3, \
          li  x1, 1; \
          j 1f; \
          addi x1, x1, 1; \
          addi x1, x1, 1; \
          addi x1, x1, 1; \
          addi x1, x1, 1; \
      1:  addi x1, x1, 1; \
          addi x1, x1, 1; \
        )

        TEST_PASSFAIL
        TEST_CODEEND

        TEST_DATABEGIN
        TEST_DATAEND
