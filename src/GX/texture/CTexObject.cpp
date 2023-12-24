#include "include/GX/CTexObject.h"
/*WIP*/
/*Currenlty Breaks*/
/*Not In Build*/
//.global __ct__7CTexObjFi
//__ct__7CTexObjFi:
//* 8001AE64 00015BE4  3C 80 80 21 */	lis r4, lbl_8021032C@ha
//* 8001AE68 00015BE8  38 04 03 2C */	addi r0, r4, lbl_8021032C@l
//* 8001AE6C 00015BEC  90 03 00 FC */	stw r0, 0xfc(r3)
//* 8001AE70 00015BF0  4E 80 00 20 */	blr
extern CTexObj lbl_8021032C;

CTexObj::CTexObj(int param1)
{
    *(CTexObj **)(this + 0xfc) = &lbl_8021032C;
  return;
}
