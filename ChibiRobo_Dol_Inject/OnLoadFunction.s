	.file	"OnLoadFunction.c"
	.machine ppc
	.section	".text"
	.section	.text.SetDebugText,"ax",@progbits
	.align 2
	.globl SetDebugText
	.type	SetDebugText, @function
SetDebugText:
.LFB0:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	bl strlen
	mr. 9,3
	beq- 0,.L1
	andi. 10,9,0x1
	lis 8,0x8031
	ori 8,8,0x7901
	addi 10,31,-1
	subf 8,31,8
	addi 7,9,-1
	bne- 0,.L16
.L8:
	srwi 9,9,1
	mtctr 9
.L3:
	lbz 7,1(10)
	addi 9,10,1
	stbx 7,8,10
	addi 10,10,2
	lbz 7,1(9)
	stbx 7,8,9
	bdnz .L3
.L1:
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
.L16:
	.cfi_restore_state
	cmpwi 0,7,0
	lbz 6,0(31)
	add 7,8,10
	mr 10,31
	stb 6,0(7)
	bne+ 0,.L8
	b .L1
	.cfi_endproc
.LFE0:
	.size	SetDebugText, .-SetDebugText
	.section	.text.SetDebugFloat,"ax",@progbits
	.align 2
	.globl SetDebugFloat
	.type	SetDebugFloat, @function
SetDebugFloat:
.LFB1:
	.cfi_startproc
	cmpwi 0,4,3
	beq- 0,.L18
	bgt- 0,.L19
	cmpwi 0,4,1
	beq- 0,.L20
	cmpwi 0,4,2
	bne- 0,.L22
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,8(9)
	blr
.L19:
	cmpwi 0,4,4
	bne- 0,.L22
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,16(9)
	blr
.L18:
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,12(9)
	blr
.L22:
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,0(9)
	blr
.L20:
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,4(9)
	blr
	.cfi_endproc
.LFE1:
	.size	SetDebugFloat, .-SetDebugFloat
	.section	.text.OnLoad,"ax",@progbits
	.align 2
	.globl OnLoad
	.type	OnLoad, @function
OnLoad:
.LFB2:
	.cfi_startproc
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	mflr 0
	stw 0,12(1)
	.cfi_offset 65, 4
	bl OnActivate
	lis 9,started@ha
	lbz 10,started@l(9)
	cmpwi 0,10,0
	bne- 0,.L24
	li 10,1
	stb 10,started@l(9)
.L24:
	lwz 0,12(1)
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE2:
	.size	OnLoad, .-OnLoad
	.globl started
	.section	.sbss.started,"aw",@nobits
	.type	started, @object
	.size	started, 1
started:
	.zero	1
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
