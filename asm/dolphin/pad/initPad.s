
.include "macros.s"

.section .init, "ax"  # 0x80003100 - 0x80005600 ; 0x00002500
.global __check_pad3
__check_pad3:
.LFB5:
	.cfi_startproc
	lis 9,0x800030e4@ha
	lwz 9,0x800030e4@l(9)
	andi. 9,9,0xeef
	cmpwi 0,9,3823
	bnelr+ 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	mflr 0
	stw 0,12(1)
	.cfi_offset 65, 4
	li 5,0
	li 4,0
	li 3,0
	crxor 6,6,6
	bl OSReset
	lwz 0,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,8
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.global __set_debug_bba
__set_debug_bba:
.LFB6:
	.cfi_startproc
	li 10,1
	stb 10,0x8065b4e8@ha(9)
	blr
	.cfi_endproc
.global __get_debug_bba
__get_debug_bba:
.LFB7:
	.cfi_startproc
	lbz 3,0x8065b4e8@l(9)
	blr
	.cfi_endproc