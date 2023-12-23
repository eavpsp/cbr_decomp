#include "include/MainMenu.h"
//.global SetCFile_N2
//SetCFile_N2:
//* 8001B408 00016188  94 21 FF F0 */	stwu r1, -0x10(r1)
//* 8001B40C 0001618C  7C 08 02 A6 */	mflr r0
//* 8001B410 00016190  3C 80 80 21 */	lis r4, lbl_802100C8@ha
//* 8001B414 00016194  90 01 00 14 */	stw r0, 0x14(r1)
//* 8001B418 00016198  38 04 00 C8 */	addi r0, r4, lbl_802100C8@l
//* 8001B41C 0001619C  93 E1 00 0C */	stw r31, 0xc(r1)
//* 8001B420 000161A0  7C 7F 1B 78 */	mr r31, r3
//* 8001B424 000161A4  90 03 3C 48 */	stw r0, 0x3c48(r3)
//* 8001B428 000161A8  38 7F 00 28 */	addi r3, r31, 0x28
//* 8001B42C 000161AC  4B FF FB 45 */	bl GameSceneManager____ct_void_
//* 8001B430 000161B0  38 7F 09 B0 */	addi r3, r31, 0x9b0
//* 8001B434 000161B4  48 00 00 81 */	bl SetObjDemo
//* 8001B438 000161B8  3C 60 80 26 */	lis r3, lbl_8025878C@ha
//* 8001B43C 000161BC  3C E0 80 26 */	lis r7, lbl_802587D8@ha
//* 8001B440 000161C0  38 03 87 8C */	addi r0, r3, lbl_8025878C@l
//* 8001B444 000161C4  3C 80 80 02 */	lis r4, BIRDOSoundPropAccessor__ResetSoundPropTable_void_@ha
//* 8001B448 000161C8  90 1F 30 A0 */	stw r0, 0x30a0(r31)
//* 8001B44C 000161CC  39 40 00 00 */	li r10, 0x0
//* 8001B450 000161D0  39 07 87 D8 */	addi r8, r7, lbl_802587D8@l
//* 8001B454 000161D4  3C 60 80 01 */	lis r3, cHeadTrack____dt_void__N5@ha
//* 8001B458 000161D8  91 5F 30 8C */	stw r10, 0x308c(r31)
//* 8001B45C 000161DC  38 00 FF FF */	li r0, -0x1
//* 8001B460 000161E0  38 A3 8C 2C */	addi r5, r3, cHeadTrack____dt_void__N5@l
//* 8001B464 000161E4  39 20 00 01 */	li r9, 0x1
//* 8001B468 000161E8  90 1F 30 78 */	stw r0, 0x3078(r31)
//* 8001B46C 000161EC  3C C0 80 21 */	lis r6, lbl_8021032C@ha
//* 8001B470 000161F0  38 06 03 2C */	addi r0, r6, lbl_8021032C@l
//* 8001B474 000161F4  38 84 AE 64 */	addi r4, r4, BIRDOSoundPropAccessor__ResetSoundPropTable_void_@l
//* 8001B478 000161F8  91 5F 30 84 */	stw r10, 0x3084(r31)
//* 8001B47C 000161FC  38 7F 31 A8 */	addi r3, r31, 0x31a8
//* 8001B480 00016200  38 C0 01 00 */	li r6, 0x100
//* 8001B484 00016204  38 E0 00 06 */	li r7, 0x6
//* 8001B488 00016208  91 5F 30 88 */	stw r10, 0x3088(r31)
//* 8001B48C 0001620C  91 3F 30 9C */	stw r9, 0x309c(r31)
//* 8001B490 00016210  91 1F 30 A0 */	stw r8, 0x30a0(r31)
//* 8001B494 00016214  90 1F 31 A0 */	stw r0, 0x31a0(r31)
//* 8001B498 00016218  48 13 5B 25 */	bl __construct_array
//* 8001B49C 0001621C  80 01 00 14 */	lwz r0, 0x14(r1)
//* 8001B4A0 00016220  7F E3 FB 78 */	mr r3, r31
//* 8001B4A4 00016224  83 E1 00 0C */	lwz r31, 0xc(r1)
//* 8001B4A8 00016228  7C 08 03 A6 */	mtlr r0
//* 8001B4AC 0001622C  38 21 00 10 */	addi r1, r1, 0x10
//* 8001B4B0 00016230  4E 80 00 20 */	blr
/*Done*/
extern TitleObject lbl_802100C8;
extern CTpl lbl_802587D8;
extern CTexObj lbl_8021032C;
extern CFile lbl_8025878C;
extern "C" int GameSceneManager____ct_void_(void * param);
extern "C" int SetObjDemo(void* param_1);
extern "C" int BIRDOSoundPropAccessor__ResetSoundPropTable_void_(int param_1);
extern "C" int cHeadTrack____dt_void__N5(int param_1);
extern "C" void __construct_array(void* param_1, void* param_2, void* param_3, int param_4, unsigned int param_5);
//(MainMenu)0x80260D30 -> ref'd by 0x8067028C
//** - hack to save elf memory works with hacks
 MainMenu::MainMenu(int param_1)
{
	*(TitleObject**)(this + 0x3c48) = &lbl_802100C8;
	GameSceneManager____ct_void_(this + 0x28);
	XObjectDemo::XObjectDemo();
	*(CFile**)(this + 0x30a0) = &lbl_8025878C;
	//*(int*)(this + 0x308c) = 0; //**
	*(int*)(this + 0x3078) = 0xffffffff;
	//*(int*)(this + 0x3084) = 0;//**
	//*(int*)(this + 0x3088) = 0;
	*(int*)(this + 0x309c) = 1;
	*(CTpl**)(this + 0x30a0) = &lbl_802587D8;
	*(CTexObj**)(this + 0x31a0) = &lbl_8021032C;
	__construct_array(this + 0x31a8, BIRDOSoundPropAccessor__ResetSoundPropTable_void_, cHeadTrack____dt_void__N5, 0x100, 6);

	return;
}

