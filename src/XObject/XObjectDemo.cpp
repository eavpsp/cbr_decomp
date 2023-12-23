#include "include/GameObjects/JObject/XObjectDemo.h"

/*WIP with Hacks*/

//.global SetObjDemo
//SetObjDemo :
//* 8001B4B4 00016234  94 21 FF F0 */	stwu r1, -0x10(r1)
//* 8001B4B8 00016238  7C 08 02 A6 */	mflr r0
//* 8001B4BC 0001623C  90 01 00 14 */	stw r0, 0x14(r1)
//* 8001B4C0 00016240  93 E1 00 0C */	stw r31, 0xc(r1)
//* 8001B4C4 00016244  7C 7F 1B 78 */	mr r31, r3
//* 8001B4C8 00016248  4B FF FA E5 */	bl SetEventData
//* 8001B4CC 0001624C  3C 80 80 21 */	lis r4, lbl_802119FC@ha
//* 8001B4D0 00016250  3C 60 80 23 */	lis r3, lbl_80237644@ha
//* 8001B4D4 00016254  38 04 19 FC */	addi r0, r4, lbl_802119FC@l
//* 8001B4D8 00016258  3C A0 80 21 */	lis r5, lbl_80210314@ha
//* 8001B4DC 0001625C  90 1F 00 34 */	stw r0, 0x34(r31)
//* 8001B4E0 00016260  38 03 76 44 */	addi r0, r3, lbl_80237644@l
//* 8001B4E4 00016264  3C 80 80 02 */	lis r4, SetScene@ha
//* 8001B4E8 00016268  3C 60 80 01 */	lis r3, GetSceneLighting@ha
//* 8001B4EC 0001626C  90 1F 0B 18 */	stw r0, 0xb18(r31)
//* 8001B4F0 00016270  38 05 03 14 */	addi r0, r5, lbl_80210314@l
//* 8001B4F4 00016274  38 A3 84 CC */	addi r5, r3, GetSceneLighting@l
//* 8001B4F8 00016278  38 84 B5 38 */	addi r4, r4, SetScene@l
//* 8001B4FC 0001627C  90 1F 0A 28 */	stw r0, 0xa28(r31)
//* 8001B500 00016280  38 7F 0B 24 */	addi r3, r31, 0xb24
//* 8001B504 00016284  38 C0 03 58 */	li r6, 0x358
//* 8001B508 00016288  38 E0 00 08 */	li r7, 0x8
//* 8001B50C 0001628C  90 1F 0A 38 */	stw r0, 0xa38(r31)
//* 8001B510 00016290  90 1F 0A 48 */	stw r0, 0xa48(r31)
//* 8001B514 00016294  90 1F 0A 58 */	stw r0, 0xa58(r31)
//* 8001B518 00016298  90 1F 0A AC */	stw r0, 0xaac(r31)
//* 8001B51C 0001629C  48 13 5A A1 */	bl __construct_array
//* 8001B520 000162A0  80 01 00 14 */	lwz r0, 0x14(r1)
//* 8001B524 000162A4  7F E3 FB 78 */	mr r3, r31
//* 8001B528 000162A8  83 E1 00 0C */	lwz r31, 0xc(r1)
//* 8001B52C 000162AC  7C 08 03 A6 */	mtlr r0
//* 8001B530 000162B0  38 21 00 10 */	addi r1, r1, 0x10
//* 8001B534 000162B4  4E 80 00 20 */	blr
extern CVec lbl_80210314;
extern XOBJDEMO lbl_802119FC;
extern CCamera lbl_80237644;
extern "C" int SetEventData(int param);
extern "C" void __construct_array(int param_1, void* param_2, void* param_3, int param_4, unsigned int param_5);
extern "C" int SetScene(int param_1);
extern "C" int GetSceneLighting(int param_1);
//DEBUGGING
//    $(OBJ_DIR)/src/XObject/XObjectDemo.o 
//0x802616E0<-right input value works with hacks
 XObjectDemo::XObjectDemo()
{
	 SetEventData(0x802616E0);
	*(XOBJDEMO**)(0x802616E0 + 0x34) = &lbl_802119FC;
	*(CCamera**)(0x802616E0 + 0xb18) = &lbl_80237644;
	*(CVec**)(0x802616E0 + 0xa28) = &lbl_80210314;
	*(CVec**)(0x802616E0 + 0xa38) = &lbl_80210314;
	*(CVec**)(0x802616E0 + 0xa48) = &lbl_80210314;
	*(CVec**)(0x802616E0 + 0xa58) = &lbl_80210314;
	*(CVec**)(0x802616E0 + 0xaac) = &lbl_80210314;
	__construct_array(0x802616E0 + 0xb24, SetScene, GetSceneLighting, 0x358, 8);
	return;
}
