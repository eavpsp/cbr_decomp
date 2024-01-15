	.file	"HSD_Channel.cpp"
	.machine "821"
	.section	".text"
	.globl hsdChanCompObject
	.section	.sdata.hsdChanCompObject,"aw"
	.align 2
	.type	hsdChanCompObject, @object
	.size	hsdChanCompObject, 8
hsdChanCompObject:
	.long	hsdChanClassObject
	.zero	4
	.globl hsdChanClassObject
	.section	.sdata.hsdChanClassObject,"aw"
	.align 2
	.type	hsdChanClassObject, @object
	.size	hsdChanClassObject, 8
hsdChanClassObject:
	.long	hsdChanClassName
	.zero	4
	.globl hsdChanClassName
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"_HSD_Chan"
	.section	.sdata.hsdChanClassName,"aw"
	.align 2
	.type	hsdChanClassName, @object
	.size	hsdChanClassName, 4
hsdChanClassName:
	.long	.LC0
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
