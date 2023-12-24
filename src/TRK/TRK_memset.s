.include "macros.s"

.section .init, "ax"

.global TRK_memset
TRK_memset:
    .LFB1:
        stwu 1, -16(1)
        mflr 0
        stw 0, 20(1)
        stw 31, 12(1)

        mr 31, 3
        bl TRK_fill_mem

        mr 3, 31
        lwz 0, 20(1)
        lwz 31, 12(1)
        addi 1, 1, 16
        mtlr 0
        blr
