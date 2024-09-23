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

void CXObj::JumpHandler(double distance, hsdJObj* objToMove, int unk)
{
	objToMove->unk[0x34] = distance;
}