   .sdata
   .globl	_heapend
   .globl	environ
_heapend:
   .word	0
environ:
   .word	0

   .text
   .globl _start
   .ent	_start

_start:
   mfpcr x1,cr0
   andi x1,x1, 0xF7F
   mtpcr x1,cr0
   la	sp,0x1FFFC
   jal	main
   nop
   nop
   
   .end	_start
