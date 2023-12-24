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
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
