	.file	"updateArrayDataWithResult.c"
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
	stw 28,32(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	bl TRK_memset
	bl get_dat_8065bc08_if_dat_8065bc00_not_zero
	mr 28,3
	bl GetResultFromLookupTable
	cmpwi 0,3,0
	blt- 0,.L22
	lis 10,INT_8020fc68@ha
	lwz 10,INT_8020fc68@l(10)
	cmpw 0,10,3
	bgt- 0,.L1
	lis 10,INT_8020fc6c@ha
	lwz 8,INT_8020fc6c@l(10)
	lis 10,INT_8020fc5c@ha
	cmpw 0,8,3
	stw 27,28(1)
	.cfi_offset 27, -20
	stw 26,24(1)
	.cfi_offset 26, -24
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 30,40(1)
	.cfi_offset 30, -8
	stw 31,44(1)
	.cfi_offset 31, -4
	lwz 27,INT_8020fc5c@l(10)
	ble- 0,.L23
.L4:
	lis 26,INT_8065b16c@ha
	slwi 28,28,2
	la 26,INT_8065b16c@l(26)
	lwzx 9,26,28
	mulli 29,27,159
	addi 3,1,8
	add 29,29,9
	srwi 30,29,16
	addi 31,30,4
	mr 4,31
	bl GetMemoryBlock
	lwz 4,8(1)
	lis 11,INT_8065b15c@ha
	lis 3,INT_8065b158@ha
	lwz 8,INT_8065b15c@l(11)
	lwz 7,INT_8065b158@l(3)
	mtctr 31
	mr 10,4
	li 5,0
	li 6,0
.L8:
	lha 9,0(10)
	addi 10,10,2
	cmpw 7,9,8
	cmpwi 0,9,1000
	cmpw 5,9,7
	ble- 7,.L6
	mr 8,9
	li 6,1
.L6:
	ble- 0,.L7
	ble- 5,.L7
	mr 7,9
	li 5,1
.L7:
	bdnz .L8
	addi 30,30,3
	andi. 5,5,0x1
	slwi 30,30,1
	addi 4,4,2
	add 30,30,4
	stw 30,8(1)
	beq- 0,.L9
	stw 7,INT_8065b158@l(3)
.L9:
	andi. 6,6,0x1
	beq- 0,.L10
	stw 8,INT_8065b15c@l(11)
.L10:
	add 3,27,29
	rlwinm 9,3,0,16,31
	stwx 9,26,28
	srwi 3,3,16
	bl update_array_data
	lwz 26,24(1)
	.cfi_restore 26
	lwz 27,28(1)
	.cfi_restore 27
	lwz 29,36(1)
	.cfi_restore 29
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	.cfi_restore 31
.L1:
	lwz 0,52(1)
	lwz 28,32(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,48
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L22:
	.cfi_restore_state
	lwz 0,52(1)
	lis 9,INT_8065b16c@ha
	slwi 28,28,2
	la 9,INT_8065b16c@l(9)
	li 10,0
	stwx 10,9,28
	mtlr 0
	.cfi_restore 65
	lwz 28,32(1)
	addi 1,1,48
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	blr
.L23:
	.cfi_def_cfa_offset 48
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lis 10,INT_8020fc70@ha
	lwz 10,INT_8020fc70@l(10)
	cmpw 0,10,3
	bgt- 0,.L5
	lis 9,INT_8020fc64@ha
	lwz 27,INT_8020fc64@l(9)
	b .L4
.L5:
	lis 9,INT_8020fc60@ha
	lwz 27,INT_8020fc60@l(9)
	b .L4
	.cfi_endproc
.LFE0:
	.size	updateArrayDataWithResult, .-updateArrayDataWithResult
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
