#include <types.h>
//externs
extern s32 lbl_8065B16C;
extern s32 lbl_8020FC68;
extern s32 lbl_8020FC5C;
extern s32 lbl_8020FC70;
extern s32 lbl_8065B15C;
extern s32 lbl_8065B158;
extern s32 lbl_8020FC60;
//SW
//Size: 0x17c / 0x118
void updateArrayDataWithResult(s32 objPtr)
{
  TRK_memset(objPtr, 0, 0x280);
  
  int tempVar2 = get_dat_8065bc08_if_dat_8065bc00_not_zero();
  int tempVar3 = GetResultFromLookupTable();
  
  if (tempVar3 >= 0 && lbl_8020FC68 <= tempVar3) {
    int longVar6 = (lbl_8020FC5C <= tempVar3) ? 0x5821 : lbl_8020FC5C;
    
    if (tempVar3 < 0xF0) {
      longVar6 = 0x581F;
    }
    
    uint tempVar5 = (&lbl_8065B16C)[tempVar2] + longVar6 * 0x9f;
    uint tempVar1 = tempVar5 >> 0x10;
    
    int local28;
    GetMemoryBlock(&local28, tempVar1 + 4);
    
    for (int tempVar3 = tempVar1 + 4; tempVar3 != 0; tempVar3 = tempVar3 + -1) {
      int tempVar4 = (int)*(short *)local28;
      
      if (lbl_8065B15C < tempVar4) {
        lbl_8065B15C = tempVar4;
      }
      
      if (tempVar4 > 1000 && lbl_8065B158 < tempVar4) {
        lbl_8065B158 = tempVar4;
      }
      
      local28 = local28 + 2;
    }
    
    tempVar5 = tempVar5 + longVar6;
    (&lbl_8065B16C)[tempVar2] = tempVar5 & 0xffff;
    updateArrayData(tempVar5 >> 0x10);
  }
}





//.global updateArrayDataWithResult
//updateArrayDataWithResult:
//* 8000A560 000052E0  94 21 FF D0 */	stwu r1, -0x30(r1)
//* 8000A564 000052E4  7C 08 02 A6 */	mflr r0
//* 8000A568 000052E8  38 80 00 00 */	li r4, 0x0
//* 8000A56C 000052EC  38 A0 02 80 */	li r5, 0x280
//* 8000A570 000052F0  90 01 00 34 */	stw r0, 0x34(r1)
//* 8000A574 000052F4  BF 61 00 1C */	stmw r27, 0x1c(r1)
//* 8000A578 000052F8  4B FF AB 3D */	bl TRK_memset_N2
//* 8000A57C 000052FC  48 1E AB 49 */	bl get_dat_8065bc08_if_dat_8065bc00_not_zero
//* 8000A580 00005300  54 7F 10 3A */	slwi r31, r3, 2
//* 8000A584 00005304  3B CD 92 AC */	addi r30, r13, lbl_8065B16C@sda21
//* 8000A588 00005308  48 1E B1 BD */	bl GetResultFromLookupTable
//* 8000A58C 0000530C  2C 03 00 00 */	cmpwi r3, 0x0
//* 8000A590 00005310  40 80 00 10 */	bge lbl_8000A5A0
//* 8000A594 00005314  38 00 00 00 */	li r0, 0x0
//* 8000A598 00005318  7C 1E F9 2E */	stwx r0, r30, r31
//* 8000A59C 0000531C  48 00 00 C8 */	b func_8000A664
//lbl_8000A5A0:
//* 8000A5A0 00005320  3C 80 80 21 */	lis r4, lbl_8020FC68@ha
//* 8000A5A4 00005324  84 04 FC 68 */	lwzu r0, lbl_8020FC68@l(r4)
//* 8000A5A8 00005328  7C 03 00 00 */	cmpw r3, r0
//* 8000A5AC 0000532C  41 80 00 B8 */	blt func_8000A664
//* 8000A5B0 00005330  80 04 00 04 */	lwz r0, 0x4(r4)
//* 8000A5B4 00005334  7C 03 00 00 */	cmpw r3, r0
//* 8000A5B8 00005338  40 80 00 10 */	bge lbl_8000A5C8
//* 8000A5BC 0000533C  3C 60 80 21 */	lis r3, lbl_8020FC5C@ha
//* 8000A5C0 00005340  83 83 FC 5C */	lwz r28, lbl_8020FC5C@l(r3)
//* 8000A5C4 00005344  48 00 00 2C */	b func_8000A5F0
//lbl_8000A5C8:
//* 8000A5C8 00005348  80 04 00 08 */	lwz r0, 0x8(r4)
//* 8000A5CC 0000534C  7C 03 00 00 */	cmpw r3, r0
//* 8000A5D0 00005350  40 80 00 14 */	bge lbl_8000A5E4
//* 8000A5D4 00005354  3C 60 80 21 */	lis r3, lbl_8020FC5C@ha
//* 8000A5D8 00005358  38 63 FC 5C */	addi r3, r3, lbl_8020FC5C@l
//* 8000A5DC 0000535C  83 83 00 04 */	lwz r28, 0x4(r3)
//* 8000A5E0 00005360  48 00 00 10 */	b func_8000A5F0
//lbl_8000A5E4:
//* 8000A5E4 00005364  3C 60 80 21 */	lis r3, lbl_8020FC5C@ha
//* 8000A5E8 00005368  38 63 FC 5C */	addi r3, r3, lbl_8020FC5C@l
//* 8000A5EC 0000536C  83 83 00 08 */	lwz r28, 0x8(r3)