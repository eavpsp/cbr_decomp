.include "macros.inc"
.file "__init_cpp_exceptions.cpp"

# 0x80151BA4 - 0x80151C20
.text
.balign 4

# GetR2()
.fn GetR2__Fv, local
/* 80151BA4 0014C924  7C 43 13 78 */	mr r3, r2
/* 80151BA8 0014C928  4E 80 00 20 */	blr
.endfn GetR2__Fv

.fn __fini_cpp_exceptions, global
/* 80151BAC 0014C92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80151BB0 0014C930  7C 08 02 A6 */	mflr r0
/* 80151BB4 0014C934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80151BB8 0014C938  80 6D 8C 90 */	lwz r3, fragmentID@sda21(r13)
/* 80151BBC 0014C93C  2C 03 FF FE */	cmpwi r3, -0x2
/* 80151BC0 0014C940  41 82 00 10 */	beq .L_80151BD0
/* 80151BC4 0014C944  48 00 14 21 */	bl __unregister_fragment
/* 80151BC8 0014C948  38 00 FF FE */	li r0, -0x2
/* 80151BCC 0014C94C  90 0D 8C 90 */	stw r0, fragmentID@sda21(r13)
.L_80151BD0:
/* 80151BD0 0014C950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80151BD4 0014C954  7C 08 03 A6 */	mtlr r0
/* 80151BD8 0014C958  38 21 00 10 */	addi r1, r1, 0x10
/* 80151BDC 0014C95C  4E 80 00 20 */	blr
.endfn __fini_cpp_exceptions

.fn __init_cpp_exceptions, global
/* 80151BE0 0014C960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80151BE4 0014C964  7C 08 02 A6 */	mflr r0
/* 80151BE8 0014C968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80151BEC 0014C96C  80 0D 8C 90 */	lwz r0, fragmentID@sda21(r13)
/* 80151BF0 0014C970  2C 00 FF FE */	cmpwi r0, -0x2
/* 80151BF4 0014C974  40 82 00 1C */	bne .L_80151C10
/* 80151BF8 0014C978  4B FF FF AD */	bl GetR2__Fv
/* 80151BFC 0014C97C  3C A0 80 00 */	lis r5, _eti_init_info@ha
/* 80151C00 0014C980  7C 64 1B 78 */	mr r4, r3
/* 80151C04 0014C984  38 65 78 50 */	addi r3, r5, _eti_init_info@l
/* 80151C08 0014C988  48 00 14 11 */	bl __register_fragment
/* 80151C0C 0014C98C  90 6D 8C 90 */	stw r3, fragmentID@sda21(r13)
.L_80151C10:
/* 80151C10 0014C990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80151C14 0014C994  7C 08 03 A6 */	mtlr r0
/* 80151C18 0014C998  38 21 00 10 */	addi r1, r1, 0x10
/* 80151C1C 0014C99C  4E 80 00 20 */	blr
.endfn __init_cpp_exceptions

# 0x801FD660 - 0x801FD664
.section .ctors, "a"
.balign 4

.obj __init_cpp_exceptions_reference, global
	.4byte __init_cpp_exceptions
.endobj __init_cpp_exceptions_reference

# 0x801FD6C0 - 0x801FD6C8
.section .dtors, "a"
.balign 4

.obj __destroy_global_chain_reference, global
	.4byte __destroy_global_chain
.endobj __destroy_global_chain_reference

.obj __fini_cpp_exceptions_reference, global
	.4byte __fini_cpp_exceptions
.endobj __fini_cpp_exceptions_reference

# 0x8065AB50 - 0x8065AB54
.section .sdata, "wa"
.balign 8

.obj fragmentID, local
	.4byte 0xFFFFFFFE
.endobj fragmentID
