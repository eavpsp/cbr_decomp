#ifndef _TYPES_H
#define _TYPES_H

//PIKIMIN: CLONED FROM REPO

// r2 is  8051E360
// r13 is 8051C680
#ifndef UNK_PARAMS
#ifdef M2CTX
#define UNK_PARAMS
#else
#define UNK_PARAMS void
#endif
#endif

typedef int BOOL;
typedef unsigned int uint;

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;
typedef unsigned long size_t;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;
typedef long double f128;
typedef volatile f32 vf32;
typedef volatile f64 vf64;
typedef volatile f128 vf128;

//typedef u32 size_t;
typedef u32 unknown;

#ifndef __cplusplus
//typedef u16 wchar_t;
#endif

// Basic defines to allow newer-like C++ code to be written
#define TRUE  1
#define FALSE 0
#define NULL  ((void*)0)
#define nullptr 0

// Sets specific flag to 1
#define SET_FLAG(x, val) (x |= (val))

// Resets specific flag from (val) back to 0
#define RESET_FLAG(x, val) (x &= ~(val))

// Return 1 if flag is set, 0 if flag is not set
#define IS_FLAG(x, val) (x & val)

// Array size define
#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

// Align X to the previous N bytes (N must be power of two)
#define ALIGN_PREV(X, N) ((X) & ~((N)-1))

// Align X to the next N bytes (N must be power of two)
#define ALIGN_NEXT(X, N) ALIGN_PREV(((X) + (N)-1), N)

// True if X is aligned to N bytes, else false
#define IS_ALIGNED(X, N) ((X & ((N)-1)) == 0)

// True if X is not aligned to N bytes, else false
#define IS_NOT_ALIGNED(X, N) (((X) & ((N)-1)) != 0)

// Align object to num bytes (num should be power of two)
#define ATTRIBUTE_ALIGN(num) __attribute__((aligned(num)))

// Checks if a flag is set in a bitfield
#define IS_FLAG_SET(flags, bitsFromLSB) (((flags) >> (bitsFromLSB)&1))

// For functions that return 0 on a success and -1 on failure
#define EXIT_SUCCESS 0
#define EXIT_FAILURE -1

#define ASSERT_HANG(cond) \
	if (!(cond)) {        \
		while (true) { }  \
	}

// Get the maximum of two values
#define MAX(a, b) (((a) > (b)) ? (a) : (b))

// Get the minimum of two values
#define MIN(a, b) (((a) < (b)) ? (a) : (b))

// Rounds a float to a u8
#define ROUND_F32_TO_U8(a) a >= 0.0f ? a + 0.5f : a - 0.5f

// Number of bytes in a kilobyte
#define KILOBYTE_BYTECOUNT 1024

#ifdef __MWERKS__
#define WEAKFUNC        __declspec(weak)
#define DECL_SECT(name) __declspec(section name)
#define ASM             asm
#else
#define WEAKFUNC
#define DECL_SECT(name)
#define ASM
#endif

#endif // _TYPES_H
