#include <types.h>
void updateArrayDataWithResult(s32 param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  short *local_28 [5];
  
  TRK_memset(param_1,0,0x280);
  iVar2 = get_dat_8065bc08_if_dat_8065bc00_not_zero();
  iVar3 = GetResultFromLookupTable();
  if (iVar3 < 0) {
    (&DAT_8065b16c)[iVar2] = 0;
  }
  else if (DAT_8020fc68 <= iVar3) {
    iVar6 = DAT_8020fc5c;
    if ((DAT_8020fc6c <= iVar3) && (iVar6 = DAT_8020fc64, iVar3 < DAT_8020fc70)) {
      iVar6 = DAT_8020fc60;
    }
    uVar5 = (&DAT_8065b16c)[iVar2] + iVar6 * 0x9f;
    uVar1 = uVar5 >> 0x10;
    GetMemoryBlock(local_28,uVar1 + 4);
    for (iVar3 = uVar1 + 4; iVar3 != 0; iVar3 = iVar3 + -1) {
      iVar4 = (int)*local_28[0];
      if (DAT_8065b15c < iVar4) {
        DAT_8065b15c = iVar4;
      }
      if ((1000 < iVar4) && (DAT_8065b158 < iVar4)) {
        DAT_8065b158 = iVar4;
      }
      local_28[0] = local_28[0] + 1;
    }
    uVar5 = uVar5 + iVar6;
    (&DAT_8065b16c)[iVar2] = uVar5 & 0xffff;
    update_array_data(uVar5 >> 0x10);
  }
  return;
}

