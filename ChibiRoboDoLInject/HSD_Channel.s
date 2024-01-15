	.file	"HSD_Channel.cpp"
	.machine "821"
	.section	".text"
	.globl HSD_CGsChannel
	.section	.data.HSD_CGsChannel,"aw"
	.align 2
	.type	HSD_CGsChannel, @object
	.size	HSD_CGsChannel, 12
HSD_CGsChannel:
	.long	HSD_CGsClassName
	.long	0
	.long	-2147449972
	.globl HSD_CGsChanClassObject
	.section	.sdata.HSD_CGsChanClassObject,"aw"
	.align 2
	.type	HSD_CGsChanClassObject, @object
	.size	HSD_CGsChanClassObject, 8
HSD_CGsChanClassObject:
	.long	HSD_CGsClassName
	.long	HSD_ChanCompObject
	.globl HSD_ChanCompObject
	.section	.data.HSD_ChanCompObject,"aw"
	.align 2
	.type	HSD_ChanCompObject, @object
	.size	HSD_ChanCompObject, 12
HSD_ChanCompObject:
	.long	HSD_ChanClassObject
	.zero	8
	.globl HSD_ChanClassObject
	.section	.sdata.HSD_ChanClassObject,"aw"
	.align 2
	.type	HSD_ChanClassObject, @object
	.size	HSD_ChanClassObject, 8
HSD_ChanClassObject:
	.long	HSD_ChanClassName
	.zero	4
	.globl HSD_ChanClassName
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"_HSD_Chan"
	.section	.sdata.HSD_ChanClassName,"aw"
	.align 2
	.type	HSD_ChanClassName, @object
	.size	HSD_ChanClassName, 4
HSD_ChanClassName:
	.long	.LC0
	.globl HSD_CGsClassName
	.section	.rodata.str1.4
	.align 2
.LC1:
	.string	"CGsChannel"
	.section	.sdata.HSD_CGsClassName,"aw"
	.align 2
	.type	HSD_CGsClassName, @object
	.size	HSD_CGsClassName, 4
HSD_CGsClassName:
	.long	.LC1
	.ident	"GCC: (devkitPPC release 41) 12.1.0"
