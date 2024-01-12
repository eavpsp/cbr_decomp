#include <ppc_eabi.h>
extern void __init_cpp_exceptions(void);
extern void __fini_cpp_exceptions(void);
extern void suspend(void);
static int fragmentID = -2;		
extern void __exception_info_constants(void **info, char **R2)
{
	register char *temp;

	asm {
		mr      temp,r2
	}
	*R2 = temp;
	
	*info = _eti_init_info;
}

extern int __find_exception_addresses(void *info, char *returnaddr, void **ex_start, void **ex_end)
{
	__eti_init_info *eti_info = (__eti_init_info*)info;
	
	while (1) {
		if (eti_info->code_size == 0) break;
		if(returnaddr>=eti_info->code_start && 
					returnaddr<(char*)eti_info->code_start+eti_info->code_size) {
			*ex_start = eti_info->eti_start;
			*ex_end = eti_info->eti_end;
			return(1);
		}
 		eti_info++;
	}
	
	return(0);
}

extern void __init_cpp_exceptions(void)
{
	char *R2;
	void *info;
	 
	if (fragmentID == -2) {
	
#ifdef TERMINATE_WITH_SUSPEND
		set_terminate(suspend);
#endif

		__exception_info_constants(&info, &R2);
		fragmentID = __register_fragment((struct __eti_init_info *)info, R2);
	}
}
extern void __fini_cpp_exceptions(void)
{
	if (fragmentID != -2) {
		__unregister_fragment(fragmentID);
		fragmentID = -2;
	}
}
