	.file	"test.cpp"
	.machine "821"
	.section	".text"
	.section	.text._ZN8HSD_Chan7HSD_DelEv,"axG",@progbits,_ZN8HSD_Chan7HSD_DelEv,comdat
	.align 2
	.weak	_ZN8HSD_Chan7HSD_DelEv
	.type	_ZN8HSD_Chan7HSD_DelEv, @function
_ZN8HSD_Chan7HSD_DelEv:
.LFB0:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE0:
	.size	_ZN8HSD_Chan7HSD_DelEv, .-_ZN8HSD_Chan7HSD_DelEv
	.weak	_ZTS8HSD_Chan
	.section	.rodata._ZTS8HSD_Chan,"aG",@progbits,_ZTS8HSD_Chan,comdat
	.align 2
	.type	_ZTS8HSD_Chan, @object
	.size	_ZTS8HSD_Chan, 10
_ZTS8HSD_Chan:
	.string	"8HSD_Chan"
	.weak	_ZTI8HSD_Chan
	.section	.rodata._ZTI8HSD_Chan,"aG",@progbits,_ZTI8HSD_Chan,comdat
	.align 2
	.type	_ZTI8HSD_Chan, @object
	.size	_ZTI8HSD_Chan, 24
_ZTI8HSD_Chan:
	.long	_ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.long	_ZTS8HSD_Chan
	.long	0
	.long	1
	.long	_ZTI8HSD_BASE
	.long	0
	.weak	_ZTV8HSD_Chan
	.section	.rodata._ZTV8HSD_Chan,"aG",@progbits,_ZTV8HSD_Chan,comdat
	.align 2
	.type	_ZTV8HSD_Chan, @object
	.size	_ZTV8HSD_Chan, 16
_ZTV8HSD_Chan:
	.long	0
	.long	_ZTI8HSD_Chan
	.long	_ZN8HSD_BASE8HSD_InitEv
	.long	_ZN8HSD_Chan7HSD_DelEv
	.globl ChanTest
	.section	.sdata.ChanTest,"aw"
	.align 2
	.type	ChanTest, @object
	.size	ChanTest, 4
ChanTest:
	.long	_ZTV8HSD_Chan+8
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
