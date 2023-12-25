	.file	"Pad.c"
	.machine "821"
	.section	".text"
	.section	.text.__check_pad3,"ax",@progbits
	.align 2
	.globl __check_pad3
	.type	__check_pad3, @function
__check_pad3:
.LFB0:
	.cfi_startproc
	lis 9,0x8000
	ori 9,9,0x30e4
	lwz 9,0(9)
	andi. 9,9,0xeef
	cmpwi 0,9,3823
	bnelr+ 0
	li 5,0
	li 4,0
	li 3,0
	b OSReset
	.cfi_endproc
.LFE0:
	.size	__check_pad3, .-__check_pad3
	.section	.text.__set_debug_bba,"ax",@progbits
	.align 2
	.globl __set_debug_bba
	.type	__set_debug_bba, @function
__set_debug_bba:
.LFB1:
	.cfi_startproc
	lis 9,Debug_BBA@ha
	li 10,1
	stw 10,Debug_BBA@l(9)
	blr
	.cfi_endproc
.LFE1:
	.size	__set_debug_bba, .-__set_debug_bba
	.section	.text.__get_debug_bba,"ax",@progbits
	.align 2
	.globl __get_debug_bba
	.type	__get_debug_bba, @function
__get_debug_bba:
.LFB2:
	.cfi_startproc
	lis 9,Debug_BBA@ha
	lwz 3,Debug_BBA@l(9)
	rlwinm 3,3,0,0xff
	blr
	.cfi_endproc
.LFE2:
	.size	__get_debug_bba, .-__get_debug_bba
	.globl Debug_BBA
	.section	.sdata.Debug_BBA,"aw"
	.align 2
	.type	Debug_BBA, @object
	.size	Debug_BBA, 4
Debug_BBA:
	.long	-2140818200
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
