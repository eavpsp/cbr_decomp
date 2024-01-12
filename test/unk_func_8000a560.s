	.file	"unk_func_8000a560.c"
	.machine "821"
	.section	".text"
	.section	.text.updateArrayDataWithResult,"ax",@progbits
	.align 2
	.globl updateArrayDataWithResult
	.type	updateArrayDataWithResult, @function
updateArrayDataWithResult:
.LFB0:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	li 5,640
	li 4,0
	stw 0,52(1)
	stw 30,40(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl TRK_memset
	bl get_dat_8065bc08_if_dat_8065bc00_not_zero
	mr 30,3
	bl GetResultFromLookupTable
	cmpwi 0,3,0
	blt- 0,.L1
	lis 10,lbl_8020FC68@ha
	lwz 10,lbl_8020FC68@l(10)
	cmpw 0,10,3
	bgt- 0,.L1
	lis 10,lbl_8020FC5C@ha
	stw 27,28(1)
	.cfi_offset 27, -20
	lwz 27,lbl_8020FC5C@l(10)
	stw 26,24(1)
	.cfi_offset 26, -24
	cmpw 0,27,3
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 31,44(1)
	.cfi_offset 31, -4
	ble- 0,.L23
	cmpwi 0,3,239
	ble- 0,.L11
.L24:
	mulli 29,27,159
.L4:
	lis 26,lbl_8065B16C@ha
	slwi 30,30,2
	la 26,lbl_8065B16C@l(26)
	lwzx 9,26,30
	addi 3,1,8
	add 29,29,9
	srwi 28,29,16
	addi 31,28,4
	mr 4,31
	bl GetMemoryBlock
	lwz 4,8(1)
	lis 11,lbl_8065B15C@ha
	lis 3,lbl_8065B158@ha
	lwz 8,lbl_8065B15C@l(11)
	lwz 7,lbl_8065B158@l(3)
	mtctr 31
	mr 10,4
	li 5,0
	li 6,0
.L7:
	lha 9,0(10)
	addi 10,10,2
	cmpw 7,9,8
	cmpwi 0,9,1000
	cmpw 5,9,7
	ble- 7,.L5
	mr 8,9
	li 6,1
.L5:
	ble- 0,.L6
	ble- 5,.L6
	mr 7,9
	li 5,1
.L6:
	bdnz .L7
	addi 28,28,3
	andi. 5,5,0x1
	slwi 28,28,1
	addi 4,4,2
	add 28,28,4
	stw 28,8(1)
	beq- 0,.L8
	stw 7,lbl_8065B158@l(3)
.L8:
	andi. 6,6,0x1
	beq- 0,.L9
	stw 8,lbl_8065B15C@l(11)
.L9:
	add 3,29,27
	rlwinm 9,3,0,16,31
	stwx 9,26,30
	srwi 3,3,16
	bl updateArrayData
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 31,44(1)
	.cfi_restore 31
.L1:
	lwz 0,52(1)
	lwz 30,40(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L11:
	.cfi_def_cfa_offset 48
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lis 29,0x36
	ori 29,29,0xbb41
	li 27,22559
	b .L4
.L23:
	cmpwi 0,3,239
	li 27,22561
	ble- 0,.L11
	b .L24
	.cfi_endproc
.LFE0:
	.size	updateArrayDataWithResult, .-updateArrayDataWithResult
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
