#include <types.h>

extern "C" void HSD_JObjSetFlags(void* obj, u32 flags);
extern "C" void* getValueIfBitSetInMask(void* obj);
extern "C" void setFlagOnObject(void* obj, u32 mask);
extern "C" void processDataForQueue(void* obj);
extern "C" void* RingGetStart(void* obj);
extern "C" void* RingGetNext(void* node);
extern "C" f64 lbl_8065D180;

static inline u8 ConvertByteScaled(u8 byteVal, f32 scale)
{
    union
    {
        struct
        {
            u32 hi;
            u32 lo;
        } i;
        f64 d;
    } u;
    u.i.hi = 0x43300000;
    u.i.lo = byteVal;
    f64 val = (u.d - lbl_8065D180) * scale;
    return (u8)(s32)val;
}

//80091540
extern "C" void processObjectsInTree(void* obj, void** param2)
{
    f32 scale = *(f32*)param2[1];

    HSD_JObjSetFlags(obj, 0x80);

    void* node = getValueIfBitSetInMask(obj);
    while (node != 0) {
        void* sub = (node != 0) ? *(void**)((char*)node + 8) : 0;
        if (sub != 0) {
            setFlagOnObject(sub, 4);

            if (*(int*)((char*)sub + 0xc) != 0) {
                u32 bits = *(u32*)&scale;
                u32 expField = bits & 0x7F800000;
                int cls;
                if (expField == 0x7F800000) {
                    if ((bits & 0x7FFFFF) == 0) {
                        cls = 2;
                    } else {
                        cls = 1;
                    }
                } else if (expField >= 0x7F800000) {
                    cls = 4;
                } else if (expField == 0) {
                    if ((bits & 0x7FFFFF) == 0) {
                        cls = 3;
                    } else {
                        cls = 5;
                    }
                } else {
                    cls = 4;
                }

                if (cls != 1) {
                    u8* t;
                    t = *(u8**)((char*)sub + 0xc);
                    t[4] = ConvertByteScaled(t[4], scale);
                    t = *(u8**)((char*)sub + 0xc);
                    t[5] = ConvertByteScaled(t[5], scale);
                    t = *(u8**)((char*)sub + 0xc);
                    t[6] = ConvertByteScaled(t[6], scale);
                }
            }

            void* camNode = RingGetStart(sub);
            while (camNode != 0) {
                u32 flags = *(u32*)((char*)camNode + 0x4c);
                flags = (flags & ~0x1F0) | 0x50;
                *(u32*)((char*)camNode + 0x4c) = flags;
                flags = *(u32*)((char*)camNode + 0x4c);
                flags = (flags & ~0xF0000) | 0x70000;
                *(u32*)((char*)camNode + 0x4c) = flags;
                camNode = RingGetNext(camNode);
            }

            processDataForQueue(sub);
        }

        node = (node != 0) ? *(void**)((char*)node + 4) : 0;
    }
}
