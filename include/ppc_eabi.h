typedef short	vbase_ctor_arg_type;
typedef char	local_cond_type;

typedef struct CatchInfo {
	void			*location;				
	void			*typeinfo;				
	void			*dtor;					
	void			*sublocation;			
	long			pointercopy;			
	void			*stacktop;				
}	CatchInfo;
typedef struct DestructorChain {			
	struct DestructorChain	*next;			
	void					*destructor;	
	void					*object;
}	DestructorChain;

#if __CFM68K__
#pragma import on
#endif

 extern DestructorChain	*__global_destructor_chain;
 extern void			*__register_global_object(void *object,void *destructor,void *regmem);
 extern void			__destroy_global_chain(void);
 extern void									__init__catch(CatchInfo* catchinfo);
 extern void			__end__catch(CatchInfo* catchinfo);
 extern void			__throw(char *throwtype,void *location,void *dtor);
 extern void			__rethrow(void);
 extern char			__throw_catch_compare(const char *throwtype,const char *catchtype,long *offset_result);
 extern void			__unexpected(CatchInfo* catchinfo);
void __call_static_initializers(void);
#if defined(__PPC_EABI__)
 extern int				__register_fragment(struct __eti_init_info *info, char *TOC);
 extern void			__unregister_fragment(int fragmentID);
#elif defined(__POWERPC__)
 extern int				__register_fragment(char *code_start,char *code_end,char *data_start,char *data_end,
												char *exception_start,char *exception_end,char *TOC);
 extern void			__unregister_fragment(int fragmentID);
#endif
#pragma once
__declspec(section ".init") extern void __init_hardware(void);
extern void __init_user(void);
extern void _ExitProcess(void);													
__declspec(section ".init") extern void __flush_cache(void *address, unsigned int size);
__declspec(section ".init") extern void ADSInit();
#pragma once
__declspec(section ".init") extern char		 	_stack_addr[];	
__declspec(section ".init") extern char 		_stack_end[];	
__declspec(section ".init") extern char		 	_heap_addr[];	
__declspec(section ".init") extern char 		_heap_end[];	
__declspec(section ".init") extern const char 	_fextabindex_rom[];	
__declspec(section ".init") extern char 		_fextabindex[];		
__declspec(section ".init") extern char 		_eextabindex[];		
__declspec(section ".init") extern char			_SDA_BASE_[];														
__declspec(section ".init") extern char			_SDA2_BASE_[];	
typedef struct __rom_copy_info {
	char * 			rom;		
	char * 			addr;	
	unsigned int	size;	
} __rom_copy_info;
__declspec(section ".init") extern __rom_copy_info 	_rom_copy_info[];
typedef struct __bss_init_info {
	char * 			addr;
	unsigned int	size;
} __bss_init_info;
__declspec(section ".init") extern __bss_init_info 	_bss_init_info[];
typedef struct __eti_init_info {
	void * 			eti_start;	
	void *			eti_end;	
	void * 			code_start;	
	unsigned long	code_size;	
} __eti_init_info;
__declspec(section ".init") extern __eti_init_info 	_eti_init_info[];	
__declspec(section ".init") extern const char 	_f_init_rom[];		
__declspec(section ".init") extern char 		_f_init[];			
__declspec(section ".init") extern char 		_e_init[];			
__declspec(section ".init") extern const char 	_f_text_rom[];		
__declspec(section ".init") extern char 		_f_text[];			
__declspec(section ".init") extern char 		_e_text[];			
__declspec(section ".init") extern const char 	_f_rodata_rom[];	
__declspec(section ".init") extern char 		_f_rodata[];		
__declspec(section ".init") extern char 		_e_rodata[];		
__declspec(section ".init") extern const char 	_fextab_rom[];		
__declspec(section ".init") extern char 		_fextab[];			
__declspec(section ".init") extern char 		_eextab[];			
__declspec(section ".init") extern const char 	_f_data_rom[];		
__declspec(section ".init") extern char 		_f_data[];			
__declspec(section ".init") extern char 		_e_data[];			
__declspec(section ".init") extern char 		_f_bss[];			
__declspec(section ".init") extern char 		_e_bss[];			
__declspec(section ".init") extern const char 	_f_sdata_rom[];		
__declspec(section ".init") extern char 		_f_sdata[];			
__declspec(section ".init") extern char 		_e_sdata[];			
__declspec(section ".init") extern char 		_f_sbss[];			
__declspec(section ".init") extern char 		_e_sbss[];			
__declspec(section ".init") extern const char 	_f_sdata2_rom[];	
__declspec(section ".init") extern char 		_f_sdata2[];		
__declspec(section ".init") extern char 		_e_sdata2[];		
__declspec(section ".init") extern char 		_f_sbss2[];			
__declspec(section ".init") extern char 		_e_sbss2[];			
__declspec(section ".init") extern const char 	_f_PPC_EMB_sdata0_rom[];	
__declspec(section ".init") extern char 		_f_PPC_EMB_sdata0[];		
__declspec(section ".init") extern char 		_e_PPC_EMB_sdata0[];	
__declspec(section ".init") extern char 		_f_PPC_EMB_sbss0[];
__declspec(section ".init") extern char 		_e_PPC_EMB_sbss0[];
