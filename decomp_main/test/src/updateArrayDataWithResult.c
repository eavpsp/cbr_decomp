#include <types.h>
#include <TRK/TRK.h>
#include <stddef.h>
extern int INT_8065b16c;
extern int INT_8020fc68;
extern int INT_8020fc5c;
extern int INT_8020fc6c;
extern int INT_8020fc64;
extern int INT_8020fc70;
extern int INT_8020fc60;
extern int INT_8065b15c;
extern int INT_8065b158;
extern int get_dat_8065bc08_if_dat_8065bc00_not_zero();
extern int GetResultFromLookupTable();
extern void GetMemoryBlock(int val, uint val2);
extern void update_array_data(uint data);

void updateArrayDataWithResult(s32 param_1)
{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int local_res4;
  int local_30;
  int local_28;
  int local_14;
  
  TRK_memset(param_1,0,640);
  iVar2 = get_dat_8065bc08_if_dat_8065bc00_not_zero();
  iVar3 = GetResultFromLookupTable();
  if (iVar3 < 0) {
    (&INT_8065b16c)[iVar2] = 0;
  }
  else if (INT_8020fc68 <= iVar3) {
    iVar6 = INT_8020fc5c;
    if ((INT_8020fc6c <= iVar3) && (iVar6 = INT_8020fc64, iVar3 < INT_8020fc70)) {
      iVar6 = INT_8020fc60;
    }
    uVar5 = (&INT_8065b16c)[iVar2] + iVar6 * 159;
    uVar1 = uVar5 >> 16;
    GetMemoryBlock(&local_28,uVar1 + 4);
    for (iVar3 = uVar1 + 4; iVar3 != 0; iVar3 = iVar3 + -1) {
      iVar4 = (int)*(short *)local_28;
      if (INT_8065b15c < iVar4) {
        INT_8065b15c = iVar4;
      }
      if ((1000 < iVar4) && (INT_8065b158 < iVar4)) {
        INT_8065b158 = iVar4;
      }
      local_28 = local_28 + 2;
    }
    uVar5 = uVar5 + iVar6;
    (&INT_8065b16c)[iVar2] = uVar5 & 0xffff;
    update_array_data(uVar5 >> 16);
  }
  return;
}