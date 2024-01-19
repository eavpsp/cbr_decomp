.include "macros.inc"
.file "global_destructor_chain.c"

# 0x80150E18 - 0x80150E78
.text
.balign 4

.fn __destroy_global_chain, global
/* 80150E18 0014BB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80150E1C 0014BB9C  7C 08 02 A6 */	mflr r0
/* 80150E20 0014BBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80150E24 0014BBA4  48 00 00 20 */	b .L_80150E44
.L_80150E28:
/* 80150E28 0014BBA8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80150E2C 0014BBAC  38 80 FF FF */	li r4, -0x1
/* 80150E30 0014BBB0  90 0D 94 D0 */	stw r0, __global_destructor_chain@sda21(r13)
/* 80150E34 0014BBB4  81 83 00 04 */	lwz r12, 0x4(r3)
/* 80150E38 0014BBB8  80 63 00 08 */	lwz r3, 0x8(r3)
/* 80150E3C 0014BBBC  7D 89 03 A6 */	mtctr r12
/* 80150E40 0014BBC0  4E 80 04 21 */	bctrl
.L_80150E44:
/* 80150E44 0014BBC4  80 6D 94 D0 */	lwz r3, __global_destructor_chain@sda21(r13)
/* 80150E48 0014BBC8  28 03 00 00 */	cmplwi r3, 0x0
/* 80150E4C 0014BBCC  40 82 FF DC */	bne .L_80150E28
/* 80150E50 0014BBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80150E54 0014BBD4  7C 08 03 A6 */	mtlr r0
/* 80150E58 0014BBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80150E5C 0014BBDC  4E 80 00 20 */	blr
.endfn __destroy_global_chain

.fn __register_global_object, global
/* 80150E60 0014BBE0  80 0D 94 D0 */	lwz r0, __global_destructor_chain@sda21(r13)
/* 80150E64 0014BBE4  90 05 00 00 */	stw r0, 0x0(r5)
/* 80150E68 0014BBE8  90 85 00 04 */	stw r4, 0x4(r5)
/* 80150E6C 0014BBEC  90 65 00 08 */	stw r3, 0x8(r5)
/* 80150E70 0014BBF0  90 AD 94 D0 */	stw r5, __global_destructor_chain@sda21(r13)
/* 80150E74 0014BBF4  4E 80 00 20 */	blr
.endfn __register_global_object

# 0x801FD6C8 - 0x801FD6CC
.section .dtors, "a"
.balign 4
	.4byte __destroy_global_chain

# 0x8065B390 - 0x8065B394
.section .sbss, "wa", @nobits
.balign 8

.obj __global_destructor_chain, global
	.skip 0x4
.endobj __global_destructor_chain
