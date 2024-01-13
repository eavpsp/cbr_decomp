.include "macros.s"

.section .text, "ax"  # 0x80007880 - 0x801FD660 ; 0x001F5DE0

.global NSNMessengerScene__SceneCreated_void__N2
NSNMessengerScene__SceneCreated_void__N2:
/* 8000DA50 000087D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000DA54 000087D4  7C 08 02 A6 */	mflr r0
/* 8000DA58 000087D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000DA5C 000087DC  81 83 00 34 */	lwz r12, 0x34(r3)
/* 8000DA60 000087E0  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8000DA64 000087E4  7D 89 03 A6 */	mtctr r12
/* 8000DA68 000087E8  4E 80 04 21 */	bctrl
/* 8000DA6C 000087EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000DA70 000087F0  7C 08 03 A6 */	mtlr r0
/* 8000DA74 000087F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000DA78 000087F8  4E 80 00 20 */	blr
