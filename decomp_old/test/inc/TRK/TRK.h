
#ifndef TRK_H
#define TRK_H
#include <types.h>
#include <stddef.h>
void* TRK_memset(void* dst, uint val, uint n);
void __TRK_reset();
void* TRK_memcpy(void* dst, const void* src, size_t n);
#endif