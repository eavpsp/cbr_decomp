#include <types.h>
#include <stddef.h>
void* TRK_memcpy(void* dst, const void* src, size_t n)
{
	const u8* s = (const u8*)src - 1;
	u8* d = (u8*)dst - 1;
	n++;
	while (--n > 0)
		*++d = *++s;
	return dst;
}
extern void TRK_fill_mem(void* dst, int c, size_t n);



void* TRK_memset(void* dst, uint val, uint n)
{
	TRK_fill_mem(dst, val, n);
	return dst;
}