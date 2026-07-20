#include <types.h>

typedef void (*VtableFnC)(void*, void*);

//800BBD7C
extern "C" void fn_800BBD7C(char* obj, void* param2)
{
    *(void**)obj = param2;
    VtableFnC fn = *(VtableFnC*)(*(char**)(obj + 8) + 0xc);
    fn(obj, param2);
}
