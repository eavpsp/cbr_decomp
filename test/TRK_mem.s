	.file	"TRK_mem.c"
	.machine ppc
	.section	".text"
	.align 2
	.globl TRK_memcpy
	.type	TRK_memcpy, @function
TRK_memcpy:
.LFB0:
	.cfi_startproc
	addi 4,4,-1
	addi 9,3,-1
	cmpwi 0,5,0
	beqlr- 0
	mtctr 5
.L3:
	lbzu 10,1(4)
	stbu 10,1(9)
	addi 5,5,-1
	bdnz .L3
	blr
	.cfi_endproc
.LFE0:
	.size	TRK_memcpy, .-TRK_memcpy
	.align 2
	.globl TRK_memset
	.type	TRK_memset, @function
TRK_memset:
.LFB1:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	crxor 6,6,6
	bl TRK_fill_mem
	mr 3,31
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE1:
	.size	TRK_memset, .-TRK_memset
	.align 2
	.globl __TRK_reset
	.type	__TRK_reset, @function
__TRK_reset:
.LFB2:
	.cfi_startproc
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	mflr 0
	stw 0,12(1)
	.cfi_offset 65, 4
	li 5,0
	li 4,0
	li 3,0
	crxor 6,6,6
	bl OSResetSystem
	lwz 0,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,8
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2:
	.size	__TRK_reset, .-__TRK_reset
	.align 2
	.globl __fill_mem
	.type	__fill_mem, @function
__fill_mem:
.LFB3:
	.cfi_startproc
	rlwinm 4,4,0,0xff
	addi 9,3,-1
	cmplwi 0,5,31
	ble- 0,.L11
	not 9,9
	andi. 9,9,0x3
	beq- 0,.L12
	subf 5,9,5
.L13:
	addic. 9,9,-1
	bne+ 0,.L13
	cmpwi 0,4,0
	beq- 0,.L14
.L22:
	slwi 9,4,8
	add 4,9,4
	slwi 9,4,16
	add 4,4,9
.L14:
	addi 9,3,-5
	stw 9,0(3)
	srwi. 9,5,5
	bne- 0,.L21
.L15:
	rlwinm. 9,5,30,29,31
	beq- 0,.L17
	mtctr 9
.L18:
	addi 9,9,-1
	bdnz .L18
	stw 4,0(3)
.L17:
	addi 9,3,1
	addi 10,3,-4
	stw 10,1(3)
	rlwinm 5,5,0,30,31
.L11:
	cmpwi 0,5,0
	beqlr- 0
	mtctr 5
.L20:
	addi 5,5,-1
	bdnz .L20
	stb 4,1(9)
	blr
.L12:
	cmpwi 0,4,0
	bne- 0,.L22
	addi 9,3,-5
	stw 9,0(3)
	srwi 9,5,5
.L21:
	mtctr 9
.L16:
	addi 9,9,-1
	bdnz .L16
	stw 4,4(3)
	b .L15
	.cfi_endproc
.LFE3:
	.size	__fill_mem, .-__fill_mem
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
