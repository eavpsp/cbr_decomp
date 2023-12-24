	.file	"memfuncs.c"
	.machine ppc
	.section	".text"
	.align 2
	.globl memcpy
	.type	memcpy, @function
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
.LFE0:
	.size	memcpy, .-memcpy
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
