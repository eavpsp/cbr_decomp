.include "macros.s"

.section .init, "ax"  

.global TRK_memcpy
TRK_memcpy:
.LFB0:
    .cfi_startproc
    cmpwi 0, 5, 0
    beqlr-

    mtctr 5
.L3:
    lbzu 10, 1(4)
    stbu 10, 1(9)
    bdnz .L3

    .cfi_endproc
