	.file	"JSGSystem.cpp"
	.machine ppc
	.section	".text"
	.align 2
	.globl _ZNK6JStage7TSystem11JSGFGetTypeEv
	.type	_ZNK6JStage7TSystem11JSGFGetTypeEv, @function
_ZNK6JStage7TSystem11JSGFGetTypeEv:
.LFB296:
	.cfi_startproc
	li 3,1
	blr
	.cfi_endproc
.LFE296:
	.size	_ZNK6JStage7TSystem11JSGFGetTypeEv, .-_ZNK6JStage7TSystem11JSGFGetTypeEv
	.align 2
	.globl _ZNK6JStage7TSystem13JSGFindObjectEPPNS_7TObjectEPKcNS_8TEObjectE
	.type	_ZNK6JStage7TSystem13JSGFindObjectEPPNS_7TObjectEPKcNS_8TEObjectE, @function
_ZNK6JStage7TSystem13JSGFindObjectEPPNS_7TObjectEPKcNS_8TEObjectE:
.LFB297:
	.cfi_startproc
	li 3,1
	blr
	.cfi_endproc
.LFE297:
	.size	_ZNK6JStage7TSystem13JSGFindObjectEPPNS_7TObjectEPKcNS_8TEObjectE, .-_ZNK6JStage7TSystem13JSGFindObjectEPPNS_7TObjectEPKcNS_8TEObjectE
	.align 2
	.globl _ZN6JStage7TSystem15JSGCreateObjectEPKcNS_8TEObjectEm
	.type	_ZN6JStage7TSystem15JSGCreateObjectEPKcNS_8TEObjectEm, @function
_ZN6JStage7TSystem15JSGCreateObjectEPKcNS_8TEObjectEm:
.LFB298:
	.cfi_startproc
	li 3,0
	blr
	.cfi_endproc
.LFE298:
	.size	_ZN6JStage7TSystem15JSGCreateObjectEPKcNS_8TEObjectEm, .-_ZN6JStage7TSystem15JSGCreateObjectEPKcNS_8TEObjectEm
	.align 2
	.globl _ZN6JStage7TSystem16JSGDestroyObjectEPNS_7TObjectE
	.type	_ZN6JStage7TSystem16JSGDestroyObjectEPNS_7TObjectE, @function
_ZN6JStage7TSystem16JSGDestroyObjectEPNS_7TObjectE:
.LFB299:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE299:
	.size	_ZN6JStage7TSystem16JSGDestroyObjectEPNS_7TObjectE, .-_ZN6JStage7TSystem16JSGDestroyObjectEPNS_7TObjectE
	.align 2
	.globl _ZN6JStage7TSystem16JSGGetSystemDataEm
	.type	_ZN6JStage7TSystem16JSGGetSystemDataEm, @function
_ZN6JStage7TSystem16JSGGetSystemDataEm:
.LFB300:
	.cfi_startproc
	li 3,0
	blr
	.cfi_endproc
.LFE300:
	.size	_ZN6JStage7TSystem16JSGGetSystemDataEm, .-_ZN6JStage7TSystem16JSGGetSystemDataEm
	.align 2
	.globl _ZN6JStage7TSystem16JSGSetSystemDataEmm
	.type	_ZN6JStage7TSystem16JSGSetSystemDataEmm, @function
_ZN6JStage7TSystem16JSGSetSystemDataEmm:
.LFB301:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE301:
	.size	_ZN6JStage7TSystem16JSGSetSystemDataEmm, .-_ZN6JStage7TSystem16JSGSetSystemDataEmm
	.align 2
	.globl _ZN6JStage7TSystemD2Ev
	.type	_ZN6JStage7TSystemD2Ev, @function
_ZN6JStage7TSystemD2Ev:
.LFB293:
	.cfi_startproc
	lis 9,_ZTVN6JStage7TSystemE+8@ha
	la 9,_ZTVN6JStage7TSystemE+8@l(9)
	stw 9,0(3)
	b _ZN6JStage7TObjectD2Ev
	.cfi_endproc
.LFE293:
	.size	_ZN6JStage7TSystemD2Ev, .-_ZN6JStage7TSystemD2Ev
	.globl _ZN6JStage7TSystemD1Ev
	.set	_ZN6JStage7TSystemD1Ev,_ZN6JStage7TSystemD2Ev
	.align 2
	.globl _ZN6JStage7TSystemD0Ev
	.type	_ZN6JStage7TSystemD0Ev, @function
_ZN6JStage7TSystemD0Ev:
.LFB295:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	lis 9,_ZTVN6JStage7TSystemE+8@ha
	mflr 0
	la 9,_ZTVN6JStage7TSystemE+8@l(9)
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 9,0(3)
	bl _ZN6JStage7TObjectD2Ev
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
	li 4,4
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b _ZdlPvj
	.cfi_endproc
.LFE295:
	.size	_ZN6JStage7TSystemD0Ev, .-_ZN6JStage7TSystemD0Ev
	.weak	_ZTSN6JStage7TSystemE
	.section	.rodata._ZTSN6JStage7TSystemE,"aG",@progbits,_ZTSN6JStage7TSystemE,comdat
	.align 2
	.type	_ZTSN6JStage7TSystemE, @object
	.size	_ZTSN6JStage7TSystemE, 18
_ZTSN6JStage7TSystemE:
	.string	"N6JStage7TSystemE"
	.weak	_ZTIN6JStage7TSystemE
	.section	.rodata._ZTIN6JStage7TSystemE,"aG",@progbits,_ZTIN6JStage7TSystemE,comdat
	.align 2
	.type	_ZTIN6JStage7TSystemE, @object
	.size	_ZTIN6JStage7TSystemE, 12
_ZTIN6JStage7TSystemE:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTSN6JStage7TSystemE
	.long	_ZTIN6JStage7TObjectE
	.weak	_ZTVN6JStage7TSystemE
	.section	.rodata._ZTVN6JStage7TSystemE,"aG",@progbits,_ZTVN6JStage7TSystemE,comdat
	.align 2
	.type	_ZTVN6JStage7TSystemE, @object
	.size	_ZTVN6JStage7TSystemE, 84
_ZTVN6JStage7TSystemE:
	.long	0
	.long	_ZTIN6JStage7TSystemE
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	_ZNK6JStage7TSystem11JSGFGetTypeEv
	.long	_ZNK6JStage7TObject10JSGGetNameEv
	.long	_ZN6JStage7TObject9JSGUpdateEv
	.long	_ZNK6JStage7TObject10JSGGetFlagEv
	.long	_ZN6JStage7TObject10JSGSetFlagEm
	.long	_ZNK6JStage7TObject10JSGGetDataEmPvm
	.long	_ZN6JStage7TObject10JSGSetDataEmPKvm
	.long	_ZNK6JStage7TObject12JSGGetParentEPPS0_Pm
	.long	_ZN6JStage7TObject12JSGSetParentEPS0_m
	.long	_ZN6JStage7TObject14JSGSetRelationEbPS0_m
	.long	_ZNK6JStage7TObject13JSGFindNodeIDEPKc
	.long	_ZNK6JStage7TObject24JSGGetNodeTransformationEmPA4_f
	.long	_ZNK6JStage7TSystem13JSGFindObjectEPPNS_7TObjectEPKcNS_8TEObjectE
	.long	_ZN6JStage7TSystem15JSGCreateObjectEPKcNS_8TEObjectEm
	.long	_ZN6JStage7TSystem16JSGDestroyObjectEPNS_7TObjectE
	.long	_ZN6JStage7TSystem16JSGGetSystemDataEm
	.long	_ZN6JStage7TSystem16JSGSetSystemDataEmm
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
	.weak	__cxa_pure_virtual
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
