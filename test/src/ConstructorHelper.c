#include "FunctionHelper.h"

//Call Location: 0x8001b434
void TestXobjConstructor(int param)
{
	SetDebugFloat(param, 0);//param = 0x802616E0
	XObj__ct(param);
}