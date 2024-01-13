.include "macros.s"

.section .text, "ax"  # 0x80007880 - 0x801FD660 ; 0x001F5DE0



.global DemoOverlay__SceneCreated_void_
DemoOverlay__SceneCreated_void_:
/* 8000D02C 00007DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000D030 00007DB0  7C 08 02 A6 */	mflr r0
/* 8000D034 00007DB4  38 80 00 00 */	li r4, 0x0
/* 8000D038 00007DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000D03C 00007DBC  81 83 00 34 */	lwz r12, 0x34(r3)
/* 8000D040 00007DC0  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8000D044 00007DC4  7D 89 03 A6 */	mtctr r12
/* 8000D048 00007DC8  4E 80 04 21 */	bctrl
/* 8000D04C 00007DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000D050 00007DD0  7C 08 03 A6 */	mtlr r0
/* 8000D054 00007DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000D058 00007DD8  4E 80 00 20 */	blr

.global NSNMessengerScene__SceneCreated_void_
NSNMessengerScene__SceneCreated_void_:
/* 8000D05C 00007DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000D060 00007DE0  7C 08 02 A6 */	mflr r0
/* 8000D064 00007DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000D068 00007DE8  81 83 33 34 */	lwz r12, 0x3334(r3)
/* 8000D06C 00007DEC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8000D070 00007DF0  7D 89 03 A6 */	mtctr r12
/* 8000D074 00007DF4  4E 80 04 21 */	bctrl
/* 8000D078 00007DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000D07C 00007DFC  7C 08 03 A6 */	mtlr r0
/* 8000D080 00007E00  38 21 00 10 */	addi r1, r1, 0x10
/* 8000D084 00007E04  4E 80 00 20 */	blr