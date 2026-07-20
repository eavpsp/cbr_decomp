#include <types.h>

//8007BE0C
extern "C" int updateBasePtrObj_Neg1(char* obj)
{
    int idx = *(int*)(obj + 0x38);
    int* arr = *(int**)(obj + 0x34);
    idx -= 1;
    *(int*)(obj + 0x38) = idx;
    *(int*)(obj + 0x48) = arr[idx];
    return 0;
}

//8007BE30
extern "C" int UpdateBaseObj_Pos1(char* obj)
{
    int idx = *(int*)(obj + 0x38);
    int val = *(int*)(obj + 0x48);
    int* arr = *(int**)(obj + 0x34);
    *(int*)(obj + 0x38) = idx + 1;
    arr[idx] = val;
    return 0;
}
