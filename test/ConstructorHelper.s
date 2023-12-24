	.file	"ConstructorHelper.c"
	.machine ppc
	.section	".text"
	.align 2
	.globl SetDebugText
	.type	SetDebugText, @function
SetDebugText:
.LFB3:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,3
	bl strlen
	mr. 10,3
	ble- 0,.L1
	addi 9,31,-1
	lis 8,0x8031
	ori 8,8,0x7901
	subf 31,31,8
	mtctr 10
.L3:
	add 8,31,9
	lbzu 7,1(9)
	stb 7,0(8)
	addi 10,10,-1
	bdnz .L3
.L1:
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE3:
	.size	SetDebugText, .-SetDebugText
	.align 2
	.globl SetDebugFloat
	.type	SetDebugFloat, @function
SetDebugFloat:
.LFB4:
	.cfi_startproc
	cmpwi 0,4,3
	beq- 0,.L8
	bgt- 0,.L9
	cmpwi 0,4,1
	beq- 0,.L10
	cmpwi 0,4,2
	bne- 0,.L12
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,8(9)
	blr
.L9:
	cmpwi 0,4,4
	bne- 0,.L12
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,16(9)
	blr
.L8:
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,12(9)
	blr
.L10:
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,4(9)
	blr
.L12:
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,0(9)
	blr
	.cfi_endproc
.LFE4:
	.size	SetDebugFloat, .-SetDebugFloat
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"CJObj"
	.section	".text"
	.align 2
	.globl _CJObjBase
	.type	_CJObjBase, @function
_CJObjBase:
.LFB5:
	.cfi_startproc
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	mflr 0
	stw 0,12(1)
	.cfi_offset 65, 4
	li 3,8
	bl malloc
	lis 9,.LC0@ha
	la 9,.LC0@l(9)
	stw 9,0(3)
	lwz 0,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,8
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE5:
	.size	_CJObjBase, .-_CJObjBase
	.align 2
	.globl _CJObj
	.type	_CJObj, @function
_CJObj:
.LFB6:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	li 3,12
	bl malloc
	mr 31,3
	bl _CJObjBase
	lwz 9,0(3)
	stw 9,0(31)
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
.LFE6:
	.size	_CJObj, .-_CJObj
	.align 2
	.globl TestClassInMemory
	.type	TestClassInMemory, @function
TestClassInMemory:
.LFB7:
	.cfi_startproc
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	mflr 0
	stw 0,12(1)
	.cfi_offset 65, 4
	bl _CJObj
	lwz 3,0(3)
	bl SetDebugText
	lis 10,0x8031
	ori 10,10,0x7800
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	stw 9,0(10)
	lwz 0,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,8
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE7:
	.size	TestClassInMemory, .-TestClassInMemory
	.align 2
	.globl TestXobjConstructor
	.type	TestXobjConstructor, @function
TestXobjConstructor:
.LFB8:
	.cfi_startproc
	lis 9,0x8031
	ori 9,9,0x7800
	stw 3,0(9)
	blr
	.cfi_endproc
.LFE8:
	.size	TestXobjConstructor, .-TestXobjConstructor
	.align 2
	.globl OnLoad
	.type	OnLoad, @function
OnLoad:
.LFB9:
	.cfi_startproc
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	mflr 0
	stw 0,12(1)
	.cfi_offset 65, 4
	bl OnActivate
	lis 9,started@ha
	lbz 9,started@l(9)
	cmpwi 0,9,0
	beq- 0,.L24
.L21:
	lwz 0,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,8
	.cfi_def_cfa_offset 0
	blr
.L24:
	.cfi_restore_state
	lis 9,started@ha
	li 10,1
	stb 10,started@l(9)
	bl TestClassInMemory
	b .L21
	.cfi_endproc
.LFE9:
	.size	OnLoad, .-OnLoad
	.globl started
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	cjObjMade, @object
	.size	cjObjMade, 4
cjObjMade:
	.zero	4
	.section	.sbss,"aw",@nobits
	.type	started, @object
	.size	started, 1
started:
	.zero	1
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
