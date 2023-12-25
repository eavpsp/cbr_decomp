	.file	"Pad.c"
	.machine ppc
	.section	".text"
	.align 2
	.globl __check_pad3
	.type	__check_pad3, @function
__check_pad3:
.LFB5:
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
	crxor 6,6,6
	b OSReset
	.cfi_endproc
.LFE5:
	.size	__check_pad3, .-__check_pad3
	.align 2
	.globl __set_debug_bba
	.type	__set_debug_bba, @function
__set_debug_bba:
.LFB6:
	.cfi_startproc
	lis 9,.LANCHOR0@ha
	li 10,1
	stb 10,.LANCHOR0@l(9)
	blr
	.cfi_endproc
.LFE6:
	.size	__set_debug_bba, .-__set_debug_bba
	.align 2
	.globl __get_debug_bba
	.type	__get_debug_bba, @function
__get_debug_bba:
.LFB7:
	.cfi_startproc
	lis 9,.LANCHOR0@ha
	lbz 3,.LANCHOR0@l(9)
	blr
	.cfi_endproc
.LFE7:
	.size	__get_debug_bba, .-__get_debug_bba
	.globl __OSTVMode
	.globl GameChoice
	.globl __OSWirelessPadFixMode
	.globl __OSCurrentInterruptMask
	.globl __OSPriorInterruptMask
	.globl __OSCurrentThread
	.globl __OSActiveThreadQueue
	.globl __OSFPUContext
	.globl __OSCurrentContext
	.globl __OSDeviceCode
	.globl __OSCoreClock
	.globl __OSBusClock
	.section	".bss"
	.set	.LANCHOR0,. + 0
	.type	Debug_BBA, @object
	.size	Debug_BBA, 1
Debug_BBA:
	.zero	1
	.section	.sbss,"aw",@nobits
	.align 2
	.type	__OSTVMode, @object
	.size	__OSTVMode, 4
__OSTVMode:
	.zero	4
	.type	GameChoice, @object
	.size	GameChoice, 1
GameChoice:
	.zero	1
	.zero	1
	.type	__OSWirelessPadFixMode, @object
	.size	__OSWirelessPadFixMode, 2
__OSWirelessPadFixMode:
	.zero	2
	.type	__OSCurrentInterruptMask, @object
	.size	__OSCurrentInterruptMask, 4
__OSCurrentInterruptMask:
	.zero	4
	.type	__OSPriorInterruptMask, @object
	.size	__OSPriorInterruptMask, 4
__OSPriorInterruptMask:
	.zero	4
	.type	__OSCurrentThread, @object
	.size	__OSCurrentThread, 4
__OSCurrentThread:
	.zero	4
	.type	__OSActiveThreadQueue, @object
	.size	__OSActiveThreadQueue, 8
__OSActiveThreadQueue:
	.zero	8
	.type	__OSFPUContext, @object
	.size	__OSFPUContext, 4
__OSFPUContext:
	.zero	4
	.type	__OSCurrentContext, @object
	.size	__OSCurrentContext, 4
__OSCurrentContext:
	.zero	4
	.type	__OSDeviceCode, @object
	.size	__OSDeviceCode, 2
__OSDeviceCode:
	.zero	2
	.zero	2
	.type	__OSCoreClock, @object
	.size	__OSCoreClock, 4
__OSCoreClock:
	.zero	4
	.type	__OSBusClock, @object
	.size	__OSBusClock, 4
__OSBusClock:
	.zero	4
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
