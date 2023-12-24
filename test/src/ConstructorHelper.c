#include "FunctionHelper.h"
bool started = false;


CJObjBase* _CJObjBase(void) 
{
    CJObjBase* newObj = (CJObjBase*)malloc(sizeof(CJObjBase));
    newObj->objType = "CJObj";
    return newObj;
}
CJObj* _CJObj(void)
{
    CJObj* newObj = (CJObj*)malloc(sizeof(CJObj));
    newObj->super = _CJObjBase()->objType;
    return newObj;
}

void TestClassInMemory()
{
    
    CJObjBase* newObj = _CJObj();
    SetDebugText(newObj->objType);
    SetDebugFloat(&cjObjMade, 0);
   // OSReport(newObj->objType);
    

}
//Call Location: 0x8001b434 -c TestXobjConstructor:0x8001b434 
void TestXobjConstructor(int param)
{
	SetDebugFloat(param, 0);//param = 0x802616E0
	//XObj__ct(param);
}

void OnLoad(int val)
{
    OnActivate(val);
    if (!started) {
        started = true;
        TestClassInMemory();
    }
    if (started)
    {
       
    }

    return;
}