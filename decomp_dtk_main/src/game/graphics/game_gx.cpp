#include<game_gx.h>


/*void FbSubwin::fn_80014964(int param_1)
{
	float fVar1;
	fVar1 = 0.0;
	*(int*)(param_1 + 0x124) = 0;
	*(float*)(param_1 + 0x130) = fVar1;
	return;
 }*/
void fn_800930E4_unk(int param_1)//VT : 80225e30 XObjLight
{
	*(int*)(param_1 + 0x980) = 0;
	*(int*)(param_1 + 0x2444) = 0xffffffff;
	*(int*)(param_1 + 0x2448) = 0xffffffff;
	*(int*)(param_1 + 0x244c) = 0xffffffff;
	*(int*)(param_1 + 0x2450) = 0xffffffff;
	*(int*)(param_1 + 0x2454) = 0xffffffff;
	*(int*)(param_1 + 0x2458) = 0xffffffff;
	*(int*)(param_1 + 0x245c) = 0xffffffff;
	*(int*)(param_1 + 0x2460) = 0xffffffff;
	return;
}