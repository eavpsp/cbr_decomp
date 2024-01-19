	.file	"cobj.c"
	.machine "821"
	.section	".text"
	.section	.text.CObjLoad,"ax",@progbits
	.align 2
	.type	CObjLoad, @function
CObjLoad:
.LFB120:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE120:
	.size	CObjLoad, .-CObjLoad
	.section	.text.CObjAmnesia,"ax",@progbits
	.align 2
	.type	CObjAmnesia, @function
CObjAmnesia:
.LFB125:
	.cfi_startproc
	lis 9,default_class@ha
	lwz 10,default_class@l(9)
	cmpw 0,10,3
	beq- 0,.L6
	lis 9,hsdCObj@ha
	la 9,hsdCObj@l(9)
	cmpw 0,3,9
	beq- 0,.L7
.L5:
	lwz 9,20(9)
	lwz 9,56(9)
	mtctr 9
	bctr
.L6:
	li 10,0
	stw 10,default_class@l(9)
	lis 9,hsdCObj@ha
	la 9,hsdCObj@l(9)
	cmpw 0,3,9
	bne+ 0,.L5
.L7:
	lwz 9,20(9)
	lis 10,current@ha
	lwz 9,56(9)
	li 8,0
	mtctr 9
	stw 8,current@l(10)
	bctr
	.cfi_endproc
.LFE125:
	.size	CObjAmnesia, .-CObjAmnesia
	.section	.rodata.CObjInfoInit.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"hsd_cobj"
	.align 2
.LC1:
	.string	"sysdolphin_base_library"
	.section	.text.CObjInfoInit,"ax",@progbits
	.align 2
	.type	CObjInfoInit, @function
CObjInfoInit:
.LFB126:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lis 6,.LC0@ha
	stw 31,12(1)
	.cfi_offset 31, -4
	lis 31,hsdCObj@ha
	la 31,hsdCObj@l(31)
	lis 5,.LC1@ha
	lis 4,hsdObj@ha
	mflr 0
	mr 3,31
	li 8,140
	li 7,64
	la 6,.LC0@l(6)
	la 5,.LC1@l(5)
	la 4,hsdObj@l(4)
	stw 0,20(1)
	.cfi_offset 65, 4
	bl hsdInitClassInfo
	lwz 0,20(1)
	lis 7,CObjInit@ha
	lis 8,CObjRelease@ha
	lis 10,CObjAmnesia@ha
	lis 9,CObjLoad@ha
	la 7,CObjInit@l(7)
	la 8,CObjRelease@l(8)
	la 10,CObjAmnesia@l(10)
	la 9,CObjLoad@l(9)
	stw 7,44(31)
	stw 8,48(31)
	stw 10,56(31)
	stw 9,60(31)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE126:
	.size	CObjInfoInit, .-CObjInfoInit
	.section	.text.CObjRelease,"ax",@progbits
	.align 2
	.type	CObjRelease, @function
CObjRelease:
.LFB124:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,3
	lwz 3,132(3)
	stw 30,8(1)
	stw 0,20(1)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl HSD_AObjRemove
	lwz 30,36(31)
	cmpwi 0,30,0
	beq- 0,.L12
	lhz 9,4(30)
	li 10,0
	rlwinm 8,9,0,0xffff
	ori 10,10,0xffff
	cmpw 0,8,10
	beq- 0,.L14
	cmpwi 0,8,0
	addi 9,9,-1
	sth 9,4(30)
	beq- 0,.L14
.L12:
	lwz 30,40(31)
	cmpwi 0,30,0
	beq- 0,.L17
	lhz 9,4(30)
	li 10,0
	rlwinm 8,9,0,0xffff
	ori 10,10,0xffff
	cmpw 0,8,10
	beq- 0,.L19
	cmpwi 0,8,0
	addi 9,9,-1
	sth 9,4(30)
	beq- 0,.L19
.L17:
	lwz 3,136(31)
	cmpwi 0,3,0
	beq- 0,.L21
	bl HSD_MtxFree
.L21:
	lis 9,hsdCObj+20@ha
	lwz 9,hsdCObj+20@l(9)
	lwz 0,20(1)
	lwz 9,48(9)
	lwz 30,8(1)
	mr 3,31
	mtctr 9
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	bctr
.L19:
	.cfi_restore_state
	lwz 9,0(30)
	mr 3,30
	lwz 9,48(9)
	mtctr 9
	bctrl
	lwz 9,0(30)
	mr 3,30
	lwz 9,52(9)
	mtctr 9
	bctrl
	b .L17
.L14:
	lwz 9,0(30)
	mr 3,30
	lwz 9,48(9)
	mtctr 9
	bctrl
	lwz 9,0(30)
	mr 3,30
	lwz 9,52(9)
	mtctr 9
	bctrl
	b .L12
	.cfi_endproc
.LFE124:
	.size	CObjRelease, .-CObjRelease
	.section	.text.CObjInit,"ax",@progbits
	.align 2
	.type	CObjInit, @function
CObjInit:
.LFB123:
	.cfi_startproc
	lis 9,hsdCObj+20@ha
	lwz 9,hsdCObj+20@l(9)
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lwz 9,44(9)
	mflr 0
	stw 31,12(1)
	stw 0,20(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mtctr 9
	mr 31,3
	bctrl
	cmpwi 0,3,0
	blt- 0,.L32
	cmpwi 0,31,0
	beq- 0,.L34
	lwz 9,8(31)
	oris 9,9,0xc000
	stw 9,8(31)
.L34:
	bl HSD_WObjAlloc
	stw 3,36(31)
	bl HSD_WObjAlloc
	stw 3,40(31)
	li 3,0
.L32:
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE123:
	.size	CObjInit, .-CObjInit
	.section	.text.HSD_CObjSetupViewingMtx.part.0,"ax",@progbits
	.align 2
	.type	HSD_CObjSetupViewingMtx.part.0, @function
HSD_CObjSetupViewingMtx.part.0:
.LFB128:
	.cfi_startproc
	stwu 1,-72(1)
	.cfi_def_cfa_offset 72
	mflr 0
	stw 31,68(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr. 31,3
	stw 0,76(1)
	.cfi_offset 65, 4
	beq- 0,.L40
	lwz 3,36(31)
	addi 4,1,32
	bl HSD_WObjGetPosition
	addi 4,1,20
	mr 3,31
	bl HSD_CObjGetUpVector
	lwz 3,40(31)
	addi 4,1,8
	bl HSD_WObjGetPosition
	addi 6,1,8
	addi 5,1,20
	addi 4,1,32
	addi 3,31,84
	bl C_MTXLookAt
	lwz 7,36(31)
	lwz 9,8(31)
	lwz 10,8(7)
	lwz 8,40(31)
	rlwinm 10,10,0,31,29
	stw 10,8(7)
	lwz 0,76(1)
	lwz 10,8(8)
	rlwinm 9,9,0,2,0
	oris 9,9,0x8000
	rlwinm 10,10,0,31,29
	stw 10,8(8)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	stw 9,8(31)
	lwz 31,68(1)
	addi 1,1,72
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L40:
	.cfi_restore_state
	stw 29,60(1)
	.cfi_offset 29, -12
	stw 30,64(1)
	.cfi_offset 30, -8
	lis 29,HSD_CObj_804D5D48@ha
	lis 30,HSD_CObj_804D5D40@ha
	la 29,HSD_CObj_804D5D48@l(29)
	la 30,HSD_CObj_804D5D40@l(30)
	mr 5,29
	mr 3,30
	li 4,733
	bl __assert
	mr 5,29
	mr 3,30
	li 4,685
	bl __assert
	lwz 9,36(31)
	trap
	.cfi_endproc
.LFE128:
	.size	HSD_CObjSetupViewingMtx.part.0, .-HSD_CObjSetupViewingMtx.part.0
	.section	.text.CObjUpdateFunc,"ax",@progbits
	.align 2
	.type	CObjUpdateFunc, @function
CObjUpdateFunc:
.LFB56:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L43
	cmplwi 0,4,12
	bgt- 0,.L43
	lis 9,.L47@ha
	la 9,.L47@l(9)
	slwi 4,4,2
	lwzx 10,9,4
	stw 30,24(1)
	.cfi_offset 30, -8
	add 9,10,9
	mtctr 9
	mr 30,5
	bctr
	.section	.rodata.CObjUpdateFunc,"a",@progbits
	.align 2
	.align 2
.L47:
	.long .L60-.L47
	.long .L54-.L47
	.long .L53-.L47
	.long .L52-.L47
	.long .L60-.L47
	.long .L51-.L47
	.long .L51-.L47
	.long .L51-.L47
	.long .L60-.L47
	.long .L50-.L47
	.long .L49-.L47
	.long .L48-.L47
	.long .L46-.L47
	.section	.text.CObjUpdateFunc
.L51:
	lwz 3,40(31)
	mflr 0
	.cfi_register 65, 0
	addi 4,1,8
	stw 0,36(1)
	.cfi_offset 65, 4
	bl HSD_WObjGetPosition
	lwz 9,0(30)
	lwz 3,40(31)
.L61:
	addi 4,1,8
	stw 9,8(1)
	bl HSD_WObjSetPosition
	lwz 0,36(1)
	lwz 30,24(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L43:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L49:
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lbz 9,80(31)
	cmpwi 0,9,1
	beq- 0,.L62
.L60:
	lwz 30,24(1)
	.cfi_remember_state
	.cfi_restore 30
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L50:
	.cfi_restore_state
	lwz 4,0(5)
	lwz 30,24(1)
	.cfi_remember_state
	.cfi_restore 30
	mr 3,31
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b HSD_CObjSetRoll
.L48:
	.cfi_restore_state
	lwz 9,0(5)
	lwz 30,24(1)
	.cfi_remember_state
	.cfi_restore 30
	stw 9,56(31)
	b .L43
.L46:
	.cfi_restore_state
	lwz 9,0(5)
	lwz 30,24(1)
	.cfi_remember_state
	.cfi_restore 30
	stw 9,60(31)
	b .L43
.L53:
	.cfi_restore_state
	lwz 3,36(31)
	mflr 0
	.cfi_remember_state
	.cfi_register 65, 0
	addi 4,1,8
	stw 0,36(1)
	.cfi_offset 65, 4
	bl HSD_WObjGetPosition
	lwz 9,0(30)
	lwz 3,36(31)
	addi 4,1,8
	stw 9,12(1)
	bl HSD_WObjSetPosition
	lwz 0,36(1)
	lwz 30,24(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	b .L43
.L52:
	.cfi_restore_state
	lwz 3,36(31)
	mflr 0
	.cfi_remember_state
	.cfi_register 65, 0
	addi 4,1,8
	stw 0,36(1)
	.cfi_offset 65, 4
	bl HSD_WObjGetPosition
	lwz 9,0(30)
	lwz 3,36(31)
	addi 4,1,8
	stw 9,16(1)
	bl HSD_WObjSetPosition
	lwz 0,36(1)
	lwz 30,24(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	b .L43
.L54:
	.cfi_restore_state
	lwz 3,36(31)
	mflr 0
	.cfi_register 65, 0
	addi 4,1,8
	stw 0,36(1)
	.cfi_offset 65, 4
	bl HSD_WObjGetPosition
	lwz 9,0(30)
	lwz 3,36(31)
	b .L61
.L62:
	.cfi_restore 65
	lwz 9,0(5)
	lwz 30,24(1)
	.cfi_restore 30
	stw 9,64(31)
	b .L43
	.cfi_endproc
.LFE56:
	.size	CObjUpdateFunc, .-CObjUpdateFunc
	.globl __addsf3
	.globl __mulsf3
	.globl __divsf3
	.section	.text.HSD_CObjEraseScreen,"ax",@progbits
	.align 2
	.globl HSD_CObjEraseScreen
	.type	HSD_CObjEraseScreen, @function
HSD_CObjEraseScreen:
.LFB52:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L63
	or. 9,4,5
	stw 28,32(1)
	.cfi_offset 28, -16
	stw 29,36(1)
	.cfi_offset 29, -12
	stw 30,40(1)
	.cfi_offset 30, -8
	mr 28,4
	mr 30,5
	mr 29,6
	beq- 0,.L74
.L65:
	stw 24,16(1)
	.cfi_offset 24, -32
	lwz 24,56(31)
	lwz 4,60(31)
	mflr 0
	.cfi_register 65, 0
	mr 3,24
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 27,28(1)
	.cfi_offset 27, -20
	stw 22,8(1)
	.cfi_offset 22, -40
	stw 23,12(1)
	.cfi_offset 23, -36
	stw 25,20(1)
	.cfi_offset 25, -28
	stw 26,24(1)
	.cfi_offset 26, -24
	bl __addsf3
	lis 4,0x3f00
	bl __mulsf3
	lbz 9,80(31)
	mr 27,3
	cmpwi 0,9,2
	beq- 0,.L66
	cmpwi 0,9,3
	beq- 0,.L67
	cmpwi 0,9,1
	beq- 0,.L75
.L68:
	addic 10,29,-1
	subfe 10,10,29
	addic 9,30,-1
	lwz 0,52(1)
	subfe 9,9,30
	addic 8,28,-1
	lwz 24,16(1)
	.cfi_restore 24
	lwz 29,36(1)
	.cfi_restore 29
	lwz 30,40(1)
	.cfi_restore 30
	lwz 31,44(1)
	addis 7,27,0x8000
	mr 6,25
	lwz 27,28(1)
	.cfi_restore 27
	lwz 25,20(1)
	.cfi_restore 25
	mr 5,22
	mr 4,23
	lwz 22,8(1)
	.cfi_restore 22
	lwz 23,12(1)
	.cfi_restore 23
	mr 3,26
	subfe 8,8,28
	lwz 26,24(1)
	.cfi_restore 26
	lwz 28,32(1)
	.cfi_restore 28
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b HSD_EraseRect
.L74:
	.cfi_def_cfa_offset 48
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	cmpwi 0,6,0
	beq- 0,.L65
	lwz 28,32(1)
	.cfi_restore 28
	lwz 29,36(1)
	.cfi_restore 29
	lwz 30,40(1)
	.cfi_restore 30
.L63:
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L67:
	.cfi_def_cfa_offset 48
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 25,76(31)
	lwz 22,72(31)
	lwz 26,64(31)
	lwz 23,68(31)
	b .L68
.L75:
	lwz 3,64(31)
	lis 4,0x3c8e
	ori 4,4,0xfa35
	bl __mulsf3
	lis 4,0x3f00
	bl __mulsf3
	bl tanf
	mr 4,27
	bl __mulsf3
	lwz 4,68(31)
	mr 26,3
	bl __mulsf3
	mr 25,3
	addis 23,26,0x8000
	addis 22,3,0x8000
	b .L68
.L66:
	mr 4,24
	bl __divsf3
	lwz 4,76(31)
	mr 24,3
	bl __mulsf3
	lwz 4,72(31)
	mr 25,3
	mr 3,24
	bl __mulsf3
	lwz 4,64(31)
	mr 22,3
	mr 3,24
	bl __mulsf3
	lwz 4,68(31)
	mr 26,3
	mr 3,24
	bl __mulsf3
	mr 23,3
	b .L68
	.cfi_endproc
.LFE52:
	.size	HSD_CObjEraseScreen, .-HSD_CObjEraseScreen
	.section	.text.HSD_CObjRemoveAnimByFlags,"ax",@progbits
	.align 2
	.globl HSD_CObjRemoveAnimByFlags
	.type	HSD_CObjRemoveAnimByFlags, @function
HSD_CObjRemoveAnimByFlags:
.LFB53:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L76
	lwz 3,132(31)
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl HSD_AObjRemove
	li 9,0
	lwz 3,36(31)
	stw 9,132(31)
	bl HSD_WObjRemoveAnim
	lwz 0,20(1)
	lwz 3,40(31)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b HSD_WObjRemoveAnim
.L76:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -4
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE53:
	.size	HSD_CObjRemoveAnimByFlags, .-HSD_CObjRemoveAnimByFlags
	.section	.text.HSD_CObjRemoveAnim,"ax",@progbits
	.align 2
	.globl HSD_CObjRemoveAnim
	.type	HSD_CObjRemoveAnim, @function
HSD_CObjRemoveAnim:
.LFB54:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L79
	lwz 3,132(31)
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	bl HSD_AObjRemove
	li 9,0
	lwz 3,36(31)
	stw 9,132(31)
	bl HSD_WObjRemoveAnim
	lwz 0,20(1)
	lwz 3,40(31)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b HSD_WObjRemoveAnim
.L79:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -4
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE54:
	.size	HSD_CObjRemoveAnim, .-HSD_CObjRemoveAnim
	.section	.text.HSD_CObjAddAnim,"ax",@progbits
	.align 2
	.globl HSD_CObjAddAnim
	.type	HSD_CObjAddAnim, @function
HSD_CObjAddAnim:
.LFB55:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L82
	cmpwi 0,4,0
	stw 30,8(1)
	.cfi_offset 30, -8
	mr 30,4
	beq- 0,.L95
	lwz 3,132(31)
	mflr 0
	.cfi_register 65, 0
	cmpwi 0,3,0
	stw 0,20(1)
	.cfi_offset 65, 4
	beq- 0,.L84
	bl HSD_AObjRemove
.L84:
	lwz 3,0(30)
	bl HSD_AObjLoadDesc
	stw 3,132(31)
	lwz 4,4(30)
	lwz 3,36(31)
	bl HSD_WObjAddAnim
	lwz 0,20(1)
	lwz 4,8(30)
	lwz 3,40(31)
	lwz 30,8(1)
	.cfi_restore 30
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b HSD_WObjAddAnim
.L95:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lwz 30,8(1)
	.cfi_restore 30
.L82:
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE55:
	.size	HSD_CObjAddAnim, .-HSD_CObjAddAnim
	.section	.text.HSD_CObjAnim,"ax",@progbits
	.align 2
	.globl HSD_CObjAnim
	.type	HSD_CObjAnim, @function
HSD_CObjAnim:
.LFB57:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L96
	lwz 3,132(31)
	lis 5,CObjUpdateFunc@ha
	mflr 0
	.cfi_register 65, 0
	mr 4,31
	la 5,CObjUpdateFunc@l(5)
	stw 0,20(1)
	.cfi_offset 65, 4
	bl HSD_AObjInterpretAnim
	lwz 3,36(31)
	bl HSD_WObjInterpretAnim
	lwz 0,20(1)
	lwz 3,40(31)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b HSD_WObjInterpretAnim
.L96:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -4
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE57:
	.size	HSD_CObjAnim, .-HSD_CObjAnim
	.section	.text.HSD_CObjReqAnim,"ax",@progbits
	.align 2
	.globl HSD_CObjReqAnim
	.type	HSD_CObjReqAnim, @function
HSD_CObjReqAnim:
.LFB58:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L99
	lwz 3,132(31)
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 30,8(1)
	.cfi_offset 30, -8
	mr 30,4
	bl HSD_AObjReqAnim
	lwz 3,36(31)
	mr 4,30
	bl HSD_WObjReqAnim
	lwz 0,20(1)
	lwz 3,40(31)
	mr 4,30
	lwz 31,12(1)
	lwz 30,8(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b HSD_WObjReqAnim
.L99:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -4
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE58:
	.size	HSD_CObjReqAnim, .-HSD_CObjReqAnim
	.globl __extendsfdf2
	.section	.text.makeProjectionMtx,"ax",@progbits
	.align 2
	.globl makeProjectionMtx
	.type	makeProjectionMtx, @function
makeProjectionMtx:
.LFB59:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,4
	lbz 9,80(3)
	mr 31,3
	cmpwi 0,9,2
	beq- 0,.L103
	cmpwi 0,9,3
	beq- 0,.L104
	cmpwi 0,9,1
	beq- 0,.L108
	lwz 30,56(1)
	lwz 31,60(1)
	mr 3,10
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L103:
	.cfi_restore_state
	lwz 3,72(3)
	mflr 0
	.cfi_register 65, 0
	stw 0,68(1)
	.cfi_offset 65, 4
	stw 24,32(1)
	.cfi_offset 24, -32
	stw 25,36(1)
	.cfi_offset 25, -28
	stw 26,40(1)
	.cfi_offset 26, -24
	stw 27,44(1)
	.cfi_offset 27, -20
	stw 28,48(1)
	.cfi_offset 28, -16
	stw 29,52(1)
	.cfi_offset 29, -12
	bl __extendsfdf2
	mr 24,3
	lwz 3,68(31)
	mr 25,4
	bl __extendsfdf2
	mr 26,3
	lwz 3,64(31)
	mr 27,4
	bl __extendsfdf2
	mr 28,3
	lwz 3,60(31)
	mr 29,4
	bl __extendsfdf2
	mr 10,3
	lwz 3,56(31)
	stw 10,24(1)
	stw 4,28(1)
	bl __extendsfdf2
	mr 10,3
	lwz 3,76(31)
	stw 10,16(1)
	stw 4,20(1)
	bl __extendsfdf2
	stw 3,8(1)
	stw 4,12(1)
	mr 9,24
	mr 10,25
	mr 7,26
	mr 8,27
	mr 5,28
	mr 6,29
	mr 3,30
	bl C_MTXFrustum
	lwz 24,32(1)
	.cfi_restore 24
	lwz 25,36(1)
	.cfi_restore 25
	lwz 26,40(1)
	.cfi_restore 26
	lwz 27,44(1)
	.cfi_restore 27
	lwz 28,48(1)
	.cfi_restore 28
	lwz 29,52(1)
	.cfi_restore 29
.L106:
	lwz 0,68(1)
	li 10,0
	lwz 30,56(1)
	lwz 31,60(1)
	mr 3,10
	mtlr 0
	.cfi_restore 65
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L108:
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lwz 7,60(3)
	lwz 6,56(3)
	lwz 5,68(3)
	lwz 4,64(3)
	mflr 0
	.cfi_remember_state
	.cfi_register 65, 0
	mr 3,30
	stw 0,68(1)
	.cfi_offset 65, 4
	bl C_MTXPerspective
	b .L106
.L104:
	.cfi_restore_state
	lwz 9,60(3)
	lwz 8,56(3)
	lwz 7,76(3)
	lwz 6,72(3)
	lwz 5,68(3)
	lwz 4,64(3)
	mflr 0
	.cfi_register 65, 0
	mr 3,30
	stw 0,68(1)
	.cfi_offset 65, 4
	bl C_MTXOrtho
	lwz 0,68(1)
	li 10,1
	lwz 30,56(1)
	lwz 31,60(1)
	mr 3,10
	mtlr 0
	.cfi_restore 65
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE59:
	.size	makeProjectionMtx, .-makeProjectionMtx
	.globl __floatunsisf
	.globl __subsf3
	.globl __floatsisf
	.globl __fixunssfsi
	.section	.text.setupNormalCamera,"ax",@progbits
	.align 2
	.globl setupNormalCamera
	.type	setupNormalCamera, @function
setupNormalCamera:
.LFB61:
	.cfi_startproc
	stwu 1,-96(1)
	.cfi_def_cfa_offset 96
	mflr 0
	stw 30,88(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	lis 30,HSD_VIData@ha
	la 30,HSD_VIData@l(30)
	stw 31,92(1)
	.cfi_offset 31, -4
	mr 31,3
	lhz 3,4(30)
	stw 0,100(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 29,84(1)
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	bl __floatunsisf
	mr 29,3
	lhz 3,14(30)
	bl __floatunsisf
	mr 4,3
	mr 3,29
	bl __divsf3
	mr 29,3
	lhz 3,6(30)
	bl __floatunsisf
	mr 28,3
	lhz 3,16(30)
	bl __floatunsisf
	mr 4,3
	mr 3,28
	bl __divsf3
	lwz 4,12(31)
	mr 28,3
	mr 3,29
	bl __mulsf3
	lwz 4,20(31)
	mr 27,3
	mr 3,28
	bl __mulsf3
	lwz 4,16(31)
	mr 26,3
	mr 3,29
	bl __mulsf3
	mr 4,27
	bl __subsf3
	lwz 4,24(31)
	mr 25,3
	mr 3,28
	bl __mulsf3
	mr 4,26
	bl __subsf3
	lbz 9,24(30)
	lis 10,HSD_CObj_804DE478@ha
	cmpwi 0,9,0
	lis 9,HSD_CObj_804DE47C@ha
	lwz 10,HSD_CObj_804DE478@l(10)
	lwz 9,HSD_CObj_804DE47C@l(9)
	stw 10,56(1)
	stw 9,60(1)
	mr 30,3
	beq- 0,.L110
	bl VIGetNextField
	lwz 8,60(1)
	lwz 7,56(1)
	mr 9,3
	mr 6,30
	mr 5,25
	mr 4,26
	mr 3,27
	bl GXSetViewportJitter
.L111:
	lhz 3,28(31)
	bl __floatsisf
	mr 4,29
	bl __mulsf3
	mr 30,3
	lhz 3,32(31)
	bl __floatsisf
	mr 4,28
	bl __mulsf3
	mr 27,3
	lhz 3,34(31)
	bl __floatsisf
	mr 4,28
	bl __mulsf3
	mr 4,27
	bl __subsf3
	bl __fixunssfsi
	mr 26,3
	lhz 3,30(31)
	bl __floatsisf
	mr 4,29
	bl __mulsf3
	mr 4,30
	bl __subsf3
	bl __fixunssfsi
	mr 28,3
	mr 3,27
	bl __fixunssfsi
	mr 29,3
	mr 3,30
	bl __fixunssfsi
	mr 6,26
	mr 5,28
	mr 4,29
	bl GXSetScissor
	addi 4,1,8
	mr 3,31
	bl makeProjectionMtx
	mr 4,3
	addi 3,1,8
	bl GXSetProjection
	lwz 0,100(1)
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	li 3,1
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,96
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_def_cfa_offset 0
	blr
.L110:
	.cfi_restore_state
	mr 6,3
	mr 8,9
	mr 7,10
	mr 5,25
	mr 4,26
	mr 3,27
	bl GXSetViewport
	b .L111
	.cfi_endproc
.LFE61:
	.size	setupNormalCamera, .-setupNormalCamera
	.section	.text.HSD_CObjSetupViewingMtx,"ax",@progbits
	.align 2
	.globl HSD_CObjSetupViewingMtx
	.type	HSD_CObjSetupViewingMtx, @function
HSD_CObjSetupViewingMtx:
.LFB63:
	.cfi_startproc
	lwz 9,8(3)
	andi. 10,9,0x2
	bnelr- 0
	andis. 9,9,0x4000
	beq- 0,.L126
.L115:
	b HSD_CObjSetupViewingMtx.part.0
.L126:
	lwz 9,36(3)
	cmpwi 0,9,0
	beq- 0,.L116
	lwz 9,8(9)
	andi. 9,9,0x2
	bne- 0,.L115
.L116:
	lwz 9,40(3)
	cmpwi 0,9,0
	beqlr- 0
	lwz 9,8(9)
	andi. 9,9,0x2
	beqlr- 0
	b HSD_CObjSetupViewingMtx.part.0
	.cfi_endproc
.LFE63:
	.size	HSD_CObjSetupViewingMtx, .-HSD_CObjSetupViewingMtx
	.section	.text.HSD_CObjSetCurrent,"ax",@progbits
	.align 2
	.globl HSD_CObjSetCurrent
	.type	HSD_CObjSetCurrent, @function
HSD_CObjSetCurrent:
.LFB65:
	.cfi_startproc
	stwu 1,-96(1)
	.cfi_def_cfa_offset 96
	stw 31,92(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L129
	mflr 0
	.cfi_register 65, 0
	stw 0,100(1)
	.cfi_offset 65, 4
	stw 30,88(1)
	.cfi_offset 30, -8
	bl HSD_GetCurrentRenderPass
	mr 30,3
	bl _HSD_ZListClear
	cmplwi 0,30,2
	lis 9,current@ha
	stw 31,current@l(9)
	beq- 0,.L130
	bgt- 0,.L131
	cmpwi 0,30,0
	beq- 0,.L158
	mr 3,31
	bl setupTopHalfCamera
	cmpwi 0,3,0
	bne- 0,.L135
	lwz 0,100(1)
	lwz 30,88(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L129:
	li 3,0
.L160:
	lwz 31,92(1)
	rlwinm 3,3,0,31,31
	addi 1,1,96
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L131:
	.cfi_def_cfa_offset 96
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmplwi 0,30,3
	bne- 0,.L134
	stw 28,80(1)
	.cfi_offset 28, -16
	lis 10,HSD_CObj_804DE47C@ha
	lwz 28,20(31)
	lis 9,HSD_CObj_804DE478@ha
	lwz 10,HSD_CObj_804DE47C@l(10)
	lwz 9,HSD_CObj_804DE478@l(9)
	lwz 3,24(31)
	mr 4,28
	stw 10,72(1)
	stw 9,76(1)
	stw 29,84(1)
	.cfi_offset 29, -12
	bl __subsf3
	lwz 29,12(31)
	mr 30,3
	lwz 3,16(31)
	mr 4,29
	bl __subsf3
	lwz 8,72(1)
	lwz 7,76(1)
	mr 5,3
	mr 4,28
	mr 3,29
	mr 6,30
	bl GXSetViewport
	lhz 4,32(31)
	lhz 3,28(31)
	lhz 6,34(31)
	lhz 5,30(31)
	subf 6,4,6
	subf 5,3,5
	bl GXSetScissor
	addi 4,1,8
	mr 3,31
	bl makeProjectionMtx
	mr 4,3
	addi 3,1,8
	bl GXSetProjection
	lwz 28,80(1)
	.cfi_restore 28
	lwz 29,84(1)
	.cfi_restore 29
.L135:
	lwz 9,8(31)
	andi. 10,9,0x2
	beq- 0,.L159
.L139:
	lwz 0,100(1)
	li 3,1
	lwz 30,88(1)
	.cfi_remember_state
	.cfi_restore 30
	lwz 31,92(1)
	rlwinm 3,3,0,31,31
	mtlr 0
	.cfi_restore 65
	addi 1,1,96
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L134:
	.cfi_restore_state
	lis 5,HSD_CObj_80406294@ha
	lis 3,HSD_CObj_804D5D40@ha
	la 3,HSD_CObj_804D5D40@l(3)
	la 5,HSD_CObj_80406294@l(5)
	li 4,624
	bl HSD_Panic
	lwz 0,100(1)
	lwz 30,88(1)
	.cfi_remember_state
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	li 3,0
	b .L160
.L130:
	.cfi_restore_state
	mr 3,31
	bl setupBottomHalfCamera
	cmpwi 0,3,0
	bne- 0,.L135
	lwz 0,100(1)
	lwz 30,88(1)
	.cfi_remember_state
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	b .L129
.L158:
	.cfi_restore_state
	mr 3,31
	bl setupNormalCamera
	cmpwi 0,3,0
	bne- 0,.L135
	lwz 0,100(1)
	lwz 30,88(1)
	.cfi_remember_state
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	b .L129
.L159:
	.cfi_restore_state
	andis. 9,9,0x4000
	bne- 0,.L140
	lwz 9,36(31)
	cmpwi 0,9,0
	beq- 0,.L141
	lwz 9,8(9)
	andi. 9,9,0x2
	bne- 0,.L140
.L141:
	lwz 9,40(31)
	cmpwi 0,9,0
	beq- 0,.L139
	lwz 9,8(9)
	andi. 9,9,0x2
	beq- 0,.L139
.L140:
	mr 3,31
	bl HSD_CObjSetupViewingMtx.part.0
	b .L139
	.cfi_endproc
.LFE65:
	.size	HSD_CObjSetCurrent, .-HSD_CObjSetCurrent
	.section	.text.HSD_CObjEndCurrent,"ax",@progbits
	.align 2
	.globl HSD_CObjEndCurrent
	.type	HSD_CObjEndCurrent, @function
HSD_CObjEndCurrent:
.LFB66:
	.cfi_startproc
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	mflr 0
	stw 0,12(1)
	.cfi_offset 65, 4
	bl _HSD_ZListSort
	lwz 0,12(1)
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	b _HSD_ZListDisp
	.cfi_endproc
.LFE66:
	.size	HSD_CObjEndCurrent, .-HSD_CObjEndCurrent
	.section	.text.HSD_CObjGetInterestWObj,"ax",@progbits
	.align 2
	.globl HSD_CObjGetInterestWObj
	.type	HSD_CObjGetInterestWObj, @function
HSD_CObjGetInterestWObj:
.LFB67:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L166
	lwz 3,40(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L166:
	.cfi_restore_state
	lis 5,HSD_CObj_804D5D48@ha
	lis 3,HSD_CObj_804D5D40@ha
	mflr 0
	.cfi_register 65, 0
	la 3,HSD_CObj_804D5D40@l(3)
	la 5,HSD_CObj_804D5D48@l(5)
	li 4,661
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __assert
	lwz 0,20(1)
	lwz 3,40(31)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE67:
	.size	HSD_CObjGetInterestWObj, .-HSD_CObjGetInterestWObj
	.section	.text.HSD_CObjGetEyePositionWObj,"ax",@progbits
	.align 2
	.globl HSD_CObjGetEyePositionWObj
	.type	HSD_CObjGetEyePositionWObj, @function
HSD_CObjGetEyePositionWObj:
.LFB68:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L170
	lwz 3,36(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L170:
	.cfi_restore_state
	lis 5,HSD_CObj_804D5D48@ha
	lis 3,HSD_CObj_804D5D40@ha
	mflr 0
	.cfi_register 65, 0
	la 3,HSD_CObj_804D5D40@l(3)
	la 5,HSD_CObj_804D5D48@l(5)
	li 4,685
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __assert
	lwz 0,20(1)
	lwz 3,36(31)
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE68:
	.size	HSD_CObjGetEyePositionWObj, .-HSD_CObjGetEyePositionWObj
	.section	.text.HSD_CObjGetInterest,"ax",@progbits
	.align 2
	.globl HSD_CObjGetInterest
	.type	HSD_CObjGetInterest, @function
HSD_CObjGetInterest:
.LFB69:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	stw 31,20(1)
	.cfi_offset 31, -4
	mr. 31,3
	stw 30,16(1)
	.cfi_offset 30, -8
	mr 30,4
	beq- 0,.L174
	lwz 3,40(31)
	mr 4,30
	lwz 31,20(1)
	lwz 30,16(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjGetPosition
.L174:
	.cfi_restore_state
	stw 28,8(1)
	.cfi_offset 28, -16
	stw 29,12(1)
	.cfi_offset 29, -12
	lis 28,HSD_CObj_804D5D48@ha
	lis 29,HSD_CObj_804D5D40@ha
	la 28,HSD_CObj_804D5D48@l(28)
	la 29,HSD_CObj_804D5D40@l(29)
	mflr 0
	.cfi_register 65, 0
	mr 5,28
	mr 3,29
	li 4,709
	stw 0,28(1)
	.cfi_offset 65, 4
	bl __assert
	mr 3,29
	mr 5,28
	li 4,661
	bl __assert
	lwz 0,28(1)
	lwz 3,40(31)
	lwz 28,8(1)
	.cfi_restore 28
	lwz 29,12(1)
	.cfi_restore 29
	lwz 31,20(1)
	mr 4,30
	lwz 30,16(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,24
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjGetPosition
	.cfi_endproc
.LFE69:
	.size	HSD_CObjGetInterest, .-HSD_CObjGetInterest
	.section	.text.HSD_CObjSetInterest,"ax",@progbits
	.align 2
	.globl HSD_CObjSetInterest
	.type	HSD_CObjSetInterest, @function
HSD_CObjSetInterest:
.LFB70:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	stw 31,20(1)
	.cfi_offset 31, -4
	mr. 31,3
	stw 30,16(1)
	.cfi_offset 30, -8
	mr 30,4
	beq- 0,.L178
	lwz 3,40(31)
	mr 4,30
	lwz 31,20(1)
	lwz 30,16(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjSetPosition
.L178:
	.cfi_restore_state
	stw 28,8(1)
	.cfi_offset 28, -16
	stw 29,12(1)
	.cfi_offset 29, -12
	lis 28,HSD_CObj_804D5D48@ha
	lis 29,HSD_CObj_804D5D40@ha
	la 28,HSD_CObj_804D5D48@l(28)
	la 29,HSD_CObj_804D5D40@l(29)
	mflr 0
	.cfi_register 65, 0
	mr 5,28
	mr 3,29
	li 4,721
	stw 0,28(1)
	.cfi_offset 65, 4
	bl __assert
	mr 3,29
	mr 5,28
	li 4,661
	bl __assert
	lwz 0,28(1)
	lwz 3,40(31)
	lwz 28,8(1)
	.cfi_restore 28
	lwz 29,12(1)
	.cfi_restore 29
	lwz 31,20(1)
	mr 4,30
	lwz 30,16(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,24
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjSetPosition
	.cfi_endproc
.LFE70:
	.size	HSD_CObjSetInterest, .-HSD_CObjSetInterest
	.section	.text.HSD_CObjGetEyePosition,"ax",@progbits
	.align 2
	.globl HSD_CObjGetEyePosition
	.type	HSD_CObjGetEyePosition, @function
HSD_CObjGetEyePosition:
.LFB71:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	stw 31,20(1)
	.cfi_offset 31, -4
	mr. 31,3
	stw 30,16(1)
	.cfi_offset 30, -8
	mr 30,4
	beq- 0,.L182
	lwz 3,36(31)
	mr 4,30
	lwz 31,20(1)
	lwz 30,16(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjGetPosition
.L182:
	.cfi_restore_state
	stw 28,8(1)
	.cfi_offset 28, -16
	stw 29,12(1)
	.cfi_offset 29, -12
	lis 28,HSD_CObj_804D5D48@ha
	lis 29,HSD_CObj_804D5D40@ha
	la 28,HSD_CObj_804D5D48@l(28)
	la 29,HSD_CObj_804D5D40@l(29)
	mflr 0
	.cfi_register 65, 0
	mr 5,28
	mr 3,29
	li 4,733
	stw 0,28(1)
	.cfi_offset 65, 4
	bl __assert
	mr 3,29
	mr 5,28
	li 4,685
	bl __assert
	lwz 0,28(1)
	lwz 3,36(31)
	lwz 28,8(1)
	.cfi_restore 28
	lwz 29,12(1)
	.cfi_restore 29
	lwz 31,20(1)
	mr 4,30
	lwz 30,16(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,24
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjGetPosition
	.cfi_endproc
.LFE71:
	.size	HSD_CObjGetEyePosition, .-HSD_CObjGetEyePosition
	.section	.text.HSD_CObjSetEyePosition,"ax",@progbits
	.align 2
	.globl HSD_CObjSetEyePosition
	.type	HSD_CObjSetEyePosition, @function
HSD_CObjSetEyePosition:
.LFB72:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	stw 31,20(1)
	.cfi_offset 31, -4
	mr. 31,3
	stw 30,16(1)
	.cfi_offset 30, -8
	mr 30,4
	beq- 0,.L186
	lwz 3,36(31)
	mr 4,30
	lwz 31,20(1)
	lwz 30,16(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjSetPosition
.L186:
	.cfi_restore_state
	stw 28,8(1)
	.cfi_offset 28, -16
	stw 29,12(1)
	.cfi_offset 29, -12
	lis 28,HSD_CObj_804D5D48@ha
	lis 29,HSD_CObj_804D5D40@ha
	la 28,HSD_CObj_804D5D48@l(28)
	la 29,HSD_CObj_804D5D40@l(29)
	mflr 0
	.cfi_register 65, 0
	mr 5,28
	mr 3,29
	li 4,745
	stw 0,28(1)
	.cfi_offset 65, 4
	bl __assert
	mr 3,29
	mr 5,28
	li 4,685
	bl __assert
	lwz 0,28(1)
	lwz 3,36(31)
	lwz 28,8(1)
	.cfi_restore 28
	lwz 29,12(1)
	.cfi_restore 29
	lwz 31,20(1)
	mr 4,30
	lwz 30,16(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,24
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b HSD_WObjSetPosition
	.cfi_endproc
.LFE72:
	.size	HSD_CObjSetEyePosition, .-HSD_CObjSetEyePosition
	.globl __gesf2
	.section	.text.HSD_CObjGetEyeVector,"ax",@progbits
	.align 2
	.globl HSD_CObjGetEyeVector
	.type	HSD_CObjGetEyeVector, @function
HSD_CObjGetEyeVector:
.LFB75:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 30,40(1)
	.cfi_offset 30, -8
	mr. 30,3
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,4
	beq- 0,.L188
	lwz 3,36(30)
	cmpwi 0,3,0
	beq- 0,.L188
	lwz 9,40(30)
	cmpwi 0,9,0
	beq- 0,.L188
	cmpwi 0,4,0
	beq- 0,.L189
	mflr 0
	.cfi_register 65, 0
	addi 4,1,20
	stw 0,52(1)
	.cfi_offset 65, 4
	bl HSD_WObjGetPosition
	lwz 3,40(30)
	addi 4,1,8
	bl HSD_WObjGetPosition
	mr 5,31
	addi 4,1,20
	addi 3,1,8
	bl PSVECSubtract
	lis 9,HSD_CObj_804DE498@ha
	lwz 30,HSD_CObj_804DE498@l(9)
	lwz 4,0(31)
	mr 3,30
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	blt- 0,.L190
	lwz 4,4(31)
	mr 3,30
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	blt- 0,.L190
	lwz 4,8(31)
	mr 3,30
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	bge- 0,.L211
.L190:
	mr 3,31
	mr 4,31
	bl PSVECNormalize
	lwz 0,52(1)
	li 3,0
	mtlr 0
	.cfi_restore 65
.L187:
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L188:
	.cfi_restore_state
	cmpwi 0,31,0
	beq- 0,.L189
.L195:
	lis 9,HSD_CObj_804DE478@ha
	lis 10,HSD_CObj_804DE494@ha
	lwz 9,HSD_CObj_804DE478@l(9)
	lwz 10,HSD_CObj_804DE494@l(10)
	stw 9,0(31)
	stw 9,4(31)
	stw 10,8(31)
.L189:
	li 3,-1
	b .L187
.L211:
	.cfi_offset 65, 4
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	b .L195
	.cfi_endproc
.LFE75:
	.size	HSD_CObjGetEyeVector, .-HSD_CObjGetEyeVector
	.section	.rodata.HSD_CObjGetEyeDistance.str1.4,"aMS",@progbits,1
	.align 2
.LC2:
	.string	"cobj->eyepos"
	.align 2
.LC3:
	.string	"cobj->interest"
	.section	.text.HSD_CObjGetEyeDistance,"ax",@progbits
	.align 2
	.globl HSD_CObjGetEyeDistance
	.type	HSD_CObjGetEyeDistance, @function
HSD_CObjGetEyeDistance:
.LFB76:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 31,60(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L218
	lwz 9,36(31)
	mflr 0
	.cfi_register 65, 0
	cmpwi 0,9,0
	stw 0,68(1)
	.cfi_offset 65, 4
	beq- 0,.L219
	lwz 9,40(31)
	cmpwi 0,9,0
	beq- 0,.L220
.L216:
	lwz 3,36(31)
	addi 4,1,32
	bl HSD_WObjGetPosition
	lwz 3,40(31)
	addi 4,1,20
	bl HSD_WObjGetPosition
	addi 4,1,32
	addi 3,1,20
	addi 5,1,8
	bl PSVECSubtract
	addi 3,1,8
	bl PSVECMag
	lwz 0,68(1)
	lwz 31,60(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,64
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L218:
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -4
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L219:
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lis 5,.LC2@ha
	lis 3,HSD_CObj_804D5D40@ha
	la 5,.LC2@l(5)
	la 3,HSD_CObj_804D5D40@l(3)
	li 4,807
	bl __assert
	lwz 9,40(31)
	cmpwi 0,9,0
	bne+ 0,.L216
.L220:
	lis 5,.LC3@ha
	lis 3,HSD_CObj_804D5D40@ha
	la 5,.LC3@l(5)
	la 3,HSD_CObj_804D5D40@l(3)
	li 4,808
	bl __assert
	b .L216
	.cfi_endproc
.LFE76:
	.size	HSD_CObjGetEyeDistance, .-HSD_CObjGetEyeDistance
	.section	.text.vec_normalize_check,"ax",@progbits
	.align 2
	.globl vec_normalize_check
	.type	vec_normalize_check, @function
vec_normalize_check:
.LFB77:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	stw 31,20(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L226
	cmpwi 0,4,0
	stw 30,16(1)
	.cfi_offset 30, -8
	mr 30,4
	beq- 0,.L227
	lis 9,HSD_CObj_804DE498@ha
	stw 29,12(1)
	.cfi_offset 29, -12
	lwz 4,0(31)
	lwz 29,HSD_CObj_804DE498@l(9)
	mflr 0
	.cfi_register 65, 0
	mr 3,29
	rlwinm 4,4,0,1,31
	stw 0,28(1)
	.cfi_offset 65, 4
	bl __gesf2
	cmpwi 0,3,0
	blt- 0,.L223
	lwz 4,4(31)
	mr 3,29
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	blt- 0,.L223
	lwz 4,8(31)
	mr 3,29
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	bge- 0,.L228
.L223:
	mr 4,30
	mr 3,31
	bl PSVECNormalize
	lwz 0,28(1)
	lwz 29,12(1)
	.cfi_restore 29
	lwz 30,16(1)
	.cfi_restore 30
	li 3,0
	mtlr 0
	.cfi_restore 65
.L221:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L228:
	.cfi_def_cfa_offset 24
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 0,28(1)
	lwz 29,12(1)
	.cfi_restore 29
	lwz 30,16(1)
	.cfi_restore 30
	li 3,-1
	mtlr 0
	.cfi_restore 65
	b .L221
.L227:
	.cfi_offset 30, -8
	lwz 30,16(1)
	.cfi_restore 30
	li 3,-1
	b .L221
.L226:
	li 3,-1
	b .L221
	.cfi_endproc
.LFE77:
	.size	vec_normalize_check, .-vec_normalize_check
	.globl __floatsidf
	.globl __subdf3
	.globl __ltdf2
	.section	.text.roll2upvec,"ax",@progbits
	.align 2
	.globl roll2upvec
	.type	roll2upvec, @function
roll2upvec:
.LFB78:
	.cfi_startproc
	stwu 1,-128(1)
	.cfi_def_cfa_offset 128
	stw 31,124(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L233
	lwz 3,36(31)
	cmpwi 0,3,0
	beq- 0,.L233
	lwz 9,40(31)
	cmpwi 0,9,0
	beq- 0,.L233
	mflr 0
	.cfi_register 65, 0
	stw 29,116(1)
	.cfi_offset 29, -12
	mr 29,4
	addi 4,1,56
	stw 0,132(1)
	.cfi_offset 65, 4
	stw 30,120(1)
	.cfi_offset 30, -8
	mr 30,5
	bl HSD_WObjGetPosition
	lwz 3,40(31)
	addi 4,1,8
	bl HSD_WObjGetPosition
	addi 4,1,56
	addi 3,1,8
	addi 5,1,80
	bl PSVECSubtract
	lis 9,HSD_CObj_804DE498@ha
	lwz 31,HSD_CObj_804DE498@l(9)
	lwz 4,80(1)
	mr 3,31
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	blt- 0,.L234
	lwz 4,84(1)
	mr 3,31
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	blt- 0,.L234
	lwz 4,88(1)
	mr 3,31
	rlwinm 4,4,0,1,31
	bl __gesf2
	cmpwi 0,3,0
	bge- 0,.L254
.L234:
	addi 4,1,80
	mr 3,4
	stw 26,104(1)
	.cfi_offset 26, -24
	stw 27,108(1)
	.cfi_offset 27, -20
	bl PSVECNormalize
	lwz 3,84(1)
	lis 9,HSD_CObj_804DE4B0@ha
	la 9,HSD_CObj_804DE4B0@l(9)
	lwz 26,0(9)
	lwz 27,4(9)
	bl __extendsfdf2
	bl __fabs
	bl __floatsidf
	mr 6,4
	mr 5,3
	mr 4,27
	mr 3,26
	bl __subdf3
	lis 9,HSD_CObj_804DE4B8@ha
	la 9,HSD_CObj_804DE4B8@l(9)
	lwz 5,0(9)
	lwz 6,4(9)
	bl __ltdf2
	cmpwi 0,3,0
	blt- 0,.L237
	lwz 26,80(1)
	lwz 27,88(1)
	mr 4,26
	mr 3,26
	bl __mulsf3
	mr 31,3
	mr 4,27
	mr 3,27
	bl __mulsf3
	mr 4,3
	mr 3,31
	bl __addsf3
	bl sqrtf
	lwz 9,84(1)
	mr 4,3
	addis 3,9,0x8000
	stw 4,72(1)
	bl __divsf3
	mr 31,3
	mr 4,31
	mr 3,26
	bl __mulsf3
	mr 9,3
	mr 4,31
	mr 3,27
	stw 9,68(1)
	bl __mulsf3
	mr 9,3
.L240:
	addis 5,30,0x8000
	addi 4,1,80
	addi 3,1,8
	stw 9,76(1)
	bl PSMTXRotAxisRad
	addi 5,1,56
	addi 3,1,8
	addi 4,1,68
	bl PSMTXMultVecSR
	mr 4,29
	addi 3,1,56
	bl PSVECNormalize
	lwz 0,132(1)
	lwz 26,104(1)
	.cfi_restore 26
	lwz 27,108(1)
	.cfi_restore 27
	lwz 29,116(1)
	.cfi_restore 29
	lwz 30,120(1)
	.cfi_restore 30
	li 3,0
	mtlr 0
	.cfi_restore 65
.L232:
	lwz 31,124(1)
	addi 1,1,128
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L237:
	.cfi_def_cfa_offset 128
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 26,84(1)
	lwz 27,88(1)
	mr 4,26
	mr 3,26
	bl __mulsf3
	mr 31,3
	mr 4,27
	mr 3,27
	bl __mulsf3
	mr 4,3
	mr 3,31
	bl __addsf3
	bl sqrtf
	lwz 9,80(1)
	mr 4,3
	addis 3,9,0x8000
	stw 4,68(1)
	bl __divsf3
	mr 31,3
	mr 4,31
	mr 3,26
	bl __mulsf3
	mr 9,3
	mr 4,31
	mr 3,27
	stw 9,72(1)
	bl __mulsf3
	mr 9,3
	b .L240
.L254:
	.cfi_restore 26
	.cfi_restore 27
	lwz 0,132(1)
	lwz 29,116(1)
	.cfi_restore 29
	lwz 30,120(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L233:
	li 3,-1
	b .L232
	.cfi_endproc
.LFE78:
	.size	roll2upvec, .-roll2upvec
	.section	.text.HSD_CObjSetMtxDirty,"ax",@progbits
	.align 2
	.globl HSD_CObjSetMtxDirty
	.type	HSD_CObjSetMtxDirty, @function
HSD_CObjSetMtxDirty:
.LFB79:
	.cfi_startproc
	lwz 9,8(3)
	oris 9,9,0xc000
	stw 9,8(3)
	blr
	.cfi_endproc
.LFE79:
	.size	HSD_CObjSetMtxDirty, .-HSD_CObjSetMtxDirty
	.section	.text.HSD_CObjMtxIsDirty,"ax",@progbits
	.align 2
	.globl HSD_CObjMtxIsDirty
	.type	HSD_CObjMtxIsDirty, @function
HSD_CObjMtxIsDirty:
.LFB80:
	.cfi_startproc
	lwz 9,8(3)
	andis. 9,9,0x4000
	bne- 0,.L259
	lwz 9,36(3)
	cmpwi 0,9,0
	beq- 0,.L258
	lwz 10,8(9)
	li 9,1
	andi. 10,10,0x2
	bne- 0,.L257
.L258:
	lwz 10,40(3)
	li 9,0
	cmpwi 0,10,0
	beq- 0,.L257
	lbz 9,11(10)
	rlwinm 9,9,31,31,31
	rlwinm 3,9,0,31,31
	blr
.L259:
	li 9,1
.L257:
	rlwinm 3,9,0,31,31
	blr
	.cfi_endproc
.LFE80:
	.size	HSD_CObjMtxIsDirty, .-HSD_CObjMtxIsDirty
	.section	.text.HSD_CObjGetViewingMtx,"ax",@progbits
	.align 2
	.globl HSD_CObjGetViewingMtx
	.type	HSD_CObjGetViewingMtx, @function
HSD_CObjGetViewingMtx:
.LFB81:
	.cfi_startproc
	lwz 9,8(3)
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	andi. 10,9,0x2
	stw 31,20(1)
	.cfi_offset 31, -4
	mr 31,3
	bne- 0,.L267
	andis. 9,9,0x4000
	beq- 0,.L280
.L268:
	mflr 0
	.cfi_register 65, 0
	mr 3,31
	stw 0,28(1)
	.cfi_offset 65, 4
	stw 4,8(1)
	bl HSD_CObjSetupViewingMtx.part.0
	lwz 0,28(1)
	lwz 4,8(1)
	mtlr 0
	.cfi_restore 65
.L267:
	addi 3,31,84
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b PSMTXCopy
.L280:
	.cfi_restore_state
	lwz 9,36(3)
	cmpwi 0,9,0
	beq- 0,.L269
	lwz 9,8(9)
	andi. 9,9,0x2
	bne- 0,.L268
.L269:
	lwz 9,40(31)
	cmpwi 0,9,0
	beq- 0,.L267
	lwz 9,8(9)
	andi. 9,9,0x2
	bne- 0,.L268
	b .L267
	.cfi_endproc
.LFE81:
	.size	HSD_CObjGetViewingMtx, .-HSD_CObjGetViewingMtx
	.section	.text.HSD_CObjGetInvViewingMtxPtrDirect,"ax",@progbits
	.align 2
	.globl HSD_CObjGetInvViewingMtxPtrDirect
	.type	HSD_CObjGetInvViewingMtxPtrDirect, @function
HSD_CObjGetInvViewingMtxPtrDirect:
.LFB82:
	.cfi_startproc
	lwz 9,8(3)
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	cmpwi 0,9,0
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	blt- 0,.L285
	lwz 3,136(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L285:
	.cfi_restore_state
	lwz 4,136(3)
	mflr 0
	.cfi_register 65, 0
	cmpwi 0,4,0
	stw 0,20(1)
	.cfi_offset 65, 4
	beq- 0,.L286
.L283:
	addi 3,31,84
	bl PSMTXInverse
	lwz 9,8(31)
	lwz 0,20(1)
	rlwinm 9,9,0,1,31
	lwz 3,136(31)
	stw 9,8(31)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L286:
	.cfi_restore_state
	bl HSD_MtxAlloc
	stw 3,136(31)
	mr 4,3
	b .L283
	.cfi_endproc
.LFE82:
	.size	HSD_CObjGetInvViewingMtxPtrDirect, .-HSD_CObjGetInvViewingMtxPtrDirect
	.section	.text.HSD_CObjGetViewingMtxPtr,"ax",@progbits
	.align 2
	.globl HSD_CObjGetViewingMtxPtr
	.type	HSD_CObjGetViewingMtxPtr, @function
HSD_CObjGetViewingMtxPtr:
.LFB83:
	.cfi_startproc
	lwz 9,8(3)
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	andi. 10,9,0x2
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	bne- 0,.L288
	andis. 9,9,0x4000
	beq- 0,.L301
.L289:
	mflr 0
	.cfi_register 65, 0
	mr 3,31
	stw 0,20(1)
	.cfi_offset 65, 4
	bl HSD_CObjSetupViewingMtx.part.0
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
.L288:
	addi 3,31,84
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L301:
	.cfi_restore_state
	lwz 9,36(3)
	cmpwi 0,9,0
	beq- 0,.L290
	lwz 9,8(9)
	andi. 9,9,0x2
	bne- 0,.L289
.L290:
	lwz 9,40(31)
	cmpwi 0,9,0
	beq- 0,.L288
	lwz 9,8(9)
	andi. 9,9,0x2
	bne- 0,.L289
	b .L288
	.cfi_endproc
.LFE83:
	.size	HSD_CObjGetViewingMtxPtr, .-HSD_CObjGetViewingMtxPtr
	.section	.text.HSD_CObjGetInvViewingMtxPtr,"ax",@progbits
	.align 2
	.globl HSD_CObjGetInvViewingMtxPtr
	.type	HSD_CObjGetInvViewingMtxPtr, @function
HSD_CObjGetInvViewingMtxPtr:
.LFB84:
	.cfi_startproc
	lwz 9,8(3)
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	andi. 10,9,0x2
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	bne- 0,.L303
	andis. 10,9,0x4000
	beq- 0,.L318
.L304:
	mflr 0
	.cfi_register 65, 0
	mr 3,31
	stw 0,20(1)
	.cfi_offset 65, 4
	bl HSD_CObjSetupViewingMtx.part.0
	lwz 0,20(1)
	lwz 9,8(31)
	mtlr 0
	.cfi_restore 65
.L303:
	cmpwi 0,9,0
	blt- 0,.L319
	lwz 3,136(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L318:
	.cfi_restore_state
	lwz 10,36(3)
	cmpwi 0,10,0
	beq- 0,.L305
	lwz 10,8(10)
	andi. 10,10,0x2
	bne- 0,.L304
.L305:
	lwz 10,40(31)
	cmpwi 0,10,0
	beq- 0,.L303
	lwz 10,8(10)
	andi. 10,10,0x2
	bne- 0,.L304
	b .L303
.L319:
	lwz 4,136(31)
	mflr 0
	.cfi_register 65, 0
	cmpwi 0,4,0
	stw 0,20(1)
	.cfi_offset 65, 4
	beq- 0,.L320
.L307:
	addi 3,31,84
	bl PSMTXInverse
	lwz 9,8(31)
	lwz 0,20(1)
	rlwinm 9,9,0,1,31
	lwz 3,136(31)
	stw 9,8(31)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L320:
	.cfi_restore_state
	bl HSD_MtxAlloc
	stw 3,136(31)
	mr 4,3
	b .L307
	.cfi_endproc
.LFE84:
	.size	HSD_CObjGetInvViewingMtxPtr, .-HSD_CObjGetInvViewingMtxPtr
	.section	.text.HSD_CObjGetFov,"ax",@progbits
	.align 2
	.globl HSD_CObjGetFov
	.type	HSD_CObjGetFov, @function
HSD_CObjGetFov:
.LFB85:
	.cfi_startproc
	cmpwi 0,3,0
	beq- 0,.L322
	lbz 9,80(3)
	cmpwi 0,9,1
	beq- 0,.L323
.L322:
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	blr
.L323:
	lwz 3,64(3)
	blr
	.cfi_endproc
.LFE85:
	.size	HSD_CObjGetFov, .-HSD_CObjGetFov
	.section	.text.HSD_CObjSetFov,"ax",@progbits
	.align 2
	.globl HSD_CObjSetFov
	.type	HSD_CObjSetFov, @function
HSD_CObjSetFov:
.LFB86:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,1
	bnelr- 0
	stw 4,64(3)
	blr
	.cfi_endproc
.LFE86:
	.size	HSD_CObjSetFov, .-HSD_CObjSetFov
	.section	.text.HSD_CObjGetAspect,"ax",@progbits
	.align 2
	.globl HSD_CObjGetAspect
	.type	HSD_CObjGetAspect, @function
HSD_CObjGetAspect:
.LFB87:
	.cfi_startproc
	cmpwi 0,3,0
	beq- 0,.L334
	lbz 9,80(3)
	cmpwi 0,9,1
	beq- 0,.L335
.L334:
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	blr
.L335:
	lwz 3,68(3)
	blr
	.cfi_endproc
.LFE87:
	.size	HSD_CObjGetAspect, .-HSD_CObjGetAspect
	.section	.text.HSD_CObjSetAspect,"ax",@progbits
	.align 2
	.globl HSD_CObjSetAspect
	.type	HSD_CObjSetAspect, @function
HSD_CObjSetAspect:
.LFB88:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,1
	bnelr- 0
	stw 4,68(3)
	blr
	.cfi_endproc
.LFE88:
	.size	HSD_CObjSetAspect, .-HSD_CObjSetAspect
	.section	.text.HSD_CObjGetTop,"ax",@progbits
	.align 2
	.globl HSD_CObjGetTop
	.type	HSD_CObjGetTop, @function
HSD_CObjGetTop:
.LFB89:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L349
	lbz 9,80(31)
	rlwinm 10,9,0,0xff
	cmpwi 0,10,1
	beq- 0,.L348
	addi 9,9,-2
	rlwinm 9,9,0,0xff
	cmplwi 0,9,1
	bgt- 0,.L349
	lwz 3,64(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L349:
	.cfi_restore_state
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L348:
	.cfi_restore_state
	lwz 3,64(31)
	lis 4,0x3c8e
	mflr 0
	.cfi_register 65, 0
	ori 4,4,0xfa35
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __mulsf3
	lis 4,0x3f00
	bl __mulsf3
	bl tanf
	lwz 4,56(31)
	bl __mulsf3
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE89:
	.size	HSD_CObjGetTop, .-HSD_CObjGetTop
	.section	.text.HSD_CObjSetTop,"ax",@progbits
	.align 2
	.globl HSD_CObjSetTop
	.type	HSD_CObjSetTop, @function
HSD_CObjSetTop:
.LFB90:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,2
	beq- 0,.L354
	cmpwi 0,9,3
	bnelr- 0
.L354:
	stw 4,64(3)
	blr
	.cfi_endproc
.LFE90:
	.size	HSD_CObjSetTop, .-HSD_CObjSetTop
	.section	.text.HSD_CObjGetBottom,"ax",@progbits
	.align 2
	.globl HSD_CObjGetBottom
	.type	HSD_CObjGetBottom, @function
HSD_CObjGetBottom:
.LFB91:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L364
	lbz 9,80(31)
	cmpwi 0,9,2
	beq- 0,.L363
	cmpwi 0,9,3
	beq- 0,.L363
	cmpwi 0,9,1
	beq- 0,.L366
.L364:
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L363:
	.cfi_restore_state
	lwz 3,68(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L366:
	.cfi_restore_state
	lwz 3,64(31)
	lis 4,0x3c8e
	mflr 0
	.cfi_register 65, 0
	ori 4,4,0xfa35
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __mulsf3
	lis 4,0x3f00
	bl __mulsf3
	bl tanf
	mr 4,3
	lwz 3,56(31)
	addis 3,3,0x8000
	bl __mulsf3
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE91:
	.size	HSD_CObjGetBottom, .-HSD_CObjGetBottom
	.section	.text.HSD_CObjSetBottom,"ax",@progbits
	.align 2
	.globl HSD_CObjSetBottom
	.type	HSD_CObjSetBottom, @function
HSD_CObjSetBottom:
.LFB92:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,2
	beq- 0,.L370
	cmpwi 0,9,3
	bnelr- 0
.L370:
	stw 4,68(3)
	blr
	.cfi_endproc
.LFE92:
	.size	HSD_CObjSetBottom, .-HSD_CObjSetBottom
	.section	.text.HSD_CObjGetLeft,"ax",@progbits
	.align 2
	.globl HSD_CObjGetLeft
	.type	HSD_CObjGetLeft, @function
HSD_CObjGetLeft:
.LFB93:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L380
	lbz 9,80(31)
	cmpwi 0,9,2
	beq- 0,.L379
	cmpwi 0,9,3
	beq- 0,.L379
	cmpwi 0,9,1
	beq- 0,.L382
.L380:
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L379:
	.cfi_restore_state
	lwz 3,72(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L382:
	.cfi_restore_state
	lwz 3,64(31)
	lis 4,0x3c8e
	mflr 0
	.cfi_register 65, 0
	ori 4,4,0xfa35
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __mulsf3
	lis 4,0x3f00
	bl __mulsf3
	bl tanf
	lwz 9,56(31)
	mr 4,3
	addis 3,9,0x8000
	bl __mulsf3
	lwz 4,68(31)
	bl __mulsf3
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE93:
	.size	HSD_CObjGetLeft, .-HSD_CObjGetLeft
	.section	.text.HSD_CObjSetLeft,"ax",@progbits
	.align 2
	.globl HSD_CObjSetLeft
	.type	HSD_CObjSetLeft, @function
HSD_CObjSetLeft:
.LFB94:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,2
	beq- 0,.L386
	cmpwi 0,9,3
	bnelr- 0
.L386:
	stw 4,72(3)
	blr
	.cfi_endproc
.LFE94:
	.size	HSD_CObjSetLeft, .-HSD_CObjSetLeft
	.section	.text.HSD_CObjGetRight,"ax",@progbits
	.align 2
	.globl HSD_CObjGetRight
	.type	HSD_CObjGetRight, @function
HSD_CObjGetRight:
.LFB95:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L396
	lbz 9,80(31)
	cmpwi 0,9,2
	beq- 0,.L395
	cmpwi 0,9,3
	beq- 0,.L395
	cmpwi 0,9,1
	beq- 0,.L398
.L396:
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L395:
	.cfi_restore_state
	lwz 3,76(31)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L398:
	.cfi_restore_state
	lwz 3,64(31)
	lis 4,0x3c8e
	mflr 0
	.cfi_register 65, 0
	ori 4,4,0xfa35
	stw 0,20(1)
	.cfi_offset 65, 4
	bl __mulsf3
	lis 4,0x3f00
	bl __mulsf3
	bl tanf
	lwz 4,56(31)
	bl __mulsf3
	lwz 4,68(31)
	bl __mulsf3
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE95:
	.size	HSD_CObjGetRight, .-HSD_CObjGetRight
	.section	.text.HSD_CObjSetRight,"ax",@progbits
	.align 2
	.globl HSD_CObjSetRight
	.type	HSD_CObjSetRight, @function
HSD_CObjSetRight:
.LFB96:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,2
	beq- 0,.L402
	cmpwi 0,9,3
	bnelr- 0
.L402:
	stw 4,76(3)
	blr
	.cfi_endproc
.LFE96:
	.size	HSD_CObjSetRight, .-HSD_CObjSetRight
	.section	.text.HSD_CObjGetNear,"ax",@progbits
	.align 2
	.globl HSD_CObjGetNear
	.type	HSD_CObjGetNear, @function
HSD_CObjGetNear:
.LFB97:
	.cfi_startproc
	cmpwi 0,3,0
	beq- 0,.L410
	lwz 3,56(3)
	blr
.L410:
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	blr
	.cfi_endproc
.LFE97:
	.size	HSD_CObjGetNear, .-HSD_CObjGetNear
	.section	.text.HSD_CObjSetNear,"ax",@progbits
	.align 2
	.globl HSD_CObjSetNear
	.type	HSD_CObjSetNear, @function
HSD_CObjSetNear:
.LFB98:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	stw 4,56(3)
	blr
	.cfi_endproc
.LFE98:
	.size	HSD_CObjSetNear, .-HSD_CObjSetNear
	.section	.text.HSD_CObjGetFar,"ax",@progbits
	.align 2
	.globl HSD_CObjGetFar
	.type	HSD_CObjGetFar, @function
HSD_CObjGetFar:
.LFB99:
	.cfi_startproc
	cmpwi 0,3,0
	beq- 0,.L419
	lwz 3,60(3)
	blr
.L419:
	lis 9,HSD_CObj_804DE478@ha
	lwz 3,HSD_CObj_804DE478@l(9)
	blr
	.cfi_endproc
.LFE99:
	.size	HSD_CObjGetFar, .-HSD_CObjGetFar
	.section	.text.HSD_CObjSetFar,"ax",@progbits
	.align 2
	.globl HSD_CObjSetFar
	.type	HSD_CObjSetFar, @function
HSD_CObjSetFar:
.LFB100:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	stw 4,60(3)
	blr
	.cfi_endproc
.LFE100:
	.size	HSD_CObjSetFar, .-HSD_CObjSetFar
	.section	.text.HSD_CObjGetScissor,"ax",@progbits
	.align 2
	.globl HSD_CObjGetScissor
	.type	HSD_CObjGetScissor, @function
HSD_CObjGetScissor:
.LFB101:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lwz 10,28(3)
	lwz 11,32(3)
	stw 10,0(4)
	stw 11,4(4)
	blr
	.cfi_endproc
.LFE101:
	.size	HSD_CObjGetScissor, .-HSD_CObjGetScissor
	.section	.text.HSD_CObjSetScissor,"ax",@progbits
	.align 2
	.globl HSD_CObjSetScissor
	.type	HSD_CObjSetScissor, @function
HSD_CObjSetScissor:
.LFB102:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lwz 10,0(4)
	lwz 11,4(4)
	stw 10,28(3)
	stw 11,32(3)
	blr
	.cfi_endproc
.LFE102:
	.size	HSD_CObjSetScissor, .-HSD_CObjSetScissor
	.section	.text.HSD_CObjSetScissorx4,"ax",@progbits
	.align 2
	.globl HSD_CObjSetScissorx4
	.type	HSD_CObjSetScissorx4, @function
HSD_CObjSetScissorx4:
.LFB103:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	sth 4,28(3)
	sth 5,30(3)
	sth 6,32(3)
	sth 7,34(3)
	blr
	.cfi_endproc
.LFE103:
	.size	HSD_CObjSetScissorx4, .-HSD_CObjSetScissorx4
	.section	.text.HSD_CObjGetViewportf,"ax",@progbits
	.align 2
	.globl HSD_CObjGetViewportf
	.type	HSD_CObjGetViewportf, @function
HSD_CObjGetViewportf:
.LFB104:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lwz 7,12(3)
	lwz 8,16(3)
	lwz 10,20(3)
	lwz 9,24(3)
	stw 7,0(4)
	stw 8,4(4)
	stw 10,8(4)
	stw 9,12(4)
	blr
	.cfi_endproc
.LFE104:
	.size	HSD_CObjGetViewportf, .-HSD_CObjGetViewportf
	.section	.text.HSD_CObjSetViewport,"ax",@progbits
	.align 2
	.globl HSD_CObjSetViewport
	.type	HSD_CObjSetViewport, @function
HSD_CObjSetViewport:
.LFB105:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr. 31,3
	beq- 0,.L445
	lha 3,0(4)
	mflr 0
	.cfi_register 65, 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 30,8(1)
	.cfi_offset 30, -8
	mr 30,4
	bl __floatsisf
	stw 3,12(31)
	lha 3,2(30)
	bl __floatsisf
	stw 3,16(31)
	lha 3,4(30)
	bl __floatsisf
	stw 3,20(31)
	lha 3,6(30)
	bl __floatsisf
	lwz 0,20(1)
	stw 3,24(31)
	lwz 30,8(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L445:
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE105:
	.size	HSD_CObjSetViewport, .-HSD_CObjSetViewport
	.section	.text.HSD_CObjSetViewportf,"ax",@progbits
	.align 2
	.globl HSD_CObjSetViewportf
	.type	HSD_CObjSetViewportf, @function
HSD_CObjSetViewportf:
.LFB106:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lwz 7,0(4)
	lwz 8,4(4)
	lwz 10,8(4)
	lwz 9,12(4)
	stw 7,12(3)
	stw 8,16(3)
	stw 10,20(3)
	stw 9,24(3)
	blr
	.cfi_endproc
.LFE106:
	.size	HSD_CObjSetViewportf, .-HSD_CObjSetViewportf
	.section	.text.HSD_CObjSetViewportfx4,"ax",@progbits
	.align 2
	.globl HSD_CObjSetViewportfx4
	.type	HSD_CObjSetViewportfx4, @function
HSD_CObjSetViewportfx4:
.LFB107:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	stw 4,12(3)
	stw 5,16(3)
	stw 6,20(3)
	stw 7,24(3)
	blr
	.cfi_endproc
.LFE107:
	.size	HSD_CObjSetViewportfx4, .-HSD_CObjSetViewportfx4
	.section	.text.HSD_CObjGetProjectionType,"ax",@progbits
	.align 2
	.globl HSD_CObjGetProjectionType
	.type	HSD_CObjGetProjectionType, @function
HSD_CObjGetProjectionType:
.LFB108:
	.cfi_startproc
	cmpwi 0,3,0
	beq- 0,.L463
	lbz 3,80(3)
	blr
.L463:
	li 3,1
	blr
	.cfi_endproc
.LFE108:
	.size	HSD_CObjGetProjectionType, .-HSD_CObjGetProjectionType
	.section	.text.HSD_CObjSetProjectionType,"ax",@progbits
	.align 2
	.globl HSD_CObjSetProjectionType
	.type	HSD_CObjSetProjectionType, @function
HSD_CObjSetProjectionType:
.LFB109:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	stb 4,80(3)
	blr
	.cfi_endproc
.LFE109:
	.size	HSD_CObjSetProjectionType, .-HSD_CObjSetProjectionType
	.section	.text.HSD_CObjSetPerspective,"ax",@progbits
	.align 2
	.globl HSD_CObjSetPerspective
	.type	HSD_CObjSetPerspective, @function
HSD_CObjSetPerspective:
.LFB110:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	li 9,1
	stw 4,64(3)
	stw 5,68(3)
	stb 9,80(3)
	blr
	.cfi_endproc
.LFE110:
	.size	HSD_CObjSetPerspective, .-HSD_CObjSetPerspective
	.section	.text.HSD_CObjSetFrustum,"ax",@progbits
	.align 2
	.globl HSD_CObjSetFrustum
	.type	HSD_CObjSetFrustum, @function
HSD_CObjSetFrustum:
.LFB111:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	li 9,2
	stw 4,64(3)
	stw 5,68(3)
	stw 6,72(3)
	stw 7,76(3)
	stb 9,80(3)
	blr
	.cfi_endproc
.LFE111:
	.size	HSD_CObjSetFrustum, .-HSD_CObjSetFrustum
	.section	.text.HSD_CObjSetOrtho,"ax",@progbits
	.align 2
	.globl HSD_CObjSetOrtho
	.type	HSD_CObjSetOrtho, @function
HSD_CObjSetOrtho:
.LFB112:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	li 9,3
	stw 4,64(3)
	stw 5,68(3)
	stw 6,72(3)
	stw 7,76(3)
	stb 9,80(3)
	blr
	.cfi_endproc
.LFE112:
	.size	HSD_CObjSetOrtho, .-HSD_CObjSetOrtho
	.section	.text.HSD_CObjGetPerspective,"ax",@progbits
	.align 2
	.globl HSD_CObjGetPerspective
	.type	HSD_CObjGetPerspective, @function
HSD_CObjGetPerspective:
.LFB113:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,1
	bnelr- 0
	cmpwi 0,4,0
	beq- 0,.L488
	lwz 9,64(3)
	stw 9,0(4)
.L488:
	cmpwi 0,5,0
	beqlr- 0
	lwz 9,68(3)
	stw 9,0(5)
	blr
	.cfi_endproc
.LFE113:
	.size	HSD_CObjGetPerspective, .-HSD_CObjGetPerspective
	.section	.text.HSD_CObjGetOrtho,"ax",@progbits
	.align 2
	.globl HSD_CObjGetOrtho
	.type	HSD_CObjGetOrtho, @function
HSD_CObjGetOrtho:
.LFB114:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lbz 9,80(3)
	cmpwi 0,9,3
	bnelr- 0
	cmpwi 0,4,0
	beq- 0,.L499
	lwz 9,64(3)
	stw 9,0(4)
.L499:
	cmpwi 0,5,0
	beq- 0,.L500
	lwz 9,68(3)
	stw 9,0(5)
.L500:
	cmpwi 0,6,0
	beq- 0,.L501
	lwz 9,72(3)
	stw 9,0(6)
.L501:
	cmpwi 0,7,0
	beqlr- 0
	lwz 9,76(3)
	stw 9,0(7)
	blr
	.cfi_endproc
.LFE114:
	.size	HSD_CObjGetOrtho, .-HSD_CObjGetOrtho
	.section	.text.HSD_CObjGetFlags,"ax",@progbits
	.align 2
	.globl HSD_CObjGetFlags
	.type	HSD_CObjGetFlags, @function
HSD_CObjGetFlags:
.LFB115:
	.cfi_startproc
	lwz 3,8(3)
	blr
	.cfi_endproc
.LFE115:
	.size	HSD_CObjGetFlags, .-HSD_CObjGetFlags
	.section	.text.HSD_CObjSetFlags,"ax",@progbits
	.align 2
	.globl HSD_CObjSetFlags
	.type	HSD_CObjSetFlags, @function
HSD_CObjSetFlags:
.LFB116:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lwz 9,8(3)
	or 9,9,4
	stw 9,8(3)
	blr
	.cfi_endproc
.LFE116:
	.size	HSD_CObjSetFlags, .-HSD_CObjSetFlags
	.section	.text.HSD_CObjClearFlags,"ax",@progbits
	.align 2
	.globl HSD_CObjClearFlags
	.type	HSD_CObjClearFlags, @function
HSD_CObjClearFlags:
.LFB117:
	.cfi_startproc
	cmpwi 0,3,0
	beqlr- 0
	lwz 9,8(3)
	andc 9,9,4
	stw 9,8(3)
	blr
	.cfi_endproc
.LFE117:
	.size	HSD_CObjClearFlags, .-HSD_CObjClearFlags
	.section	.text.HSD_CObjGetCurrent,"ax",@progbits
	.align 2
	.globl HSD_CObjGetCurrent
	.type	HSD_CObjGetCurrent, @function
HSD_CObjGetCurrent:
.LFB118:
	.cfi_startproc
	lis 9,current@ha
	lwz 3,current@l(9)
	blr
	.cfi_endproc
.LFE118:
	.size	HSD_CObjGetCurrent, .-HSD_CObjGetCurrent
	.section	.text.HSD_CObjAlloc,"ax",@progbits
	.align 2
	.globl HSD_CObjAlloc
	.type	HSD_CObjAlloc, @function
HSD_CObjAlloc:
.LFB119:
	.cfi_startproc
	lis 9,default_class@ha
	lwz 3,default_class@l(9)
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	cmpwi 0,3,0
	mflr 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	beq- 0,.L531
	bl hsdNew
	mr. 31,3
	beq- 0,.L532
.L526:
	lwz 0,20(1)
	mr 3,31
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L531:
	.cfi_restore_state
	lis 3,hsdCObj@ha
	la 3,hsdCObj@l(3)
	bl hsdNew
	mr. 31,3
	bne+ 0,.L526
.L532:
	lis 5,HSD_CObj_804D5D48@ha
	lis 3,HSD_CObj_804D5D40@ha
	la 3,HSD_CObj_804D5D40@l(3)
	la 5,HSD_CObj_804D5D48@l(5)
	li 4,1954
	bl __assert
	lwz 0,20(1)
	mr 3,31
	mtlr 0
	.cfi_restore 65
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE119:
	.size	HSD_CObjAlloc, .-HSD_CObjAlloc
	.section	.text.HSD_CObjInit,"ax",@progbits
	.align 2
	.globl HSD_CObjInit
	.type	HSD_CObjInit, @function
HSD_CObjInit:
.LFB121:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE121:
	.size	HSD_CObjInit, .-HSD_CObjInit
	.section	.text.HSD_CObjLoadDesc,"ax",@progbits
	.align 2
	.globl HSD_CObjLoadDesc
	.type	HSD_CObjLoadDesc, @function
HSD_CObjLoadDesc:
.LFB122:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	.cfi_offset 30, -8
	mr. 30,3
	stw 31,12(1)
	.cfi_offset 31, -4
	beq- 0,.L543
	lwz 3,0(30)
	mflr 0
	.cfi_register 65, 0
	cmpwi 0,3,0
	stw 0,20(1)
	.cfi_offset 65, 4
	beq- 0,.L539
	bl hsdSearchClassInfo
	cmpwi 0,3,0
	beq- 0,.L539
	bl hsdNew
	mr. 31,3
	beq- 0,.L549
.L541:
	lwz 9,0(31)
	mr 4,30
	lwz 9,60(9)
	mr 3,31
	mtctr 9
	bctrl
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L539:
	.cfi_restore_state
	lis 9,default_class@ha
	lwz 3,default_class@l(9)
	cmpwi 0,3,0
	beq- 0,.L550
.L538:
	bl hsdNew
	mr. 31,3
	bne+ 0,.L541
	lis 5,HSD_CObj_804D5D48@ha
	lis 3,HSD_CObj_804D5D40@ha
	la 5,HSD_CObj_804D5D48@l(5)
	la 3,HSD_CObj_804D5D40@l(3)
	li 4,1954
	bl __assert
	b .L542
.L543:
	.cfi_restore 65
	li 31,0
	mr 3,31
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
.L550:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lis 3,hsdCObj@ha
	la 3,hsdCObj@l(3)
	b .L538
.L549:
	lis 5,HSD_CObj_804D5D48@ha
	lis 3,HSD_CObj_804D5D40@ha
	la 5,HSD_CObj_804D5D48@l(5)
	la 3,HSD_CObj_804D5D40@l(3)
	li 4,2039
	bl __assert
.L542:
	li 9,0
	lwz 9,0(9)
	trap
	.cfi_endproc
.LFE122:
	.size	HSD_CObjLoadDesc, .-HSD_CObjLoadDesc
	.globl HSD_CObj_804DE474
	.section	.sdata.HSD_CObj_804DE474,"aw"
	.align 2
	.type	HSD_CObj_804DE474, @object
	.size	HSD_CObj_804DE474, 4
HSD_CObj_804DE474:
	.long	1016003125
	.globl HSD_CObj_804D5D48
	.section	.sdata.HSD_CObj_804D5D48,"aw"
	.align 2
	.type	HSD_CObj_804D5D48, @object
	.size	HSD_CObj_804D5D48, 8
HSD_CObj_804D5D48:
	.string	"cobj"
	.zero	3
	.section	.data.HSD_CObj_80406294,"aw"
	.align 2
	.type	HSD_CObj_80406294, @object
	.size	HSD_CObj_80406294, 29
HSD_CObj_80406294:
	.string	"unkown type of render pass.\n"
	.section	.data.HSD_CObj_804D5D40,"aw"
	.align 2
	.type	HSD_CObj_804D5D40, @object
	.size	HSD_CObj_804D5D40, 7
HSD_CObj_804D5D40:
	.string	"cobj.c"
	.globl hsdCObj
	.section	.data.hsdCObj,"aw"
	.align 2
	.type	hsdCObj, @object
	.size	hsdCObj, 64
hsdCObj:
	.long	CObjInfoInit
	.zero	36
	.zero	20
	.zero	4
	.section	.bss.current,"aw",@nobits
	.align 2
	.type	current, @object
	.size	current, 4
current:
	.zero	4
	.section	.bss.default_class,"aw",@nobits
	.align 2
	.type	default_class, @object
	.size	default_class, 4
default_class:
	.zero	4
	.globl __OSDeviceCode
	.section	.sbss.__OSDeviceCode,"aw",@nobits
	.align 1
	.type	__OSDeviceCode, @object
	.size	__OSDeviceCode, 2
__OSDeviceCode:
	.zero	2
	.globl __OSCoreClock
	.section	.sbss.__OSCoreClock,"aw",@nobits
	.align 2
	.type	__OSCoreClock, @object
	.size	__OSCoreClock, 4
__OSCoreClock:
	.zero	4
	.globl __OSBusClock
	.section	.sbss.__OSBusClock,"aw",@nobits
	.align 2
	.type	__OSBusClock, @object
	.size	__OSBusClock, 4
__OSBusClock:
	.zero	4
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
	.gnu_attribute 4, 10
