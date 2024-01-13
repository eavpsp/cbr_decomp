#include <types.h>
extern void OSReset(int param_1,int param_2,int param_3);
u8* Debug_BBA = (u8*)0x8065b4e8;
//.global __check_pad3
//__check_pad3 :
//* 800051EC 000021EC  7C 08 02 A6 */	mflr r0
//* 800051F0 000021F0  3C 60 80 00 */	lis r3, 0x800030E4@ha
//* 800051F4 000021F4  90 01 00 04 */	stw r0, 0x4(r1)
//* 800051F8 000021F8  94 21 FF F8 */	stwu r1, -0x8(r1)
//* 800051FC 000021FC  A0 03 30 E4 */	lhz r0, 0x800030E4@l(r3)
//* 80005200 00002200  70 00 0E EF */	andi.r0, r0, 0xeef
//* 80005204 00002204  2C 00 0E EF */	cmpwi r0, 0xeef
//* 80005208 00002208  40 82 00 14 */	bne lbl_8000521C
//* 8000520C 0000220C  38 60 00 00 */	li r3, 0x0
//* 80005210 00002210  38 80 00 00 */	li r4, 0x0
//* 80005214 00002214  38 A0 00 00 */	li r5, 0x0
//* 80005218 00002218  48 16 36 C5 */	bl OSReset
//lbl_8000521C :
//* 8000521C 0000221C  80 01 00 0C */	lwz r0, 0xc(r1)
//* 80005220 00002220  38 21 00 08 */	addi r1, r1, 0x8
//* 80005224 00002224  7C 08 03 A6 */	mtlr r0
//* 80005228 00002228  4E 80 00 20 */	blr
//0x80005238
void __check_pad3(void)
{
  if ((*(int*)0x800030E4 & 0xeef) == 0xeef)
   {
    OSReset(0,0,0);
  }
  return;
}
//.global __set_debug_bba
//__set_debug_bba :
//* 8000522C 0000222C  38 00 00 01 */	li r0, 0x1
//* 80005230 00002230  98 0D 96 28 */	stb r0, -0x69d8(r13)
//* 80005234 00002234  4E 80 00 20 */	blr
void __set_debug_bba(void) {Debug_BBA  = 1; }



//.global WPADGetDpdSensitivity
//WPADGetDpdSensitivity :
//* 80005238 00002238  88 6D 96 28 */	lbz r3, -0x69d8(r13)
//* 8000523C 0000223C  4E 80 00 20 */	blr

u8 __get_debug_bba(void) { return Debug_BBA; }