	.file	"test.cpp"
	.machine ppc
	.section	".text"
	.section	.text._ZNK10ChildClass10StartClassEv,"axG",@progbits,_ZNK10ChildClass10StartClassEv,comdat
	.align 2
	.weak	_ZNK10ChildClass10StartClassEv
	.type	_ZNK10ChildClass10StartClassEv, @function
_ZNK10ChildClass10StartClassEv:
.LFB5:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE5:
	.size	_ZNK10ChildClass10StartClassEv, .-_ZNK10ChildClass10StartClassEv
	.section	.text._ZN10ChildClassD2Ev,"axG",@progbits,_ZN10ChildClassD5Ev,comdat
	.align 2
	.weak	_ZN10ChildClassD2Ev
	.type	_ZN10ChildClassD2Ev, @function
_ZN10ChildClassD2Ev:
.LFB13:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE13:
	.size	_ZN10ChildClassD2Ev, .-_ZN10ChildClassD2Ev
	.weak	_ZN10ChildClassD1Ev
	.set	_ZN10ChildClassD1Ev,_ZN10ChildClassD2Ev
	.section	.text._ZN10ChildClassD0Ev,"axG",@progbits,_ZN10ChildClassD5Ev,comdat
	.align 2
	.weak	_ZN10ChildClassD0Ev
	.type	_ZN10ChildClassD0Ev, @function
_ZN10ChildClassD0Ev:
.LFB15:
	.cfi_startproc
	li 4,8
	b _ZdlPvj
	.cfi_endproc
.LFE15:
	.size	_ZN10ChildClassD0Ev, .-_ZN10ChildClassD0Ev
	.section	.text.startup._GLOBAL__sub_I_classData,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I_classData, @function
_GLOBAL__sub_I_classData:
.LFB17:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA17
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	.cfi_register 65, 0
	.cfi_offset 29, -12
	lis 29,classData@ha
	stw 31,20(1)
	.cfi_offset 31, -4
	la 31,classData@l(29)
	mr 3,31
	stw 30,16(1)
	.cfi_offset 30, -8
	lis 30,_ZTV10ChildClass+8@ha
	stw 0,28(1)
	.cfi_offset 65, 4
	la 30,_ZTV10ChildClass+8@l(30)
.LEHB0:
	bl _ZN9MainClassC2Ev
	li 3,1
	stw 30,classData@l(29)
	bl _Znwj
	mr 9,3
	li 3,8
	stw 9,4(31)
	bl _Znwj
.LEHE0:
	mr 31,3
.LEHB1:
	bl _ZN9MainClassC2Ev
	stw 30,0(31)
	li 3,1
	bl _Znwj
.LEHE1:
	lwz 0,28(1)
	lis 9,obj@ha
	stw 3,4(31)
	stw 31,obj@l(9)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	blr
.L7:
	.cfi_restore_state
	mr 30,3
	li 4,8
	mr 3,31
	bl _ZdlPvj
	mr 3,30
.LEHB2:
	bl _Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE17:
	.globl __gxx_personality_v0
	.section	.gcc_except_table._GLOBAL__sub_I_classData,"a",@progbits
.LLSDA17:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17-.LLSDACSB17
.LLSDACSB17:
	.uleb128 .LEHB0-.LFB17
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB17
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB17
	.uleb128 0
	.uleb128 .LEHB2-.LFB17
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE17:
	.section	.text.startup._GLOBAL__sub_I_classData
	.size	_GLOBAL__sub_I_classData, .-_GLOBAL__sub_I_classData
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I_classData
	.weak	_ZTS9MainClass
	.section	.rodata._ZTS9MainClass,"aG",@progbits,_ZTS9MainClass,comdat
	.align 2
	.type	_ZTS9MainClass, @object
	.size	_ZTS9MainClass, 11
_ZTS9MainClass:
	.string	"9MainClass"
	.weak	_ZTI9MainClass
	.section	.sdata._ZTI9MainClass,"awG",@progbits,_ZTI9MainClass,comdat
	.align 2
	.type	_ZTI9MainClass, @object
	.size	_ZTI9MainClass, 8
_ZTI9MainClass:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS9MainClass
	.weak	_ZTS10ChildClass
	.section	.rodata._ZTS10ChildClass,"aG",@progbits,_ZTS10ChildClass,comdat
	.align 2
	.type	_ZTS10ChildClass, @object
	.size	_ZTS10ChildClass, 13
_ZTS10ChildClass:
	.string	"10ChildClass"
	.weak	_ZTI10ChildClass
	.section	.rodata._ZTI10ChildClass,"aG",@progbits,_ZTI10ChildClass,comdat
	.align 2
	.type	_ZTI10ChildClass, @object
	.size	_ZTI10ChildClass, 12
_ZTI10ChildClass:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS10ChildClass
	.long	_ZTI9MainClass
	.weak	_ZTV10ChildClass
	.section	.rodata._ZTV10ChildClass,"aG",@progbits,_ZTV10ChildClass,comdat
	.align 2
	.type	_ZTV10ChildClass, @object
	.size	_ZTV10ChildClass, 20
_ZTV10ChildClass:
	.long	0
	.long	_ZTI10ChildClass
	.long	_ZNK10ChildClass10StartClassEv
	.long	_ZN10ChildClassD1Ev
	.long	_ZN10ChildClassD0Ev
	.globl obj
	.section	.sbss.obj,"aw",@nobits
	.align 2
	.type	obj, @object
	.size	obj, 4
obj:
	.zero	4
	.globl classData
	.section	.sbss.classData,"aw",@nobits
	.align 2
	.type	classData, @object
	.size	classData, 8
classData:
	.zero	8
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
