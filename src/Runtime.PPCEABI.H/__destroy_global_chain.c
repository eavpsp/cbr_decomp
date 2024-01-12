#include <ppc_eabi.h>
#define DTORARG_TYPE int
#define DTORCALL_COMPLETE(dtor, objptr) (((void (*)(void*, DTORARG_TYPE))dtor)(objptr, -1))

void __destroy_global_chain(void) {
  DestructorChain* iter;

  while ((iter=__global_destructor_chain) !=  0) {
    __global_destructor_chain = iter->next;
    DTORCALL_COMPLETE(iter->destructor, iter->object);
  } 
}