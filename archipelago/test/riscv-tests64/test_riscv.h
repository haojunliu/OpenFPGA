#ifndef _TEST_RISCV_RV64U_H
#define _TEST_RISCV_RV64U_H

//-----------------------------------------------------------------------
// Begin Macro
//-----------------------------------------------------------------------

#define TEST_RISCV                                                      \

#define TEST_FP_ENABLE                                                  \
  setpcr cr0, 2;                                                        \
  mfpcr t0, cr0;                                                        \
  and   t0, t0, 2;                                                      \
  beqz  t0, 1f;                                                         \
  mtfsr x0;                                                             \
1:

#define TEST_VEC_ENABLE                                                 \
  mfpcr t0, cr0;                                                        \
  ori   t0, t0, 4;                                                      \
  mtpcr t0, cr0;                                                        \
  li    t0, 0xff;                                                       \
  mtpcr t0, cr18;                                                       \

#define TEST_CODEBEGIN                                                  \
        .text;                                                          \
        .align  4;                                                      \
        .global _start;                                                 \
        .ent    _start;                                                 \
_start:                                                                 \

//        TEST_FP_ENABLE                                                  \
//        TEST_VEC_ENABLE                                                 \

//-----------------------------------------------------------------------
// End Macro
//-----------------------------------------------------------------------

#define TEST_CODEEND                                                    \
        .end _start                                                     \

//-----------------------------------------------------------------------
// Pass/Fail Macro
//-----------------------------------------------------------------------
// assume test number is in x28

#define TEST_FAIL                                                       \
        fence;                                                          \
        li  x1, 2;                                                      \
1:      beq x0, x0, 1b;                                                 \
        nop;                                                            \

#define TEST_PASS                                                       \
        fence;                                                          \
        li  x1, 1;                                                      \
        mtpcr x1, cr30;                                                 \
1:      beq x0, x0, 1b;                                                 \
        nop;                                                            \

//-----------------------------------------------------------------------
// Data Section Macro
//-----------------------------------------------------------------------

#define TEST_DATABEGIN .align 4; .global begin_signature; begin_signature:

#define TEST_DATAEND .global end_signature; end_signature:

#endif
