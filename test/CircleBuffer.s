	.file	"CircleBuffer.c"
	.machine ppc
	.section	".text"
	.align 2
	.globl CBGetBytesAvailableForRead
	.type	CBGetBytesAvailableForRead, @function
CBGetBytesAvailableForRead:
.LFB0:
	.cfi_startproc
	lwz 3,16(3)
	blr
	.cfi_endproc
.LFE0:
	.size	CBGetBytesAvailableForRead, .-CBGetBytesAvailableForRead
	.align 2
	.globl CBGetBytesAvailableForWrite
	.type	CBGetBytesAvailableForWrite, @function
CBGetBytesAvailableForWrite:
.LFB1:
	.cfi_startproc
	lwz 3,20(3)
	blr
	.cfi_endproc
.LFE1:
	.size	CBGetBytesAvailableForWrite, .-CBGetBytesAvailableForWrite
	.align 2
	.globl CircleBufferInitialize
	.type	CircleBufferInitialize, @function
CircleBufferInitialize:
.LFB2:
	.cfi_startproc
	mr 9,3
	li 10,0
	stw 4,8(3)
	addi 3,3,24
	stw 4,-24(3)
	stw 4,4(9)
	stw 5,12(9)
	stw 5,20(9)
	stw 10,16(9)
	crxor 6,6,6
	b MWInitializeCriticalSection
	.cfi_endproc
.LFE2:
	.size	CircleBufferInitialize, .-CircleBufferInitialize
	.align 2
	.globl CircleBufferTerminate
	.type	CircleBufferTerminate, @function
CircleBufferTerminate:
.LFB3:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE3:
	.size	CircleBufferTerminate, .-CircleBufferTerminate
	.align 2
	.globl CircleBufferWriteBytes
	.type	CircleBufferWriteBytes, @function
CircleBufferWriteBytes:
.LFB4:
	.cfi_startproc
	lwz 9,20(3)
	cmplw 0,9,5
	blt- 0,.L11
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	stw 26,16(1)
	.cfi_register 65, 0
	.cfi_offset 26, -24
	addi 26,3,24
	stw 31,36(1)
	.cfi_offset 31, -4
	mr 31,3
	mr 3,26
	stw 25,12(1)
	stw 27,20(1)
	stw 28,24(1)
	.cfi_offset 25, -28
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	mr 28,4
	stw 29,28(1)
	.cfi_offset 29, -12
	mr 29,5
	stw 30,32(1)
	stw 0,44(1)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	crxor 6,6,6
	bl MWEnterCriticalSection
	lwz 3,4(31)
	lwz 27,8(31)
	lwz 30,12(31)
	subf 27,27,3
	subf 25,27,30
	cmplw 0,25,29
	bge- 0,.L16
	mr 5,25
	mr 4,28
	subf 30,30,29
	bl memcpy
	add 30,30,27
	lwz 3,8(31)
	add 4,28,25
	mr 5,30
	bl memcpy
	lwz 10,8(31)
	add 9,10,30
	stw 9,4(31)
.L9:
	lwz 8,12(31)
	subf 9,10,9
	cmpw 0,8,9
	bne+ 0,.L10
	stw 10,4(31)
.L10:
	lwz 10,20(31)
	mr 3,26
	lwz 9,16(31)
	subf 10,29,10
	add 9,9,29
	stw 10,20(31)
	stw 9,16(31)
	crxor 6,6,6
	bl MWExitCriticalSection
	lwz 0,44(1)
	lwz 25,12(1)
	li 3,0
	lwz 26,16(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L16:
	.cfi_restore_state
	mr 4,28
	mr 5,29
	bl memcpy
	lwz 9,4(31)
	lwz 10,8(31)
	add 9,9,29
	stw 9,4(31)
	b .L9
.L11:
	.cfi_def_cfa_offset 0
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 65
	li 3,-1
	blr
	.cfi_endproc
.LFE4:
	.size	CircleBufferWriteBytes, .-CircleBufferWriteBytes
	.align 2
	.globl CircleBufferReadBytes
	.type	CircleBufferReadBytes, @function
CircleBufferReadBytes:
.LFB5:
	.cfi_startproc
	lwz 9,16(3)
	cmplw 0,9,5
	blt- 0,.L22
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	stw 26,16(1)
	.cfi_register 65, 0
	.cfi_offset 26, -24
	addi 26,3,24
	stw 31,36(1)
	.cfi_offset 31, -4
	mr 31,3
	mr 3,26
	stw 25,12(1)
	stw 27,20(1)
	stw 28,24(1)
	.cfi_offset 25, -28
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	mr 28,4
	stw 29,28(1)
	.cfi_offset 29, -12
	mr 29,5
	stw 30,32(1)
	stw 0,44(1)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	crxor 6,6,6
	bl MWEnterCriticalSection
	lwz 4,0(31)
	lwz 27,8(31)
	lwz 30,12(31)
	subf 27,27,4
	subf 25,27,30
	cmplw 0,25,29
	bgt- 0,.L27
	mr 5,25
	mr 3,28
	subf 30,30,29
	bl memcpy
	add 30,30,27
	lwz 4,8(31)
	add 3,28,25
	mr 5,30
	bl memcpy
	lwz 10,8(31)
	add 9,10,30
	stw 9,0(31)
.L20:
	lwz 8,12(31)
	subf 9,10,9
	cmpw 0,8,9
	bne+ 0,.L21
	stw 10,0(31)
.L21:
	lwz 9,20(31)
	mr 3,26
	lwz 10,16(31)
	add 9,9,29
	subf 29,29,10
	stw 9,20(31)
	stw 29,16(31)
	crxor 6,6,6
	bl MWExitCriticalSection
	lwz 0,44(1)
	lwz 25,12(1)
	li 3,0
	lwz 26,16(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L27:
	.cfi_restore_state
	mr 3,28
	mr 5,29
	bl memcpy
	lwz 9,0(31)
	lwz 10,8(31)
	add 9,9,29
	stw 9,0(31)
	b .L20
.L22:
	.cfi_def_cfa_offset 0
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 65
	li 3,-1
	blr
	.cfi_endproc
.LFE5:
	.size	CircleBufferReadBytes, .-CircleBufferReadBytes
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
