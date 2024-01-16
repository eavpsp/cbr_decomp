	.file	"test.cpp"
	.machine "821"
	.section	".text"
	.section	.text._Z4Testv,"ax",@progbits
	.align 2
	.globl _Z4Testv
	.type	_Z4Testv, @function
_Z4Testv:
.LFB0:
	.cfi_startproc
	blr
	.cfi_endproc
.LFE0:
	.size	_Z4Testv, .-_Z4Testv
	.globl _ZN15CSound_Instance12instanceInfoE
	.section	.data._ZN15CSound_Instance12instanceInfoE,"aw"
	.align 2
	.type	_ZN15CSound_Instance12instanceInfoE, @object
	.size	_ZN15CSound_Instance12instanceInfoE, 12
_ZN15CSound_Instance12instanceInfoE:
	.long	_ZN10CSoundBase9classInfoE
	.long	0
	.long	_Z4Testv
	.globl _ZN10XSoundBase9classInfoE
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"XSound"
	.section	.sdata._ZN10XSoundBase9classInfoE,"aw"
	.align 2
	.type	_ZN10XSoundBase9classInfoE, @object
	.size	_ZN10XSoundBase9classInfoE, 8
_ZN10XSoundBase9classInfoE:
	.long	.LC0
	.long	_ZN10CSoundBase9classInfoE
	.globl _ZN10CSoundBase9classInfoE
	.section	.rodata.str1.4
	.align 2
.LC1:
	.string	"CSound"
	.section	.sdata._ZN10CSoundBase9classInfoE,"aw"
	.align 2
	.type	_ZN10CSoundBase9classInfoE, @object
	.size	_ZN10CSoundBase9classInfoE, 8
_ZN10CSoundBase9classInfoE:
	.long	.LC1
	.long	0
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
