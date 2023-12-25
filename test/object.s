	.file	"object.cpp"
	.machine ppc
	.section	".text"
	.align 2
	.globl _ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm
	.type	_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm, @function
_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm:
.LFB318:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-120(1)
	.cfi_def_cfa_offset 120
	stw 31,116(1)
	.cfi_offset 31, -4
	beq- 0,.L4
	lwz 9,0(5)
	mflr 0
	.cfi_register 65, 0
	stw 29,108(1)
	.cfi_offset 29, -12
	mr 29,4
	lwz 9,52(9)
	mr 4,6
	stw 30,112(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 0,124(1)
	.cfi_offset 65, 4
	mr 3,5
	mtctr 9
	addi 5,1,56
	bctrl
	cmpwi 0,3,0
	mr 31,3
	bne- 0,.L11
	lwz 0,124(1)
	lwz 29,108(1)
	.cfi_restore 29
	lwz 30,112(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L4:
	li 31,0
	rlwinm 3,31,0,0xff
	lwz 31,116(1)
	addi 1,1,120
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L11:
	.cfi_def_cfa_offset 120
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	mr 6,29
	addi 3,1,8
	addi 5,29,12
	addi 4,29,24
	bl _ZN7JStudio4math24getTransformation_SRxyzTEPA4_fRK3VecS5_S5_
	addi 3,1,56
	mr 5,30
	addi 4,1,8
	bl PSMTXConcat
	lwz 0,124(1)
	rlwinm 3,31,0,0xff
	lwz 29,108(1)
	.cfi_restore 29
	lwz 30,112(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	lwz 31,116(1)
	addi 1,1,120
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE318:
	.size	_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm, .-_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm
	.align 2
	.globl _ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm
	.type	_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm, @function
_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm:
.LFB319:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-120(1)
	.cfi_def_cfa_offset 120
	stw 31,116(1)
	.cfi_offset 31, -4
	beq- 0,.L15
	lwz 9,0(5)
	mflr 0
	.cfi_register 65, 0
	stw 29,108(1)
	.cfi_offset 29, -12
	mr 29,3
	lwz 9,52(9)
	mr 3,5
	stw 30,112(1)
	.cfi_offset 30, -8
	addi 5,1,56
	stw 0,124(1)
	.cfi_offset 65, 4
	mr 30,4
	mtctr 9
	mr 4,6
	bctrl
	cmpwi 0,3,0
	mr 31,3
	bne- 0,.L21
	lwz 0,124(1)
	lwz 29,108(1)
	.cfi_restore 29
	lwz 30,112(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L15:
	li 31,0
	rlwinm 3,31,0,0xff
	lwz 31,116(1)
	addi 1,1,120
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L21:
	.cfi_def_cfa_offset 120
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lfs 3,8(30)
	addi 3,1,8
	lfs 2,4(30)
	lfs 1,0(30)
	bl PSMTXTrans
	addi 3,1,56
	mr 5,29
	addi 4,1,8
	bl PSMTXConcat
	lwz 0,124(1)
	rlwinm 3,31,0,0xff
	lwz 29,108(1)
	.cfi_restore 29
	lwz 30,112(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	lwz 31,116(1)
	addi 1,1,120
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE319:
	.size	_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm, .-_ZN14JStudio_JStage27transform_toGlobalFromLocalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm
	.align 2
	.globl _ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm
	.type	_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm, @function
_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm:
.LFB320:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-168(1)
	.cfi_def_cfa_offset 168
	stw 31,164(1)
	.cfi_offset 31, -4
	beq- 0,.L25
	lwz 9,0(5)
	mflr 0
	.cfi_register 65, 0
	stw 29,156(1)
	.cfi_offset 29, -12
	mr 29,4
	lwz 9,52(9)
	mr 4,6
	stw 30,160(1)
	.cfi_offset 30, -8
	mr 30,3
	stw 0,172(1)
	.cfi_offset 65, 4
	mr 3,5
	mtctr 9
	addi 5,1,104
	bctrl
	cmpwi 0,3,0
	mr 31,3
	bne- 0,.L31
	lwz 0,172(1)
	lwz 29,156(1)
	.cfi_restore 29
	lwz 30,160(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L25:
	li 31,0
	rlwinm 3,31,0,0xff
	lwz 31,164(1)
	addi 1,1,168
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L31:
	.cfi_def_cfa_offset 168
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	mr 6,29
	addi 5,29,12
	addi 3,1,56
	addi 4,29,24
	bl _ZN7JStudio4math24getTransformation_SRxyzTEPA4_fRK3VecS5_S5_
	addi 4,1,8
	addi 3,1,104
	bl PSMTXInverse
	addi 3,1,8
	mr 5,30
	addi 4,1,56
	bl PSMTXConcat
	lwz 0,172(1)
	rlwinm 3,31,0,0xff
	lwz 29,156(1)
	.cfi_restore 29
	lwz 30,160(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	lwz 31,164(1)
	addi 1,1,168
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE320:
	.size	_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm, .-_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl39TTransform_translation_rotation_scalingEPKN6JStage7TObjectEm
	.align 2
	.globl _ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm
	.type	_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm, @function
_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm:
.LFB321:
	.cfi_startproc
	cmpwi 0,5,0
	stwu 1,-168(1)
	.cfi_def_cfa_offset 168
	stw 31,164(1)
	.cfi_offset 31, -4
	beq- 0,.L35
	lwz 9,0(5)
	mflr 0
	.cfi_register 65, 0
	stw 29,156(1)
	.cfi_offset 29, -12
	mr 29,3
	lwz 9,52(9)
	mr 3,5
	stw 30,160(1)
	.cfi_offset 30, -8
	addi 5,1,104
	stw 0,172(1)
	.cfi_offset 65, 4
	mr 30,4
	mtctr 9
	mr 4,6
	bctrl
	cmpwi 0,3,0
	mr 31,3
	bne- 0,.L41
	lwz 0,172(1)
	lwz 29,156(1)
	.cfi_restore 29
	lwz 30,160(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
.L35:
	li 31,0
	rlwinm 3,31,0,0xff
	lwz 31,164(1)
	addi 1,1,168
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L41:
	.cfi_def_cfa_offset 168
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lfs 3,8(30)
	addi 3,1,56
	lfs 2,4(30)
	lfs 1,0(30)
	bl PSMTXTrans
	addi 4,1,8
	addi 3,1,104
	bl PSMTXInverse
	addi 3,1,8
	mr 5,29
	addi 4,1,56
	bl PSMTXConcat
	lwz 0,172(1)
	rlwinm 3,31,0,0xff
	lwz 29,156(1)
	.cfi_restore 29
	lwz 30,160(1)
	.cfi_restore 30
	mtlr 0
	.cfi_restore 65
	lwz 31,164(1)
	addi 1,1,168
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE321:
	.size	_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm, .-_ZN14JStudio_JStage27transform_toLocalFromGlobalEPA4_fRKN7JStudio8TControl19TTransform_positionEPKN6JStage7TObjectEm
	.align 2
	.globl _ZN14JStudio_JStage16TAdaptor_object_13adaptor_data_EPN6JStage7TObjectEPKvmS5_m
	.type	_ZN14JStudio_JStage16TAdaptor_object_13adaptor_data_EPN6JStage7TObjectEPKvmS5_m, @function
_ZN14JStudio_JStage16TAdaptor_object_13adaptor_data_EPN6JStage7TObjectEPKvmS5_m:
.LFB322:
	.cfi_startproc
	cmpwi 0,5,0
	lwz 10,0(3)
	mr 9,4
	mr 5,6
	lwz 10,32(10)
	mr 6,7
	li 4,-1
	mtctr 10
	beq- 0,.L43
	lwz 4,0(9)
.L43:
	mfctr 9
	mtctr 9
	bctr
	.cfi_endproc
.LFE322:
	.size	_ZN14JStudio_JStage16TAdaptor_object_13adaptor_data_EPN6JStage7TObjectEPKvmS5_m, .-_ZN14JStudio_JStage16TAdaptor_object_13adaptor_data_EPN6JStage7TObjectEPKvmS5_m
	.align 2
	.globl _ZN14JStudio_JStage16TAdaptor_object_22adaptor_findJSGObject_EPKN6JStage7TSystemEPKc
	.type	_ZN14JStudio_JStage16TAdaptor_object_22adaptor_findJSGObject_EPKN6JStage7TSystemEPKc, @function
_ZN14JStudio_JStage16TAdaptor_object_22adaptor_findJSGObject_EPKN6JStage7TSystemEPKc:
.LFB323:
	.cfi_startproc
	lwz 9,0(3)
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	mr 5,4
	lwz 9,56(9)
	li 6,0
	stw 0,28(1)
	.cfi_offset 65, 4
	addi 4,1,8
	mtctr 9
	bctrl
	cmpwi 0,3,0
	bne- 0,.L48
	lwz 0,28(1)
	lwz 3,8(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
.L48:
	.cfi_restore_state
	lwz 0,28(1)
	li 3,0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE323:
	.size	_ZN14JStudio_JStage16TAdaptor_object_22adaptor_findJSGObject_EPKN6JStage7TSystemEPKc, .-_ZN14JStudio_JStage16TAdaptor_object_22adaptor_findJSGObject_EPKN6JStage7TSystemEPKc
	.align 2
	.globl _ZN14JStudio_JStage16TAdaptor_object_26adaptor_findJSGObjectNode_EPKN6JStage7TObjectEPKc
	.type	_ZN14JStudio_JStage16TAdaptor_object_26adaptor_findJSGObjectNode_EPKN6JStage7TObjectEPKc, @function
_ZN14JStudio_JStage16TAdaptor_object_26adaptor_findJSGObjectNode_EPKN6JStage7TObjectEPKc:
.LFB324:
	.cfi_startproc
	lwz 9,0(3)
	lwz 9,48(9)
	mtctr 9
	bctr
	.cfi_endproc
.LFE324:
	.size	_ZN14JStudio_JStage16TAdaptor_object_26adaptor_findJSGObjectNode_EPKN6JStage7TObjectEPKc, .-_ZN14JStudio_JStage16TAdaptor_object_26adaptor_findJSGObjectNode_EPKN6JStage7TObjectEPKc
	.align 2
	.globl _ZN14JStudio_JStage16TAdaptor_object_15adaptor_ENABLE_EPN6JStage7TObjectEN7JStudio4data15TEOperationDataEPKvm
	.type	_ZN14JStudio_JStage16TAdaptor_object_15adaptor_ENABLE_EPN6JStage7TObjectEN7JStudio4data15TEOperationDataEPKvm, @function
_ZN14JStudio_JStage16TAdaptor_object_15adaptor_ENABLE_EPN6JStage7TObjectEN7JStudio4data15TEOperationDataEPKvm:
.LFB325:
	.cfi_startproc
	cmpwi 0,4,2
	bnelr+ 0
	lwz 10,0(5)
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	lwz 9,0(3)
	cmpwi 0,10,0
	stw 30,8(1)
	.cfi_offset 30, -8
	lwz 30,24(9)
	lwz 9,20(9)
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	mtctr 9
	bne- 0,.L58
	bctrl
	lwz 0,20(1)
	rlwinm 4,3,0,31,29
	mtctr 30
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
	bctr
.L58:
	.cfi_restore_state
	bctrl
	lwz 0,20(1)
	ori 4,3,0x2
	mtctr 30
	mr 3,31
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	bctr
	.cfi_endproc
.LFE325:
	.size	_ZN14JStudio_JStage16TAdaptor_object_15adaptor_ENABLE_EPN6JStage7TObjectEN7JStudio4data15TEOperationDataEPKvm, .-_ZN14JStudio_JStage16TAdaptor_object_15adaptor_ENABLE_EPN6JStage7TObjectEN7JStudio4data15TEOperationDataEPKvm
	.globl __OSCurrentInterruptMask
	.globl __OSPriorInterruptMask
	.globl __OSDeviceCode
	.globl __OSCoreClock
	.globl __OSBusClock
	.section	.sbss,"aw",@nobits
	.align 2
	.type	__OSCurrentInterruptMask, @object
	.size	__OSCurrentInterruptMask, 4
__OSCurrentInterruptMask:
	.zero	4
	.type	__OSPriorInterruptMask, @object
	.size	__OSPriorInterruptMask, 4
__OSPriorInterruptMask:
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
	.gnu_attribute 4, 1
