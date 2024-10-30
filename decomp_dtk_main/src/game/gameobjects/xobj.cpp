/*.file "auto_03_800E25AC_text"
# 0x800E25AC - 0x800E68D8

0x800E25AC -> XObj Destructor
.text       start:0x800E25AC end:0x800E260C

.fn fn_800E3AF0, global
 800E3AF0 000DE870  4E 80 00 20 	blr
.endfn fn_800E3AF0

game/gameobjects/xobj.cpp:
	.text       start:0x80025AA4 end:0x80025B7C


*/
#include<Dolphin/os.h>
#include<xobjs.h>

//80025aa4
extern "C" void fn_801DD248(char* __assertion, char* __file, int __line);
extern "C" void fn_801C89A8(hsdJObj* param);
void CXObj::JumpHandler(double distance, hsdJObj* objToMove, int unk)
{
        hsdJObj* hsdPointer;
        bool flag;
        objToMove->unk[50] = distance;
        objToMove->unk[54] = distance;
        if (objToMove != 0 && unk != 0 || distance != objToMove->unk[1])
        {
            objToMove->unk[1] = distance;
            hsdPointer = objToMove;
            if (hsdPointer == 0)
            {
                fn_801DD248("jobj.h", (char*)0x3b8, -0x7f9a3de8);
            }
            hsdPointer->unk[14] = distance;
            if (!hsdPointer->unk[5] && hsdPointer != 0)
            {
                    if (hsdPointer == 0) {
                        fn_801DD248("jobj.h", (char*)0x25d, -0x7f9a3de8);
                    }
                    flag = false;
                    if (objToMove->unk[5] == 0 && objToMove->unk[5] != 0)
                    {
                        flag = true;
                    }
                    if (!flag) {
                        fn_801C89A8(objToMove);
                    }
            }
        }

    
}