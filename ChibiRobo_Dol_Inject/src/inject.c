#include <debug.h>
extern void JumpHandler(double param_1, int* param_2, int param_3);
typedef struct  
{
    char unk[984];
}hsdJObj;
void GetJump(double distance, hsdJObj* objToMove, int unk)//0x800CB7DC
{
  
	objToMove->unk[0x34] = distance;
	SetDebugFloat(unk,0);

}