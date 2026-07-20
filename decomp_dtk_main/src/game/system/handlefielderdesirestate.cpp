#include <types.h>

extern "C" int getFlagState(int flag);
extern "C" int IsObjectEnabled(char* mainGame);
extern "C" int GetSignBitOfValue(char* mainGame);
extern "C" int getLeadingZeroCountDifference(char* elem, int idx);
extern "C" int getBitShiftDifference(char* elem, int idx);
extern "C" int GetLeadingZerosShiftCount(char* elem, int idx);
extern "C" int GetLeadingZeroCount(char* elem, int idx);
extern "C" int GetNumLeadingZerosInDifference(char* elem, int idx);
extern "C" int GetLeadingZeroCount_800b317c_(char* elem, int idx);
extern "C" int GetLeadingZeroCount_800b2f8c_(char* elem, int idx);
extern "C" int getLeadingZerosCount(char* elem, int idx);
extern "C" int GetLeadingZeroCount_800b2d40_(char* elem, int idx);
extern "C" int GetLeadingZeroCount_800b2d2c_(char* elem, int idx);
extern "C" void fn_8019E3C8(void* out, int param2);
extern "C" void HandleAudioDataAndStreaming(char* obj);
extern "C" void stopAudioAndResetDvdDataAndCloseDvdIfNeeded(void* addr, int a, int b);
extern "C" int GetTimeDifferenceLeadingZeros_(char* obj, int idx);
extern "C" void ResetTimerCounters(char* obj);
extern "C" void fn_8001C854(void* obj, int param2);
extern "C" char* GetArrayElement(char* mainGame, int index);
extern "C" int IsFlagSetInParameter_228(char* elem);
extern "C" int IsDataStructureEnabled(char* elem);
extern "C" int IsBit3SetInParameter_(char* elem);
extern "C" int IsFlagSetInSystemState_(char* elem);
extern "C" int CheckSubsystemActive_(char* obj);
extern "C" void ResetSubsystemState(char* obj);
extern "C" void SetFieldAt0x4_5044(char* field, int val);
extern "C" void SetParameterValueAtAddress(char* field, char* val);
extern "C" void SetFieldAt0x24_503C(char* field, int val);
extern "C" int getIndexFromDataStructure(char* elem);
extern "C" f32 WrapAngleToValidRange(f32 angle);
extern "C" int CheckPlayerDistanceFromGround(char* elem, char* a, char* b);
extern "C" void SetFieldAt0x4_5034(char* field, int val);
extern "C" void SetFieldAt0x4_502C(char* field, int val);
extern "C" void fn_800BADAC(char* obj);
extern "C" void ProcessDataWithInitialization(char* mainGame, int val, char* elem, int a, int b);
extern "C" int CheckSubsystemState_(char* field);
extern "C" int IsFlag80Set_(char* elem);
extern "C" void fn_800B1B14(char* field, int val);
extern "C" void fn_800B1B0C(char* field, int val);
extern "C" void fn_800D7B18(char* addr);
extern "C" void SetFieldAt0x4_22C8(char* field, int val);
extern "C" void SetFieldAt0x4_5024(char* field, int val);
extern "C" void UpdateDataStructure(char* a, char* b);
extern "C" void SetFieldAt0x4_501C(char* field, int val);
extern "C" void fn_800D6340(char* addr);
extern "C" int checkIfSpecialObj_(char* field);
extern "C" int isFirstLayerFifteen(char* field);
extern "C" int IsObjectInSpecialState(char* field);
extern "C" int GetObjectUnderwaterStatus(char* field);
extern "C" int fn_800D749C(char* field);
extern "C" int fn_8006F3FC(void);
extern "C" int IsFlagSetInDataStructure(char* elem);
extern "C" int Vec3NotEqual(f32* a, f32* b);
extern "C" void* FindNodeInArrayOfLists(char* obj, int outerCount, int* innerCounts);
extern "C" void GetBoxLengths(f32* dst, void* unused, char* jobj);
extern "C" f32 CalculateDistanceBetweenPoints(f32* p1, f32* p2);
extern "C" u32 ReadIntFromByteArray(int idx);
extern "C" void fn_800D4368(char* field, char* r29, f32* out);
extern "C" void fn_800CE120(char* field, char* r29, f32* out);
extern "C" void fn_800CBDB4(char* field, char* r29, f32* out);
extern "C" void fn_800C9C70(char* field, char* r29, f32* out);
extern "C" void fn_800C7AC4(char* field, char* r29, f32* out);
extern "C" void fn_800C56D4(char* field, char* r29, f32* out);
extern "C" void fn_800C4468(char* field, char* r29, f32* out);
extern "C" void fn_800C361C(char* field, char* r29, f32* out);
extern "C" void fn_800C1610(char* field, char* r29, f32* out);
extern "C" void fn_800BFC04(char* field, char* r29, f32* out);
extern "C" void HandleModelLoadingAnimating(char* obj, f32* out);
extern "C" void fn_80097B50(char* field, int param2);
extern "C" void fn_80096B90(char* field, int param2);

typedef union {
    struct {
        u32 hi, lo;
    } parts;
    f64 d;
} DoubleBits;

extern "C" char MainGame[];
extern "C" f32 lbl_8065D35C;
extern "C" f32 lbl_8065D49C;
extern "C" f32 lbl_8065D380;
extern "C" f32 lbl_8065D47C;
extern "C" f32 lbl_8065D5A0;
extern "C" f32 lbl_8065D43C;
extern "C" f64 lbl_8065D398;
extern "C" f32 lbl_8065D484;
extern "C" f32 lbl_8065D4CC;
extern "C" f32 lbl_8065D3D0;
extern "C" int lbl_80660000;
extern "C" int lbl_8065FFF8;
extern "C" int lbl_8065FFFC;

//800B35CC
extern "C" f32 fn_800B35CC(char* obj, int param2)
{
    f32 retVal;
    char* structPtr;
    char* r29 = obj + 0x12DA0;
    int r25flag;
    char* r25;
    int r28;
    int r26;
    int v10;
    int r6temp;
    f32 stackC;
    char* elemR26;

    if (getFlagState(0x8000) != 0) {
        retVal = lbl_8065D35C;
        goto End;
    }

    retVal = lbl_8065D49C;
    stackC = lbl_8065D49C;

    if (IsObjectEnabled(MainGame) == 0) goto Tail;
    if (GetSignBitOfValue(MainGame) != 0) goto Tail;
    if (!(*(u32*)(obj + 0x980) & 0x20000000)) goto Tail;

    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) {
        if (getLeadingZeroCountDifference(obj + 0xa44, 4) == 0) goto Tail;
    }
    if (getBitShiftDifference(obj + 0xac0, 0) == 0) goto Tail;
    if (GetLeadingZerosShiftCount(obj + 0xb10, 0) == 0) goto Tail;
    if (GetLeadingZeroCount(obj + 0xb64, 0) == 0) goto Tail;
    if (GetNumLeadingZerosInDifference(obj + 0xba8, 0) == 0) goto Tail;
    if (GetLeadingZeroCount_800b317c_(obj + 0xbe8, 0) == 0) goto Tail;
    if (GetLeadingZeroCount_800b2f8c_(obj + 0xc40, 0) == 0) goto Tail;
    if (getLeadingZerosCount(obj + 0xc88, 0) == 0) goto Tail;
    if (GetLeadingZeroCount_800b2d40_(obj + 0xcc0, 0) == 0) goto Tail;
    if (GetLeadingZeroCount_800b2d2c_(obj + 0x9438, 0) == 0) goto Tail;

    fn_8019E3C8(&structPtr, 0);

    if (*(int*)(MainGame + 0x8580) != 0) goto Merge1;

    if (!(*(int*)(structPtr + 0x14) & 0x400)) goto AfterGate;
    if (*(int*)(structPtr + 0x4) & 0x1000) goto AfterGate;

    {
        int field1b10 = *(int*)(MainGame + 0x1b10);
        int field1b14 = *(int*)(MainGame + 0x1b14);
        {
            int mask2 = 0;
            int a = field1b10 & 0x8000;
            int b = field1b14 & mask2;
            b ^= mask2;
            a ^= mask2;
            if ((b | a) == 0) goto AfterGate;
        }
        if (*(int*)(obj + 0x95D4) >= 0) goto AfterGate;
        {
            int mask1 = 0;
            int a = field1b10 & mask1;
            int b = field1b14 & 0x100;
            b ^= mask1;
            a ^= mask1;
            if ((b | a) != 0) goto AudioStop;
        }
    }

    HandleAudioDataAndStreaming(obj);
    goto Merge1;

AudioStop:
    stopAudioAndResetDvdDataAndCloseDvdIfNeeded(MainGame + 0xE7E24, 0x85, 0xff);
    goto Merge1;

AfterGate:
    if (GetTimeDifferenceLeadingZeros_(obj, 0) != 0) goto Merge1;
    if (!(*(int*)(r29 + 0x14) & 0x200)) goto Merge1;
    if (*(int*)(r29 + 0x4) & 0x1000) goto Merge1;

    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        b ^= mask1;
        a ^= mask1;
        if ((b | a) != 0) goto Merge1;
    }
    if (*(int*)(obj + 0x95D4) >= 0) goto Merge1;

    ResetTimerCounters(obj);
    fn_8001C854(&structPtr, -1);
    retVal = lbl_8065D35C;
    goto End;

Merge1:
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x400;
        b ^= mask1;
        a ^= mask1;
        if ((b | a) != 0) goto Section4;
    }
    if (GetTimeDifferenceLeadingZeros_(obj, 0) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 1) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 2) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 3) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 4) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 5) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 6) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 7) != 0) goto Section3;
    if (GetTimeDifferenceLeadingZeros_(obj, 8) != 0) goto Section3;
    goto Section4;

Section3:
    {
        u32 gateBit = *(u32*)(r29 + 0x14) & 0x100;
        int r5 = 0;
        if (gateBit == 0) goto L_800B3990;
        {
            int mask1 = 0;
            int a = *(int*)(MainGame + 0x1b10) & mask1;
            int b = *(int*)(MainGame + 0x1b14) & 0x500;
            a ^= mask1; b ^= mask1;
            if ((b | a) != 0) goto L_800B3990;
        }
        if (*(int*)(obj + 0x95D4) >= 0) goto L_800B3990;
        r5 = 1;
    L_800B3990:
        r25flag = r5 & 0xFF;
    }
    if (GetTimeDifferenceLeadingZeros_(obj, 1) != 0) goto L_800B39D0;
    if (GetTimeDifferenceLeadingZeros_(obj, 2) != 0) goto L_800B39D0;
    if (GetTimeDifferenceLeadingZeros_(obj, 3) == 0) goto L_800B3A04;

L_800B39D0:
    {
        int v = *(int*)(obj + 0xa24);
        if (v == 2) { r6temp = 2; goto L_800B3A94; }
        if (v > 2) { r6temp = 0; goto L_800B3A94; }
        if (v >= 1) { r6temp = 1; goto L_800B3A94; }
        r6temp = 0;
        goto L_800B3A94;
    }

L_800B3A04:
    if (GetTimeDifferenceLeadingZeros_(obj, 6) != 0) { r6temp = 0; goto L_800B3A94; }
    if (GetTimeDifferenceLeadingZeros_(obj, 4) != 0) goto L_800B3A70;
    if (GetTimeDifferenceLeadingZeros_(obj, 5) != 0) goto L_800B3A70;
    if (GetTimeDifferenceLeadingZeros_(obj, 7) != 0) goto L_800B3A70;
    if (GetTimeDifferenceLeadingZeros_(obj, 8) == 0) goto L_800B3A90;

L_800B3A70:
    {
        int v = *(int*)(obj + 0xa28);
        if (v == 1) { r6temp = 1; goto L_800B3A94; }
        r6temp = 0;
        goto L_800B3A94;
    }

L_800B3A90:
    r6temp = 2;

L_800B3A94:
    v10 = lbl_8065FFF8;
    r28 = lbl_8065FFFC;
    v10 = r6temp;
    r28 = GetTimeDifferenceLeadingZeros_(obj, 0);
    if (r25flag == 0) goto L_800B3B34;
    if (*(int*)(obj + 0xa10) < 0) goto L_800B3B34;
    {
        r25 = GetArrayElement(MainGame, *(int*)(obj + 0xa10));
        {
            int mask1 = 0;
            int a = *(int*)(r25 + 0x228) & 0x100;
            int b = *(int*)(r25 + 0x22c) & mask1;
            a ^= mask1; b ^= mask1;
            if ((b | a) == 0) goto Section4;
        }
        {
            void* vt = *(void**)(r25 + 0x34);
            int (*fn)(char*) = *(int (**)(char*))((char*)vt + 0x128);
            int result = fn(r25);
            ProcessDataWithInitialization(MainGame, result, r25, -1, -1);
        }
        goto Section4;
    }

L_800B3B34:
    if (r25flag != 0) goto L_800B3B64;
    {
        int v = *(int*)(obj + 0x9e4);
        if (v >= 0 && v == *(int*)(obj + 0x9cc)) goto L_800B3B64;
    }
    if (*(int*)(obj + 0x95E0) == 0) goto Section4;

L_800B3B64:
    *(int*)(obj + 0x95E0) = 0;
    r26 = 0;
    if (r28 == 0) goto L_800B3C98;
    if (*(int*)(obj + 0x9dc) < 0) goto L_800B3C98;
    if (*(int*)(obj + 0x9dc) == *(int*)(obj + 0x9d4)) goto L_800B3C98;
    r25 = GetArrayElement(MainGame, *(int*)(obj + 0x9dc));
    if (IsFlagSetInParameter_228(r25) == 0) goto L_800B3C38;
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) {
        if (getLeadingZeroCountDifference(obj + 0xa44, 4) == 0) goto L_800B3D54;
    }
    if (*(f32*)(r25 + 0x77c) <= lbl_8065D380 + *(f32*)(obj + 0xcc)) goto L_800B3D54;
    if (CheckSubsystemActive_(obj) != 0) ResetSubsystemState(obj);
    SetFieldAt0x4_5044(obj + 0xa44, 1);
    SetParameterValueAtAddress(obj + 0xa44, r25);
    SetFieldAt0x24_503C(obj + 0xa44, 0);
    r26 = 1;
    goto L_800B3D54;

L_800B3C38:
    {
        int mask1 = 0;
        int a = *(int*)(r25 + 0x228) & 0x100;
        int b = *(int*)(r25 + 0x22c) & mask1;
        a ^= mask1; b ^= mask1;
        if ((b | a) == 0) goto L_800B3D54;
    }
    {
        void* vt = *(void**)(r25 + 0x34);
        int (*fn)(char*) = *(int (**)(char*))((char*)vt + 0x128);
        int result = fn(r25);
        ProcessDataWithInitialization(MainGame, result, r25, -1, -1);
    }
    r26 = 1;
    goto L_800B3D54;

L_800B3C98:
    if (r28 == 0) goto L_800B3D54;
    if (*(int*)(obj + 0x9dc) < 0) goto L_800B3D54;
    if (*(int*)(obj + 0x9dc) != *(int*)(obj + 0x9d4)) goto L_800B3D54;
    if (*(int*)(obj + 0x9cc) != *(int*)(obj + 0x9dc)) goto L_800B3D54;
    r25 = GetArrayElement(MainGame, *(int*)(obj + 0x9dc));
    {
        int mask1 = 0;
        int a = *(int*)(r25 + 0x228) & 0x100;
        int b = *(int*)(r25 + 0x22c) & mask1;
        a ^= mask1; b ^= mask1;
        if ((b | a) == 0) goto L_800B3D54;
        {
            int c = *(int*)(r25 + 0x228) & 0x1000;
            c ^= mask1;
            if ((b | c) != 0) goto L_800B3D54;
        }
    }
    if ((short)getIndexFromDataStructure(r25) == 8) goto L_800B3D54;
    {
        void* vt = *(void**)(r25 + 0x34);
        int (*fn)(char*) = *(int (**)(char*))((char*)vt + 0x128);
        int result = fn(r25);
        ProcessDataWithInitialization(MainGame, result, r25, -1, -1);
    }
    r26 = 1;

L_800B3D54:
    if (r26 != 0) goto Section4;
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) {
        if (getLeadingZeroCountDifference(obj + 0xa44, 4) == 0) goto Section4;
    }

    if (*(int*)(obj + 0x9cc) < 0) goto Section4;
    r25 = GetArrayElement(MainGame, *(int*)(obj + 0x9cc));
    if (r28 == 0) goto L_800B3E2C;
    if (IsFlagSetInParameter_228(r25) == 0) goto L_800B3E2C;
    if (*(int*)(obj + 0x9cc) == *(int*)(obj + 0x9d4)) goto L_800B3E2C;
    if (*(f32*)(r25 + 0x77c) <= lbl_8065D380 + *(f32*)(obj + 0xcc)) goto L_800B3E2C;
    if (CheckSubsystemActive_(obj) != 0) ResetSubsystemState(obj);
    SetFieldAt0x4_5044(obj + 0xa44, 1);
    {
        char* elem3 = GetArrayElement(MainGame, *(int*)(obj + 0x9cc));
        SetParameterValueAtAddress(obj + 0xa44, elem3);
    }
    SetFieldAt0x24_503C(obj + 0xa44, 0);
    goto L_800B40A4;

L_800B3E2C:
    if (r28 == 0) goto L_800B3E70;
    if (IsDataStructureEnabled(r25) == 0) goto L_800B3E70;
    {
        f32 diff = *(f32*)(r25 + 0x780) - *(f32*)(obj + 0xcc);
        if (diff < lbl_8065D35C) diff = -diff;
        if (lbl_8065D35C == diff) goto L_800B40A4;
        goto L_800B40A4;
    }

L_800B3E70:
    if (IsBit3SetInParameter_(r25) == 0) goto L_800B3F98;
    r26 = 0;
    if (*(int*)(r25 + 0x784) != 0) goto L_800B3F04;
    if (*(int*)(obj + 0x9cc) != *(int*)(obj + 0x9d4)) goto L_800B3ED8;
    {
        f32 ang = WrapAngleToValidRange(*(f32*)(obj + 0xfc) - *(f32*)(r25 + 0xfc));
        if (ang < lbl_8065D47C || ang == lbl_8065D47C) goto L_800B3ED0;
        if (!(ang > lbl_8065D5A0 || ang == lbl_8065D5A0)) goto L_800B3F04;
    }
L_800B3ED0:
    r26 = -1;
    goto L_800B3F04;

L_800B3ED8:
    if (*(f32*)(r25 + 0x780) <= *(f32*)(obj + 0x77c)) goto L_800B3F04;
    if (CheckPlayerDistanceFromGround(r25, obj + 0xb64, obj + 0xc8) != 0) r26 = 1;

L_800B3F04:
    if (r26 == 0) goto L_800B40A4;
    if (v10 != 1) goto L_800B3F38;
    *(int*)(obj + 0x95E0) = 0;
    *(int*)(obj + 0x95E4) = 1;
    ResetTimerCounters(obj);
    goto L_800B3F8C;

L_800B3F38:
    if (v10 != 2) goto L_800B3F8C;
    if (CheckSubsystemActive_(obj) != 0) ResetSubsystemState(obj);
    if (r26 > 0) {
        SetFieldAt0x4_5034(obj + 0xb64, 1);
        goto L_800B3F80;
    }
    if (r26 >= 0) goto L_800B3F80;
    SetFieldAt0x4_5034(obj + 0xb64, 2);

L_800B3F80:
    SetParameterValueAtAddress(obj + 0xb64, r25);

L_800B3F8C:
    fn_800BADAC(obj);
    goto L_800B40A4;

L_800B3F98:
    if (IsFlagSetInSystemState_(r25) == 0) goto L_800B40A4;
    r26 = 0;
    if (*(int*)(r25 + 0x784) != 0) goto L_800B4014;
    if (*(int*)(obj + 0x9cc) != *(int*)(obj + 0x9d4)) goto L_800B4000;
    {
        f32 ang = WrapAngleToValidRange(*(f32*)(obj + 0xfc) - *(f32*)(r25 + 0xfc));
        if (ang < lbl_8065D47C || ang == lbl_8065D47C) goto L_800B3FF8;
        if (!(ang > lbl_8065D5A0 || ang == lbl_8065D5A0)) goto L_800B4014;
    }
L_800B3FF8:
    r26 = -1;
    goto L_800B4014;

L_800B4000:
    if (*(f32*)(r25 + 0x780) <= *(f32*)(obj + 0x77c)) goto L_800B4014;
    r26 = 1;

L_800B4014:
    if (r26 == 0) goto L_800B40A4;
    if (v10 != 1) goto L_800B4048;
    *(int*)(obj + 0x95E0) = 0;
    *(int*)(obj + 0x95E4) = 2;
    ResetTimerCounters(obj);
    goto L_800B409C;

L_800B4048:
    if (v10 != 2) goto L_800B409C;
    if (CheckSubsystemActive_(obj) != 0) ResetSubsystemState(obj);
    if (r26 > 0) {
        SetFieldAt0x4_502C(obj + 0xba8, 1);
        goto L_800B4090;
    }
    if (r26 >= 0) goto L_800B4090;
    SetFieldAt0x4_502C(obj + 0xba8, 2);

L_800B4090:
    SetParameterValueAtAddress(obj + 0xba8, r25);

L_800B409C:
    fn_800BADAC(obj);

L_800B40A4:
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) {
        if (getLeadingZeroCountDifference(obj + 0xa44, 4) == 0) goto L_800B41F8;
        if (CheckSubsystemState_(obj + 0xa44) == 0) goto L_800B41F8;
    }

L_800B40DC:
    if (getBitShiftDifference(obj + 0xac0, 0) == 0) goto L_800B41F8;
    if (GetLeadingZerosShiftCount(obj + 0xb10, 0) == 0) goto L_800B41F8;
    if (GetLeadingZeroCount(obj + 0xb64, 0) == 0) goto L_800B41F8;
    if (GetNumLeadingZerosInDifference(obj + 0xba8, 0) == 0) goto L_800B41F8;
    if (GetLeadingZeroCount_800b317c_(obj + 0xbe8, 0) == 0) goto L_800B41F8;
    if (GetLeadingZeroCount_800b2f8c_(obj + 0xc40, 0) == 0) goto L_800B41F8;
    if (getLeadingZerosCount(obj + 0xc88, 0) == 0) goto L_800B41F8;
    if (GetLeadingZeroCount_800b2d40_(obj + 0xcc0, 0) == 0) goto L_800B41F8;
    if (GetLeadingZeroCount_800b2d2c_(obj + 0x9438, 0) == 0) goto L_800B41F8;
    if (IsFlag80Set_(r25) == 0) goto L_800B41F8;
    if (*(int*)(obj + 0x9cc) == *(int*)(obj + 0x9d4)) goto L_800B41F8;
    if (CheckSubsystemActive_(obj) != 0) ResetSubsystemState(obj);
    fn_800BADAC(obj);
    fn_800B1B14(obj + 0xbe8, 1);
    SetParameterValueAtAddress(obj + 0xbe8, r25);
    fn_800B1B0C(obj + 0xbe8, 0);

L_800B41F8:
    if (GetSignBitOfValue(MainGame) != 0) goto L_800B4790;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x400;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    if (*(int*)(obj + 0x95D4) >= 0) goto L_800B4790;
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) {
        if (getLeadingZeroCountDifference(obj + 0xa44, 4) == 0) goto L_800B4790;
    }

L_800B426C:
    if (getBitShiftDifference(obj + 0xac0, 0) == 0) goto L_800B4790;
    if (GetLeadingZerosShiftCount(obj + 0xb10, 0) == 0) goto L_800B4790;
    if (GetLeadingZeroCount(obj + 0xb64, 0) == 0) goto L_800B4790;
    if (GetNumLeadingZerosInDifference(obj + 0xba8, 0) == 0) goto L_800B4790;
    if (GetLeadingZeroCount_800b317c_(obj + 0xbe8, 0) == 0) goto L_800B4790;
    if (GetLeadingZeroCount_800b2f8c_(obj + 0xc40, 0) == 0) goto L_800B4790;
    if (getLeadingZerosCount(obj + 0xc88, 0) == 0) goto L_800B4790;
    if (GetLeadingZeroCount_800b2d40_(obj + 0xcc0, 0) == 0) goto L_800B4790;
    if (GetLeadingZeroCount_800b2d2c_(obj + 0x9438, 0) == 0) goto L_800B4790;
    if (GetTimeDifferenceLeadingZeros_(obj, 0) == 0) goto L_800B4434;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    if (*(int*)(obj + 0xA80C) == 0) goto L_800B43D4;
    {
        int v = *(int*)(r29 + 0x14);
        if ((v & 0x100) != 0) goto L_800B4384;
        if ((v & 0x200) == 0) goto L_800B43D4;
    }

L_800B4384:
    r25 = *(char**)(obj + 0xa94);
    if (r25 == 0) goto L_800B4790;
    {
        void* vt = *(void**)(r25 + 0x34);
        int (*fn)(char*) = *(int (**)(char*))((char*)vt + 0x128);
        int result = fn(r25);
        ProcessDataWithInitialization(MainGame, result, r25, -1, -1);
    }
    fn_800BADAC(obj);
    stackC = lbl_8065D35C;
    goto L_800B4790;

L_800B43D4:
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) goto L_800B4790;
    if (GetLeadingZeroCount_800b317c_(obj + 0xbe8, 0) == 0) goto L_800B4790;
    if (*(int*)(obj + 0xA80C) != 0) goto L_800B4790;
    if (*(int*)(obj + 0x9e4) >= 0) goto L_800B4790;
    if (!(*(int*)(r29 + 0x4) & 0x100)) goto L_800B4790;
    *(int*)(obj + 0xa18) |= 0x80;
    goto L_800B4790;

Section4:
L_800B4434:
    if (GetTimeDifferenceLeadingZeros_(obj, 1) == 0) goto L_800B44D8;
    if (!(*(int*)(r29 + 0x14) & 0x100)) goto L_800B4790;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    SetFieldAt0x4_22C8(obj + 0xc88, 3);
    {
        typedef void (*Fn80)(char*, int, f32, f32, f32, f32, int, int, int, int);
        Fn80 fn = *(Fn80*)(*(char**)(obj + 0x34) + 0x80);
        fn(obj, 0x27, lbl_8065D35C, lbl_8065D380, lbl_8065D35C, lbl_8065D43C, 0, 0, 0, 0);
    }
    fn_800D7B18(obj + 0xB1B0);
    fn_800BADAC(obj);
    goto L_800B4790;

L_800B44D8:
    if (GetTimeDifferenceLeadingZeros_(obj, 2) == 0) goto L_800B4520;
    {
        int r4val = 0;
        if (*(int*)(r29 + 0x14) & 0x100) r4val = 7;
        if (r4val == 0) goto L_800B4790;
        SetFieldAt0x4_5024(obj + 0xcc0, r4val);
    }
    UpdateDataStructure(obj + 0xf8, obj + 0xf8);
    goto L_800B4790;

L_800B4520:
    if (GetTimeDifferenceLeadingZeros_(obj, 3) == 0) goto L_800B4588;
    if (!(*(int*)(r29 + 0x14) & 0x100)) goto L_800B4790;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    SetFieldAt0x4_501C(obj + 0x9438, 3);
    fn_800D6340(obj + 0xC4C0);
    goto L_800B4790;

L_800B4588:
    if (GetTimeDifferenceLeadingZeros_(obj, 4) == 0) goto L_800B4604;
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) != 0) goto L_800B4604;
    if (checkIfSpecialObj_(obj + 0xa44) == 0) goto L_800B4604;
    if (!(*(int*)(r29 + 0x14) & 0x100)) goto L_800B4790;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    SetFieldAt0x4_5044(obj + 0xa44, 0x1b);
    goto L_800B4790;

L_800B4604:
    if (GetTimeDifferenceLeadingZeros_(obj, 5) == 0) goto L_800B468C;
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) != 0) goto L_800B468C;
    if (isFirstLayerFifteen(obj + 0xa44) == 0) goto L_800B468C;
    if (!(*(int*)(r29 + 0x14) & 0x100)) goto L_800B4790;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    if (*(int*)(obj + 0x158) == 0x8ae) goto L_800B4790;
    SetFieldAt0x4_5044(obj + 0xa44, 0x1d);
    goto L_800B4790;

L_800B468C:
    if (GetTimeDifferenceLeadingZeros_(obj, 6) == 0) goto L_800B4708;
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) != 0) goto L_800B4708;
    if (IsObjectInSpecialState(obj + 0xa44) == 0) goto L_800B4708;
    if (!(*(int*)(r29 + 0x14) & 0x100)) goto L_800B4790;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    SetFieldAt0x4_5044(obj + 0xa44, 0x1f);
    goto L_800B4790;

L_800B4708:
    if (GetTimeDifferenceLeadingZeros_(obj, 7) == 0) goto L_800B4784;
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) != 0) goto L_800B4784;
    if (GetObjectUnderwaterStatus(obj + 0xa44) == 0) goto L_800B4784;
    if (!(*(int*)(r29 + 0x14) & 0x100)) goto L_800B4790;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4790;
    }
    SetFieldAt0x4_5044(obj + 0xa44, 0x23);
    goto L_800B4790;

L_800B4784:
    GetTimeDifferenceLeadingZeros_(obj, 8);

L_800B4790:
    fn_8001C854(&structPtr, -1);

Tail:
    if (!(*(int*)(obj + 0xa18) & 0x80)) goto L_800B4934;
    r25flag = 0;
    if (*(int*)(obj + 0xa20) == 0) goto L_800B47C8;
    *(int*)(obj + 0xa1c) += param2;
    goto L_800B47DC;

L_800B47C8:
    *(int*)(obj + 0xa1c) = 0;
    *(int*)(obj + 0xa20) = (*(int*)(r29 + 0x14) & 0x100) ? 1 : 0;

L_800B47DC:
    if (!(*(int*)(obj + 0xa18) & 0x2)) goto L_800B4854;
    {
        DoubleBits u1;
        u1.parts.hi = 0x43300000;
        u1.parts.lo = ReadIntFromByteArray(3) ^ 0x80000000;
        f32 ratio = (f32)((u1.d - lbl_8065D398) / lbl_8065D484);

        DoubleBits u2;
        u2.parts.hi = 0x43300000;
        u2.parts.lo = *(u32*)(obj + 0xa1c) ^ 0x80000000;
        f32 aVal = (f32)(u2.d - lbl_8065D398);

        f32 threshold = lbl_8065D4CC * ratio;
        if (!(aVal > threshold || aVal == threshold)) goto L_800B4854;
    }
    if (*(int*)(obj + 0xa20) == 0) goto L_800B48F8;
    r25flag = 1;
    goto L_800B48F8;

L_800B4854:
    {
        int flagsA18 = *(int*)(obj + 0xa18);
        if (flagsA18 & 1) goto L_800B48E8;
        {
            int lit = lbl_80660000;
            char* node = (char*)FindNodeInArrayOfLists(obj + 0x9AD0, 1, &lit);
            f32 boxLen[3];
            GetBoxLengths(boxLen, obj, node);
            f32 ang = CalculateDistanceBetweenPoints((f32*)(obj + 0xc8), boxLen);
            ang = *(f32*)(obj + 0xfc) - ang;
            ang = WrapAngleToValidRange(ang);
            if (ang < lbl_8065D47C) goto L_800B48D4;
            if (ang <= lbl_8065D5A0) goto L_800B48F8;
        L_800B48D4:
            if (*(int*)(obj + 0xa20) != 0) r25flag = 1;
            goto L_800B48F8;
        }
    L_800B48E8:
        if (flagsA18 & 1) goto L_800B48F8;
        if (flagsA18 & 2) goto L_800B48F8;
        r25flag = 1;
    }

L_800B48F8:
    if (r25flag == 0) goto L_800B4934;
    SetFieldAt0x4_5044(obj + 0xa44, 1);
    SetParameterValueAtAddress(obj + 0xa44, obj + 0x9AD0);
    SetFieldAt0x24_503C(obj + 0xa44, 0);
    *(int*)(obj + 0xa1c) = 0;
    goto L_800B4940;

L_800B4934:
    *(int*)(obj + 0xa1c) = 0;
    *(int*)(obj + 0xa20) = 0;

L_800B4940:
    if (GetTimeDifferenceLeadingZeros_(obj, 2) == 0) goto L_800B49BC;
    if (GetSignBitOfValue(MainGame) != 0) goto L_800B49BC;
    if (GetLeadingZeroCount_800b2d40_(obj + 0xcc0, 7) != 0) goto L_800B4990;
    if (GetLeadingZeroCount_800b2d40_(obj + 0xcc0, 8) == 0) goto L_800B49BC;

L_800B4990:
    if (fn_800D749C(obj + 0xBB38) == 0) goto L_800B49BC;
    if (!(*(int*)(r29 + 0x14) & 0x100)) goto L_800B49BC;
    SetFieldAt0x4_5024(obj + 0xcc0, 5);

L_800B49BC:
    if (!(*(int*)(r29 + 0x14) & 0x10)) goto L_800B4B9C;
    if (GetSignBitOfValue(MainGame) != 0) goto L_800B4B9C;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x400;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4B9C;
    }
    if (*(int*)(obj + 0x95D4) >= 0) goto L_800B4B9C;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x20;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4B9C;
    }
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x100;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4B9C;
    }
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) {
        if (getLeadingZeroCountDifference(obj + 0xa44, 4) == 0) goto L_800B4B9C;
    }
    if (getBitShiftDifference(obj + 0xac0, 0) == 0) {
        if (getBitShiftDifference(obj + 0xac0, 5) == 0) goto L_800B4B9C;
    }
    if (GetLeadingZerosShiftCount(obj + 0xb10, 0) == 0) goto L_800B4B9C;
    if (GetLeadingZeroCount(obj + 0xb64, 0) == 0) {
        if (GetLeadingZeroCount(obj + 0xb64, 5) == 0) goto L_800B4B9C;
    }
    if (GetNumLeadingZerosInDifference(obj + 0xba8, 0) == 0) {
        if (GetNumLeadingZerosInDifference(obj + 0xba8, 5) == 0) goto L_800B4B9C;
    }
    if (GetLeadingZeroCount_800b317c_(obj + 0xbe8, 0) == 0) {
        if (GetLeadingZeroCount_800b317c_(obj + 0xbe8, 2) == 0) goto L_800B4B9C;
    }
    if (GetLeadingZeroCount_800b2f8c_(obj + 0xc40, 0) == 0) goto L_800B4B9C;
    if (getLeadingZerosCount(obj + 0xc88, 0) == 0) goto L_800B4B9C;
    if (GetLeadingZeroCount_800b2d40_(obj + 0xcc0, 0) == 0) goto L_800B4B9C;
    if (GetLeadingZeroCount_800b2d2c_(obj + 0x9438, 0) == 0) goto L_800B4B9C;
    {
        int result = fn_8006F3FC();
        ProcessDataWithInitialization(MainGame, result, (char*)0, -1, -1);
    }

L_800B4B9C:
    if (*(int*)(obj + 0x9e4) < 0) goto L_800B4E28;
    r25flag = 0;
    if (GetSignBitOfValue(MainGame) != 0) goto L_800B4CD0;
    {
        int mask1 = 0;
        int a = *(int*)(MainGame + 0x1b10) & mask1;
        int b = *(int*)(MainGame + 0x1b14) & 0x400;
        a ^= mask1; b ^= mask1;
        if ((b | a) != 0) goto L_800B4CD0;
    }
    if (getLeadingZeroCountDifference(obj + 0xa44, 0) == 0) {
        if (getLeadingZeroCountDifference(obj + 0xa44, 4) == 0) goto L_800B4CD0;
    }
    if (getBitShiftDifference(obj + 0xac0, 0) == 0) goto L_800B4CD0;
    if (GetLeadingZerosShiftCount(obj + 0xb10, 0) == 0) goto L_800B4CD0;
    if (GetLeadingZeroCount(obj + 0xb64, 0) == 0) goto L_800B4CD0;
    if (GetNumLeadingZerosInDifference(obj + 0xba8, 0) == 0) goto L_800B4CD0;
    if (GetLeadingZeroCount_800b317c_(obj + 0xbe8, 0) == 0) goto L_800B4CD0;
    if (GetLeadingZeroCount_800b2f8c_(obj + 0xc40, 0) == 0) goto L_800B4CD0;
    if (getLeadingZerosCount(obj + 0xc88, 0) == 0) goto L_800B4CD0;
    if (GetLeadingZeroCount_800b2d40_(obj + 0xcc0, 0) == 0) goto L_800B4CD0;
    if (GetLeadingZeroCount_800b2d2c_(obj + 0x9438, 0) != 0) goto L_800B4CD8;

L_800B4CD0:
    r25flag = 1;
    goto L_800B4D98;

L_800B4CD8:
    if (*(int*)(obj + 0x9cc) < 0) goto L_800B4D54;
    if (*(int*)(obj + 0x9cc) == *(int*)(obj + 0x9d4)) goto L_800B4D54;
    if (*(int*)(obj + 0x9e4) != *(int*)(obj + 0x9cc)) goto L_800B4D18;
    {
        char* elem = GetArrayElement(MainGame, *(int*)(obj + 0x9cc));
        if (*(int*)(obj + 0x9f8) == *(int*)(elem + 0x784)) goto L_800B4D20;
    }
L_800B4D18:
    r25flag = 1;
    goto L_800B4D98;

L_800B4D20:
    if (*(int*)(obj + 0x9e4) != *(int*)(obj + 0x9cc)) goto L_800B4D98;
    {
        char* elem = GetArrayElement(MainGame, *(int*)(obj + 0x9cc));
        if (*(int*)(obj + 0x9f8) != *(int*)(elem + 0x784)) goto L_800B4D98;
    }
    r25flag = 1;
    goto L_800B4D98;

L_800B4D54:
    if (*(int*)(obj + 0x9cc) < 0) goto L_800B4D98;
    if (*(int*)(obj + 0x9cc) != *(int*)(obj + 0x9d4)) goto L_800B4D98;
    if (*(int*)(obj + 0x9e4) != *(int*)(obj + 0x9cc)) goto L_800B4D98;
    {
        char* elem = GetArrayElement(MainGame, *(int*)(obj + 0x9cc));
        if (*(int*)(obj + 0x9f8) != *(int*)(elem + 0x784)) goto L_800B4D98;
    }
    r25flag = 1;

L_800B4D98:
    elemR26 = GetArrayElement(MainGame, *(int*)(obj + 0x9e4));
    if (IsFlagSetInDataStructure(elemR26) == 0) goto L_800B4E0C;
    {
        int mask1 = 0;
        int a = *(int*)(elemR26 + 0x228) & mask1;
        int b = *(int*)(elemR26 + 0x22c) & 0x10000;
        a ^= mask1; b ^= mask1;
        if ((b | a) == 0) goto L_800B4E0C;
    }
    {
        f32 tempVec[3];
        tempVec[0] = *(f32*)(elemR26 + 0xc8);
        tempVec[1] = *(f32*)(elemR26 + 0xcc);
        tempVec[2] = *(f32*)(elemR26 + 0xd0);
        if (!(u8)Vec3NotEqual((f32*)(obj + 0x9e8), tempVec)) goto L_800B4E10;
    }

L_800B4E0C:
    r25flag = 1;

L_800B4E10:
    if (r25flag == 0) goto L_800B4E28;
    *(int*)(obj + 0x9e4) = -1;
    *(f32*)(obj + 0xa0c) = lbl_8065D3D0;

L_800B4E28:
    fn_800D4368(obj + 0xa44, r29, &stackC);
    fn_800CE120(obj + 0xac0, r29, &stackC);
    fn_800CBDB4(obj + 0xb10, r29, &stackC);
    fn_800C9C70(obj + 0xb64, r29, &stackC);
    fn_800C7AC4(obj + 0xba8, r29, &stackC);
    fn_800C56D4(obj + 0xbe8, r29, &stackC);
    fn_800C4468(obj + 0xc40, r29, &stackC);
    fn_800C361C(obj + 0xc88, r29, &stackC);
    fn_800C1610(obj + 0xcc0, r29, &stackC);
    fn_800BFC04(obj + 0x9438, r29, &stackC);
    HandleModelLoadingAnimating(obj, &stackC);
    fn_80097B50(obj + 0x2E44, param2);
    fn_80096B90(obj + 0x3390, param2);
    if (stackC == lbl_8065D49C) stackC = lbl_8065D380;
    retVal = stackC;

End:
    return retVal;
}
