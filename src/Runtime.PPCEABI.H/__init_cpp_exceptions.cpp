#include <ppc_eabi.h>
extern void __init_cpp_exceptions(void);
extern void __fini_cpp_exceptions(void);
extern void suspend(void);
static int fragmentID = -2;		
extern void __exception_info_constants(void **info, char **R2)
{
	register char *temp;				/* r2 register contents								*/

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
	/* use suspend with some OSes */
#ifdef TERMINATE_WITH_SUSPEND
		set_terminate(suspend);
#endif

		/* the variable _eti_init_info is a table with a row for each code segment
		 * that contains functions that have exception info.  _eti_init_info holds
		 * exception info for only one process.  register r2 and the (possible
		 * runtime/linktime delta are constant for each process.
		 */
		__exception_info_constants(&info, &R2);

		/*
		 *	initialize exception tables
		 */
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
