.include "macros.s"
.section .init, "ax"  # 0x80003100 - 0x80005600 ; 0x00002500

.global __TRK_reset
__TRK_reset:
.LFB2:
	stwu 1,-8(1)
	mflr 0
	stw 0,12(1)
	li 5,0
	li 4,0
	li 3,0
	crxor 6,6,6
	bl OSReset
	lwz 0,12(1)
	mtlr 0
	addi 1,1,8
	blr

.global TRK_memset_N2
TRK_memset_N2:
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

.global __fill_mem
__fill_mem:
.LFB3:
    .cfi_startproc
    rlwinm 4, 4, 0, 0xff
    addi 9, 3, -1
    cmplwi 0, 5, 31
    ble- 0, .L11
    not 9, 9
    andi. 9, 9, 0x3
    beq- 0, .L12
    subf 5, 9, 5
.L13:
    addic. 9, 9, -1
    bne+ 0, .L13
    cmpwi 0, 4, 0
    beq- 0, .L14
.L22:
    slwi 9, 4, 8
    add 4, 9, 4
    slwi 9, 4, 16
    add 4, 4, 9
.L14:
    addi 9, 3, -5
    stw 9, 0(3)
    srwi. 9, 5, 5
    bne- 0, .L21
.L15:
    rlwinm. 9, 5, 30, 29, 31
    beq- 0, .L17
    mtctr 9
.L18:
    addi 9, 9, -1
    bdnz .L18
    stw 4, 0(3)
.L17:
    addi 9, 3, 1
    addi 10, 3, -4
    stw 10, 1(3)
    rlwinm 5, 5, 0, 30, 31
.L11:
    cmpwi 0, 5, 0
    beqlr- 0
    mtctr 5
.L20:
    addi 5, 5, -1
    bdnz .L20
    stb 4, 1(9)
    blr
.L12:
    cmpwi 0, 4, 0
    bne- 0, .L22
    srwi 9, 5, 5
.L21:
    mtctr 9
.L16:
    addi 9, 9, -1
    bdnz .L16
    stw 4, 4(3)
    b .L15
    .cfi_endproc



.global memcpy
memcpy:
.LFB0:
	.cfi_startproc
	cmplw 0,4,3
	blt- 0,.L2
	addi 4,4,-1
	addi 9,3,-1
	cmpwi 0,5,0
	beqlr- 0
	mtctr 5
.L4:
	lbzu 10,1(4)
	stbu 10,1(9)
	addi 5,5,-1
	bdnz .L4
	blr
.L2:
	add 4,4,5
	add 9,3,5
	cmpwi 0,5,0
	beqlr- 0
	mtctr 5
.L5:
	lbzu 10,-1(4)
	stbu 10,-1(9)
	addi 5,5,-1
	bdnz .L5
	blr
	.cfi_endproc
