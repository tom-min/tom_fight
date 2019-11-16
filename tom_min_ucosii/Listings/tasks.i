#line 1 "FreeRTOS\\tasks.c"

























 

 
#line 1 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 30 "FreeRTOS\\tasks.c"
#line 1 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 31 "FreeRTOS\\tasks.c"



 


 
#line 1 ".\\FreeRTOS\\include\\FreeRTOS.h"

























 






 
#line 1 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 35 ".\\FreeRTOS\\include\\FreeRTOS.h"













 
#line 1 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "D:\\program files (x86)\\keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 50 ".\\FreeRTOS\\include\\FreeRTOS.h"





 
#line 1 ".\\FreeRTOS\\include\\FreeRTOSConfig.h"

























 














 

#line 55 ".\\FreeRTOS\\include\\FreeRTOSConfig.h"

 




 

#line 70 ".\\FreeRTOS\\include\\FreeRTOSConfig.h"


 


 






 






 






 

 










#line 57 ".\\FreeRTOS\\include\\FreeRTOS.h"

 
#line 1 ".\\FreeRTOS\\include\\projdefs.h"

























 







 
typedef void (*TaskFunction_t)( void * );



 












 




 











 
#line 110 ".\\FreeRTOS\\include\\projdefs.h"


 



 








#line 60 ".\\FreeRTOS\\include\\FreeRTOS.h"

 
#line 1 ".\\FreeRTOS\\include\\portable.h"

























 



 













 
#line 1 ".\\FreeRTOS\\include\\deprecated_definitions.h"

























 












 











































































































































































#line 218 ".\\FreeRTOS\\include\\deprecated_definitions.h"

#line 226 ".\\FreeRTOS\\include\\deprecated_definitions.h"







#line 240 ".\\FreeRTOS\\include\\deprecated_definitions.h"








































#line 46 ".\\FreeRTOS\\include\\portable.h"




 
#line 1 ".\\FreeRTOS\\portable\\RVDS\\ARM_CM3\\portmacro.h"

























 

















 

 
#line 54 ".\\FreeRTOS\\portable\\RVDS\\ARM_CM3\\portmacro.h"

typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





	typedef uint32_t TickType_t;


	
 


 

 




 


 

 
#line 93 ".\\FreeRTOS\\portable\\RVDS\\ARM_CM3\\portmacro.h"
 





 

 
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );

#line 111 ".\\FreeRTOS\\portable\\RVDS\\ARM_CM3\\portmacro.h"

 

 

	extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );


 

 






	 




	 



	 




 



 


 






 








 

static __forceinline void vPortSetBASEPRI( uint32_t ulBASEPRI )
{
	__asm
	{
		
 
		msr basepri, ulBASEPRI
	}
}
 

static __forceinline void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI = 191;

	__asm
	{
		
 
		msr basepri, ulNewBASEPRI
		dsb
		isb
	}
}
 

static __forceinline void vPortClearBASEPRIFromISR( void )
{
	__asm
	{
		

 
		msr basepri, #0
	}
}
 

static __forceinline uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulReturn, ulNewBASEPRI = 191;

	__asm
	{
		
 
		mrs ulReturn, basepri
		msr basepri, ulNewBASEPRI
		dsb
		isb
	}

	return ulReturn;
}
 

static __forceinline BaseType_t xPortIsInsideInterrupt( void )
{
uint32_t ulCurrentInterrupt;
BaseType_t xReturn;

	 
	__asm
	{
		mrs ulCurrentInterrupt, ipsr
	}

	if( ulCurrentInterrupt == 0 )
	{
		xReturn = ( ( BaseType_t ) 0 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 1 );
	}

	return xReturn;
}








#line 53 ".\\FreeRTOS\\include\\portable.h"






































#line 1 ".\\FreeRTOS\\include\\mpu_wrappers.h"

























 





 
#line 176 ".\\FreeRTOS\\include\\mpu_wrappers.h"











#line 92 ".\\FreeRTOS\\include\\portable.h"






 
#line 109 ".\\FreeRTOS\\include\\portable.h"
		StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;



 
typedef struct HeapRegion
{
	uint8_t *pucStartAddress;
	size_t xSizeInBytes;
} HeapRegion_t;











 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;




 
void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;




 
BaseType_t xPortStartScheduler( void ) ;





 
void vPortEndScheduler( void ) ;







 











#line 63 ".\\FreeRTOS\\include\\FreeRTOS.h"

 




 







 































































































































































#line 243 ".\\FreeRTOS\\include\\FreeRTOS.h"

 


















































 

	
 




	
 




	
 




	
 




	 




	 




	
 




	



 




	


 




	


 




	


 




	


 















 





















































































































































































































































































































#line 712 ".\\FreeRTOS\\include\\FreeRTOS.h"


















































































































	 




	 




	
 




	

 



 


















#line 876 ".\\FreeRTOS\\include\\FreeRTOS.h"
	
 







 





	








 




	
 




	
 



#line 936 ".\\FreeRTOS\\include\\FreeRTOS.h"

	
 





	
 










 





 





 





 





 













































 












 
struct xSTATIC_LIST_ITEM
{



	TickType_t xDummy2;
	void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;

 
struct xSTATIC_MINI_LIST_ITEM
{



	TickType_t xDummy2;
	void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;

 
typedef struct xSTATIC_LIST
{



	UBaseType_t uxDummy2;
	void *pvDummy3;
	StaticMiniListItem_t xDummy4;



} StaticList_t;













 
typedef struct xSTATIC_TCB
{
	void				*pxDummy1;



	StaticListItem_t	xDummy3[ 2 ];
	UBaseType_t			uxDummy5;
	void				*pxDummy6;
	uint8_t				ucDummy7[ ( 16 ) ];
#line 1126 ".\\FreeRTOS\\include\\FreeRTOS.h"
		uint32_t 		ulDummy18;
		uint8_t 		ucDummy19;





#line 1139 ".\\FreeRTOS\\include\\FreeRTOS.h"
} StaticTask_t;














 
typedef struct xSTATIC_QUEUE
{
	void *pvDummy1[ 3 ];

	union
	{
		void *pvDummy2;
		UBaseType_t uxDummy2;
	} u;

	StaticList_t xDummy3[ 2 ];
	UBaseType_t uxDummy4[ 3 ];
	uint8_t ucDummy5[ 2 ];














} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;














 
typedef struct xSTATIC_EVENT_GROUP
{
	TickType_t xDummy1;
	StaticList_t xDummy2;









} StaticEventGroup_t;














 
typedef struct xSTATIC_TIMER
{
	void				*pvDummy1;
	StaticListItem_t	xDummy2;
	TickType_t			xDummy3;
	void 				*pvDummy5;
	TaskFunction_t		pvDummy6;



	uint8_t 			ucDummy8;

} StaticTimer_t;














 
typedef struct xSTATIC_STREAM_BUFFER
{
	size_t uxDummy1[ 4 ];
	void * pvDummy2[ 3 ];
	uint8_t ucDummy3;



} StaticStreamBuffer_t;

 
typedef StaticStreamBuffer_t StaticMessageBuffer_t;







#line 39 "FreeRTOS\\tasks.c"
#line 1 ".\\FreeRTOS\\include\\task.h"

























 









#line 1 ".\\FreeRTOS\\include\\list.h"

























 



























 



































 












 

	 
#line 134 ".\\FreeRTOS\\include\\list.h"




 
struct xLIST;
struct xLIST_ITEM
{
				 
	 TickType_t xItemValue;			 
	struct xLIST_ITEM *  pxNext;		 
	struct xLIST_ITEM *  pxPrevious;	 
	void * pvOwner;										 
	struct xLIST *  pvContainer;		 
				 
};
typedef struct xLIST_ITEM ListItem_t;					 

struct xMINI_LIST_ITEM
{
				 
	 TickType_t xItemValue;
	struct xLIST_ITEM *  pxNext;
	struct xLIST_ITEM *  pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;



 
typedef struct xLIST
{
					 
	volatile UBaseType_t uxNumberOfItems;
	ListItem_t *  pxIndex;			 
	MiniListItem_t xListEnd;							 
					 
} List_t;







 








 








 









 








 







 







 







 








 




 





















 
#line 289 ".\\FreeRTOS\\include\\list.h"

















 










 







 






 











 
void vListInitialise( List_t * const pxList ) ;









 
void vListInitialiseItem( ListItem_t * const pxItem ) ;











 
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;



















 
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;













 
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;







#line 37 ".\\FreeRTOS\\include\\task.h"







 







 















 
struct tskTaskControlBlock;  
typedef struct tskTaskControlBlock* TaskHandle_t;




 
typedef BaseType_t (*TaskHookFunction_t)( void * );

 
typedef enum
{
	eRunning = 0,	 
	eReady,			 
	eBlocked,		 
	eSuspended,		 
	eDeleted,		 
	eInvalid		 
} eTaskState;

 
typedef enum
{
	eNoAction = 0,				 
	eSetBits,					 
	eIncrement,					 
	eSetValueWithOverwrite,		 
	eSetValueWithoutOverwrite	 
} eNotifyAction;



 
typedef struct xTIME_OUT
{
	BaseType_t xOverflowCount;
	TickType_t xTimeOnEntering;
} TimeOut_t;



 
typedef struct xMEMORY_REGION
{
	void *pvBaseAddress;
	uint32_t ulLengthInBytes;
	uint32_t ulParameters;
} MemoryRegion_t;



 
typedef struct xTASK_PARAMETERS
{
	TaskFunction_t pvTaskCode;
	const char * const pcName;	 
	uint16_t usStackDepth;
	void *pvParameters;
	UBaseType_t uxPriority;
	StackType_t *puxStackBuffer;
	MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;


 
typedef struct xTASK_STATUS
{
	TaskHandle_t xHandle;			 
	const char *pcTaskName;			   
	UBaseType_t xTaskNumber;		 
	eTaskState eCurrentState;		 
	UBaseType_t uxCurrentPriority;	 
	UBaseType_t uxBasePriority;		 
	uint32_t ulRunTimeCounter;		 
	StackType_t *pxStackBase;		 
	uint16_t usStackHighWaterMark;	 
} TaskStatus_t;

 
typedef enum
{
	eAbortSleep = 0,		 
	eStandardSleep,			 
	eNoTasksWaitingTimeout	 
} eSleepModeStatus;





 









 













 














 









 









 




 







 





























































































 

	BaseType_t xTaskCreate(	TaskFunction_t pxTaskCode,
							const char * const pcName,	 
							const uint16_t usStackDepth,
							void * const pvParameters,
							UBaseType_t uxPriority,
							TaskHandle_t * const pxCreatedTask ) ;












































































































 
#line 454 ".\\FreeRTOS\\include\\task.h"








































































 























































































 

















































 
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;







































 
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;



 














































 
void vTaskDelay( const TickType_t xTicksToDelay ) ;

























































 
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;























 
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;













































 
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;






 
UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
















 
eTaskState eTaskGetState( TaskHandle_t xTask ) ;






















































 
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;








































 
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;

















































 
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;















































 
void vTaskResume( TaskHandle_t xTaskToResume ) ;



























 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;



 



























 
void vTaskStartScheduler( void ) ;






















































 
void vTaskEndScheduler( void ) ;

















































 
void vTaskSuspendAll( void ) ;




















































 
BaseType_t xTaskResumeAll( void ) ;



 









 
TickType_t xTaskGetTickCount( void ) ;














 
TickType_t xTaskGetTickCountFromISR( void ) ;












 
UBaseType_t uxTaskGetNumberOfTasks( void ) ;











 
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;  














 
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;  

























 
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;

























 
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;






 
#line 1504 ".\\FreeRTOS\\include\\task.h"

#line 1516 ".\\FreeRTOS\\include\\task.h"











 
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;







 
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;

































































































 
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;













































 
void vTaskList( char * pcWriteBuffer ) ;  




















































 
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;  




























 
TickType_t xTaskGetIdleRunTimeCounter( void ) ;















































































 
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;

























































































 
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;











































































 
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;












































 






















































 
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;



































































 
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;














 
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );



 















 
BaseType_t xTaskIncrementTick( void ) ;































 
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;











 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
























 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;








 
void vTaskSwitchContext( void ) ;




 
TickType_t uxTaskResetEventItemValue( void ) ;



 
TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;



 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;




 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;




 
void vTaskMissedYield( void ) ;




 
BaseType_t xTaskGetSchedulerState( void ) ;




 
BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;




 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;








 
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;



 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;




 
void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;








 
void vTaskStepTick( const TickType_t xTicksToJump ) ;














 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;




 
TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;




 
void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;









#line 40 "FreeRTOS\\tasks.c"
#line 1 ".\\FreeRTOS\\include\\timers.h"

























 










 
#line 39 ".\\FreeRTOS\\include\\timers.h"
 







 





 
#line 62 ".\\FreeRTOS\\include\\timers.h"













 
struct tmrTimerControl;  
typedef struct tmrTimerControl * TimerHandle_t;



 
typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );




 
typedef void (*PendedFunction_t)( void *, uint32_t );









































































































































 

	TimerHandle_t xTimerCreate(	const char * const pcTimerName,			 
								const TickType_t xTimerPeriodInTicks,
								const UBaseType_t uxAutoReload,
								void * const pvTimerID,
								TimerCallbackFunction_t pxCallbackFunction ) ;



























































































































 
#line 365 ".\\FreeRTOS\\include\\timers.h"




















 
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;



















 
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;



































 
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;






 
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;


















































 









































 















































































 





































 



























































































































 





















































































 






























































 








































































 





















































































 


























































































 
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;

 






























 
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;









 
const char * pcTimerGetName( TimerHandle_t xTimer ) ;  















 
void vTimerSetReloadMode( TimerHandle_t xTimer, const UBaseType_t uxAutoReload ) ;









 
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;













 
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;




 
BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;













#line 41 "FreeRTOS\\tasks.c"
#line 1 ".\\FreeRTOS\\include\\stack_macros.h"

























 
















 

 

#line 60 ".\\FreeRTOS\\include\\stack_macros.h"
 

#line 76 ".\\FreeRTOS\\include\\stack_macros.h"
 

#line 95 ".\\FreeRTOS\\include\\stack_macros.h"
 

#line 119 ".\\FreeRTOS\\include\\stack_macros.h"
 

 








#line 42 "FreeRTOS\\tasks.c"




 



 
#line 58 "FreeRTOS\\tasks.c"

#line 66 "FreeRTOS\\tasks.c"

 







 


 






 








 









 





 




#line 159 "FreeRTOS\\tasks.c"

	

 

	 


	 

#line 178 "FreeRTOS\\tasks.c"

	 

	

 
#line 191 "FreeRTOS\\tasks.c"



 


 
#line 211 "FreeRTOS\\tasks.c"

 




 





 






 









 










 
typedef struct tskTaskControlBlock 			 
{
	volatile StackType_t	*pxTopOfStack;	 





	ListItem_t			xStateListItem;	 
	ListItem_t			xEventListItem;		 
	UBaseType_t			uxPriority;			 
	StackType_t			*pxStack;			 
	char				pcTaskName[ ( 16 ) ];   































#line 306 "FreeRTOS\\tasks.c"


		volatile uint32_t ulNotifiedValue;
		volatile uint8_t ucNotifyState;


	
 












} tskTCB;


 
typedef tskTCB TCB_t;


 
 TCB_t * volatile pxCurrentTCB = 0;




 
 static List_t pxReadyTasksLists[ ( 5 ) ]; 
 static List_t xDelayedTaskList1;						 
 static List_t xDelayedTaskList2;						 
 static List_t * volatile pxDelayedTaskList;				 
 static List_t * volatile pxOverflowDelayedTaskList;		 
 static List_t xPendingReadyList;						 



	 static List_t xTasksWaitingTermination;				 
	 static volatile UBaseType_t uxDeletedTasksWaitingCleanUp = ( UBaseType_t ) 0U;





	 static List_t xSuspendedTaskList;					 




 




 
 static volatile UBaseType_t uxCurrentNumberOfTasks 	= ( UBaseType_t ) 0U;
 static volatile TickType_t xTickCount 				= ( TickType_t ) 0;
 static volatile UBaseType_t uxTopReadyPriority 		= ( ( UBaseType_t ) 0U );
 static volatile BaseType_t xSchedulerRunning 		= ( ( BaseType_t ) 0 );
 static volatile UBaseType_t uxPendedTicks 			= ( UBaseType_t ) 0U;
 static volatile BaseType_t xYieldPending 			= ( ( BaseType_t ) 0 );
 static volatile BaseType_t xNumOfOverflows 			= ( BaseType_t ) 0;
 static UBaseType_t uxTaskNumber 					= ( UBaseType_t ) 0U;
 static volatile TickType_t xNextTaskUnblockTime		= ( TickType_t ) 0U;  
 static TaskHandle_t xIdleTaskHandle					= 0;			 








 
 static volatile UBaseType_t uxSchedulerSuspended	= ( UBaseType_t ) ( ( BaseType_t ) 0 );

#line 396 "FreeRTOS\\tasks.c"

 

 

 


















 





 


	static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask ) ;






 
static void prvInitialiseTaskLists( void ) ;











 
static void prvIdleTask( void *pvParameters );







 


	static void prvDeleteTCB( TCB_t *pxTCB ) ;







 
static void prvCheckTasksWaitingTermination( void ) ;




 
static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely ) ;








 









 










 


	static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte ) ;











 









 
static void prvResetNextTaskUnblockTime( void );

#line 543 "FreeRTOS\\tasks.c"




 
static void prvInitialiseNewTask( 	TaskFunction_t pxTaskCode,
									const char * const pcName, 		 
									const uint32_t ulStackDepth,
									void * const pvParameters,
									UBaseType_t uxPriority,
									TaskHandle_t * const pxCreatedTask,
									TCB_t *pxNewTCB,
									const MemoryRegion_t * const xRegions ) ;




 
static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB ) ;





 






 

#line 631 "FreeRTOS\\tasks.c"
 

#line 677 "FreeRTOS\\tasks.c"
 

#line 726 "FreeRTOS\\tasks.c"
 



	BaseType_t xTaskCreate(	TaskFunction_t pxTaskCode,
							const char * const pcName,		 
							const uint16_t usStackDepth,
							void * const pvParameters,
							UBaseType_t uxPriority,
							TaskHandle_t * const pxCreatedTask )
	{
	TCB_t *pxNewTCB;
	BaseType_t xReturn;

		

 
#line 766 "FreeRTOS\\tasks.c"
		{
		StackType_t *pxStack;

			 
			pxStack = pvPortMalloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) );  

			if( pxStack != 0 )
			{
				 
				pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );  

				if( pxNewTCB != 0 )
				{
					 
					pxNewTCB->pxStack = pxStack;
				}
				else
				{
					
 
					vPortFree( pxStack );
				}
			}
			else
			{
				pxNewTCB = 0;
			}
		}


		if( pxNewTCB != 0 )
		{
#line 805 "FreeRTOS\\tasks.c"

			prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, 0 );
			prvAddNewTaskToReadyList( pxNewTCB );
			xReturn = ( ( ( BaseType_t ) 1 ) );
		}
		else
		{
			xReturn = ( -1 );
		}

		return xReturn;
	}


 

static void prvInitialiseNewTask( 	TaskFunction_t pxTaskCode,
									const char * const pcName,		 
									const uint32_t ulStackDepth,
									void * const pvParameters,
									UBaseType_t uxPriority,
									TaskHandle_t * const pxCreatedTask,
									TCB_t *pxNewTCB,
									const MemoryRegion_t * const xRegions )
{
StackType_t *pxTopOfStack;
UBaseType_t x;

#line 846 "FreeRTOS\\tasks.c"

	 

	{
		 
		( void ) memset( pxNewTCB->pxStack, ( int ) ( 0xa5U ), ( size_t ) ulStackDepth * sizeof( StackType_t ) );
	}


	


 

	{
		pxTopOfStack = &( pxNewTCB->pxStack[ ulStackDepth - ( uint32_t ) 1 ] );
		pxTopOfStack = ( StackType_t * ) ( ( ( uint32_t ) pxTopOfStack ) & ( ~( ( uint32_t ) ( 0x0007 ) ) ) );  

		 
		;

#line 874 "FreeRTOS\\tasks.c"
	}
#line 887 "FreeRTOS\\tasks.c"

	 
	if( pcName != 0 )
	{
		for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) ( 16 ); x++ )
		{
			pxNewTCB->pcTaskName[ x ] = pcName[ x ];

			

 
			if( pcName[ x ] == ( char ) 0x00 )
			{
				break;
			}
			else
			{
				;
			}
		}

		
 
		pxNewTCB->pcTaskName[ ( 16 ) - 1 ] = '\0';
	}
	else
	{
		
 
		pxNewTCB->pcTaskName[ 0 ] = 0x00;
	}

	
 
	if( uxPriority >= ( UBaseType_t ) ( 5 ) )
	{
		uxPriority = ( UBaseType_t ) ( 5 ) - ( UBaseType_t ) 1U;
	}
	else
	{
		;
	}

	pxNewTCB->uxPriority = uxPriority;
#line 937 "FreeRTOS\\tasks.c"

	vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
	vListInitialiseItem( &( pxNewTCB->xEventListItem ) );

	
 
	( ( &( pxNewTCB->xStateListItem ) )->pvOwner = ( void * ) ( pxNewTCB ) );

	 
	( ( &( pxNewTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 5 ) - ( TickType_t ) uxPriority ) );  
	( ( &( pxNewTCB->xEventListItem ) )->pvOwner = ( void * ) ( pxNewTCB ) );
























	{
		 
		( void ) xRegions;
	}


#line 986 "FreeRTOS\\tasks.c"


	{
		pxNewTCB->ulNotifiedValue = 0;
		pxNewTCB->ucNotifyState = ( ( uint8_t ) 0 );
	}


#line 1000 "FreeRTOS\\tasks.c"







	


 
#line 1035 "FreeRTOS\\tasks.c"
	{
		

 
#line 1052 "FreeRTOS\\tasks.c"
		{
			pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
		}

	}


	if( pxCreatedTask != 0 )
	{
		
 
		*pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
	}
	else
	{
		;
	}
}
 

static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB )
{
	
 
	vPortEnterCritical();
	{
		uxCurrentNumberOfTasks++;
		if( pxCurrentTCB == 0 )
		{
			
 
			pxCurrentTCB = pxNewTCB;

			if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
			{
				

 
				prvInitialiseTaskLists();
			}
			else
			{
				;
			}
		}
		else
		{
			

 
			if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
			{
				if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
				{
					pxCurrentTCB = pxNewTCB;
				}
				else
				{
					;
				}
			}
			else
			{
				;
			}
		}

		uxTaskNumber++;

#line 1127 "FreeRTOS\\tasks.c"
		;

		; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxNewTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxNewTCB )->uxPriority ] ), &( ( pxNewTCB )->xStateListItem ) ); ;

		( void ) pxNewTCB;
	}
	vPortExitCritical();

	if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
	{
		
 
		if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
		{
			{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
		}
		else
		{
			;
		}
	}
	else
	{
		;
	}
}
 



	void vTaskDelete( TaskHandle_t xTaskToDelete )
	{
	TCB_t *pxTCB;

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTaskToDelete ) == 0 ) ? pxCurrentTCB : ( xTaskToDelete ) );

			 
			if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
			{
				{ if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
			}
			else
			{
				;
			}

			 
			if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 0 )
			{
				( void ) uxListRemove( &( pxTCB->xEventListItem ) );
			}
			else
			{
				;
			}

			


 
			uxTaskNumber++;

			if( pxTCB == pxCurrentTCB )
			{
				



 
				vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xStateListItem ) );

				

 
				++uxDeletedTasksWaitingCleanUp;

				



 
				;
			}
			else
			{
				--uxCurrentNumberOfTasks;
				prvDeleteTCB( pxTCB );

				
 
				prvResetNextTaskUnblockTime();
			}

			;
		}
		vPortExitCritical();

		
 
		if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
		{
			if( pxTCB == pxCurrentTCB )
			{
				;
				{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
			}
			else
			{
				;
			}
		}
	}


 



	void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
	{
	TickType_t xTimeToWake;
	BaseType_t xAlreadyYielded, xShouldDelay = ( ( BaseType_t ) 0 );

		;
		;
		;

		vTaskSuspendAll();
		{
			
 
			const TickType_t xConstTickCount = xTickCount;

			 
			xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;

			if( xConstTickCount < *pxPreviousWakeTime )
			{
				



 
				if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
				{
					xShouldDelay = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}
			else
			{
				

 
				if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
				{
					xShouldDelay = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}

			 
			*pxPreviousWakeTime = xTimeToWake;

			if( xShouldDelay != ( ( BaseType_t ) 0 ) )
			{
				;

				
 
				prvAddCurrentTaskToDelayedList( xTimeToWake - xConstTickCount, ( ( BaseType_t ) 0 ) );
			}
			else
			{
				;
			}
		}
		xAlreadyYielded = xTaskResumeAll();

		
 
		if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
		{
			{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
		}
		else
		{
			;
		}
	}


 



	void vTaskDelay( const TickType_t xTicksToDelay )
	{
	BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );

		 
		if( xTicksToDelay > ( TickType_t ) 0U )
		{
			;
			vTaskSuspendAll();
			{
				;

				





 
				prvAddCurrentTaskToDelayedList( xTicksToDelay, ( ( BaseType_t ) 0 ) );
			}
			xAlreadyYielded = xTaskResumeAll();
		}
		else
		{
			;
		}

		
 
		if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
		{
			{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
		}
		else
		{
			;
		}
	}


 



	eTaskState eTaskGetState( TaskHandle_t xTask )
	{
	eTaskState eReturn;
	List_t const * pxStateList, *pxDelayedList, *pxOverflowedDelayedList;
	const TCB_t * const pxTCB = xTask;

		;

		if( pxTCB == pxCurrentTCB )
		{
			 
			eReturn = eRunning;
		}
		else
		{
			vPortEnterCritical();
			{
				pxStateList = ( ( &( pxTCB->xStateListItem ) )->pvContainer );
				pxDelayedList = pxDelayedTaskList;
				pxOverflowedDelayedList = pxOverflowDelayedTaskList;
			}
			vPortExitCritical();

			if( ( pxStateList == pxDelayedList ) || ( pxStateList == pxOverflowedDelayedList ) )
			{
				
 
				eReturn = eBlocked;
			}


				else if( pxStateList == &xSuspendedTaskList )
				{
					

 
					if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) == 0 )
					{

						{
							


 
							if( pxTCB->ucNotifyState == ( ( uint8_t ) 1 ) )
							{
								eReturn = eBlocked;
							}
							else
							{
								eReturn = eSuspended;
							}
						}





					}
					else
					{
						eReturn = eBlocked;
					}
				}



				else if( ( pxStateList == &xTasksWaitingTermination ) || ( pxStateList == 0 ) )
				{
					

 
					eReturn = eDeleted;
				}


			else  
			{
				
 
				eReturn = eReady;
			}
		}

		return eReturn;
	}  


 



	UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask )
	{
	TCB_t const *pxTCB;
	UBaseType_t uxReturn;

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTask ) == 0 ) ? pxCurrentTCB : ( xTask ) );
			uxReturn = pxTCB->uxPriority;
		}
		vPortExitCritical();

		return uxReturn;
	}


 



	UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask )
	{
	TCB_t const *pxTCB;
	UBaseType_t uxReturn, uxSavedInterruptState;

		














 
		;

		uxSavedInterruptState = ulPortRaiseBASEPRI();
		{
			
 
			pxTCB = ( ( ( xTask ) == 0 ) ? pxCurrentTCB : ( xTask ) );
			uxReturn = pxTCB->uxPriority;
		}
		vPortSetBASEPRI(uxSavedInterruptState);

		return uxReturn;
	}


 



	void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority )
	{
	TCB_t *pxTCB;
	UBaseType_t uxCurrentBasePriority, uxPriorityUsedOnEntry;
	BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );

		;

		 
		if( uxNewPriority >= ( UBaseType_t ) ( 5 ) )
		{
			uxNewPriority = ( UBaseType_t ) ( 5 ) - ( UBaseType_t ) 1U;
		}
		else
		{
			;
		}

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTask ) == 0 ) ? pxCurrentTCB : ( xTask ) );

			;






			{
				uxCurrentBasePriority = pxTCB->uxPriority;
			}


			if( uxCurrentBasePriority != uxNewPriority )
			{
				
 
				if( uxNewPriority > uxCurrentBasePriority )
				{
					if( pxTCB != pxCurrentTCB )
					{
						

 
						if( uxNewPriority >= pxCurrentTCB->uxPriority )
						{
							xYieldRequired = ( ( BaseType_t ) 1 );
						}
						else
						{
							;
						}
					}
					else
					{
						

 
					}
				}
				else if( pxTCB == pxCurrentTCB )
				{
					

 
					xYieldRequired = ( ( BaseType_t ) 1 );
				}
				else
				{
					

 
				}

				

 
				uxPriorityUsedOnEntry = pxTCB->uxPriority;

#line 1631 "FreeRTOS\\tasks.c"
				{
					pxTCB->uxPriority = uxNewPriority;
				}


				
 
				if( ( ( ( &( pxTCB->xEventListItem ) )->xItemValue ) & 0x80000000UL ) == 0UL )
				{
					( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 5 ) - ( TickType_t ) uxNewPriority ) ) );  
				}
				else
				{
					;
				}

				


 
				if( ( ( ( &( pxTCB->xStateListItem ) )->pvContainer == ( &( pxReadyTasksLists[ uxPriorityUsedOnEntry ] ) ) ) ? ( ( ( BaseType_t ) 1 ) ) : ( ( ( BaseType_t ) 0 ) ) ) != ( ( BaseType_t ) 0 ) )
				{
					

 
					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
					{
						

 
						( uxTopReadyPriority ) &= ~( 1UL << ( uxPriorityUsedOnEntry ) );
					}
					else
					{
						;
					}
					; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;
				}
				else
				{
					;
				}

				if( xYieldRequired != ( ( BaseType_t ) 0 ) )
				{
					{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
				}
				else
				{
					;
				}

				
 
				( void ) uxPriorityUsedOnEntry;
			}
		}
		vPortExitCritical();
	}


 



	void vTaskSuspend( TaskHandle_t xTaskToSuspend )
	{
	TCB_t *pxTCB;

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( xTaskToSuspend ) == 0 ) ? pxCurrentTCB : ( xTaskToSuspend ) );

			;

			
 
			if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
			{
				{ if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
			}
			else
			{
				;
			}

			 
			if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 0 )
			{
				( void ) uxListRemove( &( pxTCB->xEventListItem ) );
			}
			else
			{
				;
			}

			vListInsertEnd( &xSuspendedTaskList, &( pxTCB->xStateListItem ) );


			{
				if( pxTCB->ucNotifyState == ( ( uint8_t ) 1 ) )
				{
					
 
					pxTCB->ucNotifyState = ( ( uint8_t ) 0 );
				}
			}

		}
		vPortExitCritical();

		if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
		{
			
 
			vPortEnterCritical();
			{
				prvResetNextTaskUnblockTime();
			}
			vPortExitCritical();
		}
		else
		{
			;
		}

		if( pxTCB == pxCurrentTCB )
		{
			if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
			{
				 
				;
				{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
			}
			else
			{
				

 
				if( ( ( &xSuspendedTaskList )->uxNumberOfItems ) == uxCurrentNumberOfTasks )  
				{
					


 
					pxCurrentTCB = 0;
				}
				else
				{
					vTaskSwitchContext();
				}
			}
		}
		else
		{
			;
		}
	}


 



	static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask )
	{
	BaseType_t xReturn = ( ( BaseType_t ) 0 );
	const TCB_t * const pxTCB = xTask;

		
 

		 
		;

		 
		if( ( ( ( &( pxTCB->xStateListItem ) )->pvContainer == ( &xSuspendedTaskList ) ) ? ( ( ( BaseType_t ) 1 ) ) : ( ( ( BaseType_t ) 0 ) ) ) != ( ( BaseType_t ) 0 ) )
		{
			 
			if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( &xPendingReadyList ) ) ? ( ( ( BaseType_t ) 1 ) ) : ( ( ( BaseType_t ) 0 ) ) ) == ( ( BaseType_t ) 0 ) )
			{
				
 
				if( ( ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( 0 ) ) ? ( ( ( BaseType_t ) 1 ) ) : ( ( ( BaseType_t ) 0 ) ) ) != ( ( BaseType_t ) 0 ) )  
				{
					xReturn = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}
			else
			{
				;
			}
		}
		else
		{
			;
		}

		return xReturn;
	}  


 



	void vTaskResume( TaskHandle_t xTaskToResume )
	{
	TCB_t * const pxTCB = xTaskToResume;

		 
		;

		
 
		if( ( pxTCB != pxCurrentTCB ) && ( pxTCB != 0 ) )
		{
			vPortEnterCritical();
			{
				if( prvTaskIsTaskSuspended( pxTCB ) != ( ( BaseType_t ) 0 ) )
				{
					;

					
 
					( void ) uxListRemove(  &( pxTCB->xStateListItem ) );
					; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;

					 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						

 
						{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
					}
					else
					{
						;
					}
				}
				else
				{
					;
				}
			}
			vPortExitCritical();
		}
		else
		{
			;
		}
	}



 



	BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume )
	{
	BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );
	TCB_t * const pxTCB = xTaskToResume;
	UBaseType_t uxSavedInterruptStatus;

		;

		














 
		;

		uxSavedInterruptStatus = ulPortRaiseBASEPRI();
		{
			if( prvTaskIsTaskSuspended( pxTCB ) != ( ( BaseType_t ) 0 ) )
			{
				;

				 
				if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
				{
					
 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						xYieldRequired = ( ( BaseType_t ) 1 );
					}
					else
					{
						;
					}

					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
					; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;
				}
				else
				{
					

 
					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
				}
			}
			else
			{
				;
			}
		}
		vPortSetBASEPRI(uxSavedInterruptStatus);

		return xYieldRequired;
	}


 

void vTaskStartScheduler( void )
{
BaseType_t xReturn;

	 
#line 1999 "FreeRTOS\\tasks.c"
	{
		 
		xReturn = xTaskCreate(	prvIdleTask,
								"IDLE",
								( ( unsigned short ) 128 ),
								( void * ) 0,
								( ( UBaseType_t ) 0x00 ),  
								&xIdleTaskHandle );  
	}



	{
		if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
		{
			xReturn = xTimerCreateTimerTask();
		}
		else
		{
			;
		}
	}


	if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
	{
		

 






		



 
		vPortRaiseBASEPRI();

#line 2048 "FreeRTOS\\tasks.c"

		xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
		xSchedulerRunning = ( ( BaseType_t ) 1 );
		xTickCount = ( TickType_t ) 0;

		




 
		;

		;

		
 
		if( xPortStartScheduler() != ( ( BaseType_t ) 0 ) )
		{
			
 
		}
		else
		{
			 
		}
	}
	else
	{
		

 
		;
	}

	
 
	( void ) xIdleTaskHandle;
}
 

void vTaskEndScheduler( void )
{
	

 
	vPortRaiseBASEPRI();
	xSchedulerRunning = ( ( BaseType_t ) 0 );
	vPortEndScheduler();
}
 

void vTaskSuspendAll( void )
{
	


 
	++uxSchedulerSuspended;
}
 

#line 2171 "FreeRTOS\\tasks.c"
 

BaseType_t xTaskResumeAll( void )
{
TCB_t *pxTCB = 0;
BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );

	
 
	;

	



 
	vPortEnterCritical();
	{
		--uxSchedulerSuspended;

		if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
		{
			if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
			{
				
 
				while( ( ( ( &xPendingReadyList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
				{
					pxTCB = ( (&( ( ( &xPendingReadyList ) )->xListEnd ))->pxNext->pvOwner );  
					( void ) uxListRemove( &( pxTCB->xEventListItem ) );
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
					; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;

					
 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						xYieldPending = ( ( BaseType_t ) 1 );
					}
					else
					{
						;
					}
				}

				if( pxTCB != 0 )
				{
					




 
					prvResetNextTaskUnblockTime();
				}

				


 
				{
					UBaseType_t uxPendedCounts = uxPendedTicks;  

					if( uxPendedCounts > ( UBaseType_t ) 0U )
					{
						do
						{
							if( xTaskIncrementTick() != ( ( BaseType_t ) 0 ) )
							{
								xYieldPending = ( ( BaseType_t ) 1 );
							}
							else
							{
								;
							}
							--uxPendedCounts;
						} while( uxPendedCounts > ( UBaseType_t ) 0U );

						uxPendedTicks = 0;
					}
					else
					{
						;
					}
				}

				if( xYieldPending != ( ( BaseType_t ) 0 ) )
				{

					{
						xAlreadyYielded = ( ( BaseType_t ) 1 );
					}

					{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
				}
				else
				{
					;
				}
			}
		}
		else
		{
			;
		}
	}
	vPortExitCritical();

	return xAlreadyYielded;
}
 

TickType_t xTaskGetTickCount( void )
{
TickType_t xTicks;

	 
	;
	{
		xTicks = xTickCount;
	}
	;

	return xTicks;
}
 

TickType_t xTaskGetTickCountFromISR( void )
{
TickType_t xReturn;
UBaseType_t uxSavedInterruptStatus;

	












 
	;

	uxSavedInterruptStatus = 0;
	{
		xReturn = xTickCount;
	}
	( void ) uxSavedInterruptStatus;

	return xReturn;
}
 

UBaseType_t uxTaskGetNumberOfTasks( void )
{
	
 
	return uxCurrentNumberOfTasks;
}
 

char *pcTaskGetName( TaskHandle_t xTaskToQuery )  
{
TCB_t *pxTCB;

	
 
	pxTCB = ( ( ( xTaskToQuery ) == 0 ) ? pxCurrentTCB : ( xTaskToQuery ) );
	;
	return &( pxTCB->pcTaskName[ 0 ] );
}
 

#line 2415 "FreeRTOS\\tasks.c"
 

#line 2480 "FreeRTOS\\tasks.c"
 

#line 2554 "FreeRTOS\\tasks.c"
 

#line 2567 "FreeRTOS\\tasks.c"
 




 
#line 2586 "FreeRTOS\\tasks.c"
 

#line 2662 "FreeRTOS\\tasks.c"
 

BaseType_t xTaskIncrementTick( void )
{
TCB_t * pxTCB;
TickType_t xItemValue;
BaseType_t xSwitchRequired = ( ( BaseType_t ) 0 );

	

 
	;
	if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
	{
		
 
		const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;

		
 
		xTickCount = xConstTickCount;

		if( xConstTickCount == ( TickType_t ) 0U )  
		{
			{ List_t *pxTemp; ; pxTemp = pxDelayedTaskList; pxDelayedTaskList = pxOverflowDelayedTaskList; pxOverflowDelayedTaskList = pxTemp; xNumOfOverflows++; prvResetNextTaskUnblockTime(); };
		}
		else
		{
			;
		}

		


 
		if( xConstTickCount >= xNextTaskUnblockTime )
		{
			for( ;; )
			{
				if( ( ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
				{
					



 
					xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;  
					break;
				}
				else
				{
					


 
					pxTCB = ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );  
					xItemValue = ( ( &( pxTCB->xStateListItem ) )->xItemValue );

					if( xConstTickCount < xItemValue )
					{
						



 
						xNextTaskUnblockTime = xItemValue;
						break;  
					}
					else
					{
						;
					}

					 
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );

					
 
					if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != 0 )
					{
						( void ) uxListRemove( &( pxTCB->xEventListItem ) );
					}
					else
					{
						;
					}

					
 
					; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;

					
 

					{
						


 
						if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
						{
							xSwitchRequired = ( ( BaseType_t ) 1 );
						}
						else
						{
							;
						}
					}

				}
			}
		}

		

 

		{
			if( ( ( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) )->uxNumberOfItems ) > ( UBaseType_t ) 1 )
			{
				xSwitchRequired = ( ( BaseType_t ) 1 );
			}
			else
			{
				;
			}
		}


#line 2805 "FreeRTOS\\tasks.c"
	}
	else
	{
		++uxPendedTicks;

		
 





	}


	{
		if( xYieldPending != ( ( BaseType_t ) 0 ) )
		{
			xSwitchRequired = ( ( BaseType_t ) 1 );
		}
		else
		{
			;
		}
	}


	return xSwitchRequired;
}
 

#line 2863 "FreeRTOS\\tasks.c"
 

#line 2887 "FreeRTOS\\tasks.c"
 

#line 2912 "FreeRTOS\\tasks.c"
 

#line 2944 "FreeRTOS\\tasks.c"
 

void vTaskSwitchContext( void )
{
	if( uxSchedulerSuspended != ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
	{
		
 
		xYieldPending = ( ( BaseType_t ) 1 );
	}
	else
	{
		xYieldPending = ( ( BaseType_t ) 0 );
		;

#line 2985 "FreeRTOS\\tasks.c"

		 
		;

		 






		
 
		{ UBaseType_t uxTopPriority; uxTopPriority = ( 31UL - ( uint32_t ) __clz( ( uxTopReadyPriority ) ) ); ; { List_t * const pxConstList = ( &( pxReadyTasksLists[ uxTopPriority ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxCurrentTCB ) = ( pxConstList )->pxIndex->pvOwner; }; };  
		;

		 






#line 3015 "FreeRTOS\\tasks.c"
	}
}
 

void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
{
	;

	
 

	


 
	vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );

	prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 ) );
}
 

void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
	;

	
 
	;

	

 
	( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( xItemValue | 0x80000000UL ) );

	



 
	vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );

	prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 ) );
}
 



	void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely )
	{
		;

		


 


		


 
		vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );

		

 
		if( xWaitIndefinitely != ( ( BaseType_t ) 0 ) )
		{
			xTicksToWait = ( TickType_t ) 0xffffffffUL;
		}

		;
		prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
	}


 

BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;

	
 

	








 
	pxUnblockedTCB = ( (&( ( pxEventList )->xListEnd ))->pxNext->pvOwner );  
	;
	( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );

	if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
	{
		( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
		; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxUnblockedTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xStateListItem ) ); ;

#line 3133 "FreeRTOS\\tasks.c"
	}
	else
	{
		
 
		vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
	}

	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	{
		

 
		xReturn = ( ( BaseType_t ) 1 );

		
 
		xYieldPending = ( ( BaseType_t ) 1 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 0 );
	}

	return xReturn;
}
 

void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue )
{
TCB_t *pxUnblockedTCB;

	
 
	;

	 
	( ( pxEventListItem )->xItemValue = ( xItemValue | 0x80000000UL ) );

	
 
	pxUnblockedTCB = ( ( pxEventListItem )->pvOwner );  
	;
	( void ) uxListRemove( pxEventListItem );

	

 
	( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
	; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxUnblockedTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xStateListItem ) ); ;

	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	{
		


 
		xYieldPending = ( ( BaseType_t ) 1 );
	}
}
 

void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
{
	;
	vPortEnterCritical();
	{
		pxTimeOut->xOverflowCount = xNumOfOverflows;
		pxTimeOut->xTimeOnEntering = xTickCount;
	}
	vPortExitCritical();
}
 

void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut )
{
	 
	pxTimeOut->xOverflowCount = xNumOfOverflows;
	pxTimeOut->xTimeOnEntering = xTickCount;
}
 

BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
{
BaseType_t xReturn;

	;
	;

	vPortEnterCritical();
	{
		 
		const TickType_t xConstTickCount = xTickCount;
		const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;

#line 3238 "FreeRTOS\\tasks.c"


			if( *pxTicksToWait == ( TickType_t ) 0xffffffffUL )
			{
				

 
				xReturn = ( ( BaseType_t ) 0 );
			}
			else


		if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) )  
		{
			



 
			xReturn = ( ( BaseType_t ) 1 );
		}
		else if( xElapsedTime < *pxTicksToWait )  
		{
			 
			*pxTicksToWait -= xElapsedTime;
			vTaskInternalSetTimeOutState( pxTimeOut );
			xReturn = ( ( BaseType_t ) 0 );
		}
		else
		{
			*pxTicksToWait = 0;
			xReturn = ( ( BaseType_t ) 1 );
		}
	}
	vPortExitCritical();

	return xReturn;
}
 

void vTaskMissedYield( void )
{
	xYieldPending = ( ( BaseType_t ) 1 );
}
 

#line 3305 "FreeRTOS\\tasks.c"
 

#line 3321 "FreeRTOS\\tasks.c"











 
static void prvIdleTask( void *pvParameters )
{
	 
	( void ) pvParameters;

	
 

	

 
	;

	for( ;; )
	{
		
 
		prvCheckTasksWaitingTermination();

#line 3361 "FreeRTOS\\tasks.c"


		{
			







 
			if( ( ( &( pxReadyTasksLists[ ( ( UBaseType_t ) 0U ) ] ) )->uxNumberOfItems ) > ( UBaseType_t ) 1 )
			{
				{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
			}
			else
			{
				;
			}
		}


#line 3396 "FreeRTOS\\tasks.c"

		


 
#line 3446 "FreeRTOS\\tasks.c"

	}
}
 

#line 3489 "FreeRTOS\\tasks.c"
 

#line 3505 "FreeRTOS\\tasks.c"
 

#line 3528 "FreeRTOS\\tasks.c"
 

#line 3544 "FreeRTOS\\tasks.c"
 

static void prvInitialiseTaskLists( void )
{
UBaseType_t uxPriority;

	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) ( 5 ); uxPriority++ )
	{
		vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
	}

	vListInitialise( &xDelayedTaskList1 );
	vListInitialise( &xDelayedTaskList2 );
	vListInitialise( &xPendingReadyList );


	{
		vListInitialise( &xTasksWaitingTermination );
	}



	{
		vListInitialise( &xSuspendedTaskList );
	}


	
 
	pxDelayedTaskList = &xDelayedTaskList1;
	pxOverflowDelayedTaskList = &xDelayedTaskList2;
}
 

static void prvCheckTasksWaitingTermination( void )
{

	 


	{
		TCB_t *pxTCB;

		
 
		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
		{
			vPortEnterCritical();
			{
				pxTCB = ( (&( ( ( &xTasksWaitingTermination ) )->xListEnd ))->pxNext->pvOwner );  
				( void ) uxListRemove( &( pxTCB->xStateListItem ) );
				--uxCurrentNumberOfTasks;
				--uxDeletedTasksWaitingCleanUp;
			}
			vPortExitCritical();

			prvDeleteTCB( pxTCB );
		}
	}

}
 

#line 3701 "FreeRTOS\\tasks.c"
 

#line 3734 "FreeRTOS\\tasks.c"
 



	static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte )
	{
	uint32_t ulCount = 0U;

		while( *pucStackByte == ( uint8_t ) ( 0xa5U ) )
		{
			pucStackByte -= ( -1 );
			ulCount++;
		}

		ulCount /= ( uint32_t ) sizeof( StackType_t );  

		return ( uint16_t ) ulCount;
	}


 

#line 3794 "FreeRTOS\\tasks.c"
 



	UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask )
	{
	TCB_t *pxTCB;
	uint8_t *pucEndOfStack;
	UBaseType_t uxReturn;

		pxTCB = ( ( ( xTask ) == 0 ) ? pxCurrentTCB : ( xTask ) );


		{
			pucEndOfStack = ( uint8_t * ) pxTCB->pxStack;
		}






		uxReturn = ( UBaseType_t ) prvTaskCheckFreeStackSpace( pucEndOfStack );

		return uxReturn;
	}


 



	static void prvDeleteTCB( TCB_t *pxTCB )
	{
		

 
		( void ) pxTCB;

		
 







		{
			
 
			vPortFree( pxTCB->pxStack );
			vPortFree( pxTCB );
		}
#line 3875 "FreeRTOS\\tasks.c"
	}


 

static void prvResetNextTaskUnblockTime( void )
{
TCB_t *pxTCB;

	if( ( ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
	{
		


 
		xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
	}
	else
	{
		


 
		( pxTCB ) = ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );  
		xNextTaskUnblockTime = ( ( &( ( pxTCB )->xStateListItem ) )->xItemValue );
	}
}
 



	TaskHandle_t xTaskGetCurrentTaskHandle( void )
	{
	TaskHandle_t xReturn;

		

 
		xReturn = pxCurrentTCB;

		return xReturn;
	}


 



	BaseType_t xTaskGetSchedulerState( void )
	{
	BaseType_t xReturn;

		if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
		{
			xReturn = ( ( BaseType_t ) 1 );
		}
		else
		{
			if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
			{
				xReturn = ( ( BaseType_t ) 2 );
			}
			else
			{
				xReturn = ( ( BaseType_t ) 0 );
			}
		}

		return xReturn;
	}


 

#line 4034 "FreeRTOS\\tasks.c"
 

#line 4114 "FreeRTOS\\tasks.c"
 

#line 4216 "FreeRTOS\\tasks.c"
 

#line 4246 "FreeRTOS\\tasks.c"
 

#line 4279 "FreeRTOS\\tasks.c"
 

#line 4305 "FreeRTOS\\tasks.c"
 

#line 4404 "FreeRTOS\\tasks.c"
 

#line 4531 "FreeRTOS\\tasks.c"
 

TickType_t uxTaskResetEventItemValue( void )
{
TickType_t uxReturn;

	uxReturn = ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue );

	
 
	( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 5 ) - ( TickType_t ) pxCurrentTCB->uxPriority ) ) );  

	return uxReturn;
}
 

#line 4562 "FreeRTOS\\tasks.c"
 



	uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait )
	{
	uint32_t ulReturn;

		vPortEnterCritical();
		{
			 
			if( pxCurrentTCB->ulNotifiedValue == 0UL )
			{
				 
				pxCurrentTCB->ucNotifyState = ( ( uint8_t ) 1 );

				if( xTicksToWait > ( TickType_t ) 0 )
				{
					prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 ) );
					;

					


 
					{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
				}
				else
				{
					;
				}
			}
			else
			{
				;
			}
		}
		vPortExitCritical();

		vPortEnterCritical();
		{
			;
			ulReturn = pxCurrentTCB->ulNotifiedValue;

			if( ulReturn != 0UL )
			{
				if( xClearCountOnExit != ( ( BaseType_t ) 0 ) )
				{
					pxCurrentTCB->ulNotifiedValue = 0UL;
				}
				else
				{
					pxCurrentTCB->ulNotifiedValue = ulReturn - ( uint32_t ) 1;
				}
			}
			else
			{
				;
			}

			pxCurrentTCB->ucNotifyState = ( ( uint8_t ) 0 );
		}
		vPortExitCritical();

		return ulReturn;
	}


 



	BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait )
	{
	BaseType_t xReturn;

		vPortEnterCritical();
		{
			 
			if( pxCurrentTCB->ucNotifyState != ( ( uint8_t ) 2 ) )
			{
				

 
				pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnEntry;

				 
				pxCurrentTCB->ucNotifyState = ( ( uint8_t ) 1 );

				if( xTicksToWait > ( TickType_t ) 0 )
				{
					prvAddCurrentTaskToDelayedList( xTicksToWait, ( ( BaseType_t ) 1 ) );
					;

					


 
					{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
				}
				else
				{
					;
				}
			}
			else
			{
				;
			}
		}
		vPortExitCritical();

		vPortEnterCritical();
		{
			;

			if( pulNotificationValue != 0 )
			{
				
 
				*pulNotificationValue = pxCurrentTCB->ulNotifiedValue;
			}

			


 
			if( pxCurrentTCB->ucNotifyState != ( ( uint8_t ) 2 ) )
			{
				 
				xReturn = ( ( BaseType_t ) 0 );
			}
			else
			{
				
 
				pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnExit;
				xReturn = ( ( BaseType_t ) 1 );
			}

			pxCurrentTCB->ucNotifyState = ( ( uint8_t ) 0 );
		}
		vPortExitCritical();

		return xReturn;
	}


 



	BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue )
	{
	TCB_t * pxTCB;
	BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );
	uint8_t ucOriginalNotifyState;

		;
		pxTCB = xTaskToNotify;

		vPortEnterCritical();
		{
			if( pulPreviousNotificationValue != 0 )
			{
				*pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
			}

			ucOriginalNotifyState = pxTCB->ucNotifyState;

			pxTCB->ucNotifyState = ( ( uint8_t ) 2 );

			switch( eAction )
			{
				case eSetBits	:
					pxTCB->ulNotifiedValue |= ulValue;
					break;

				case eIncrement	:
					( pxTCB->ulNotifiedValue )++;
					break;

				case eSetValueWithOverwrite	:
					pxTCB->ulNotifiedValue = ulValue;
					break;

				case eSetValueWithoutOverwrite :
					if( ucOriginalNotifyState != ( ( uint8_t ) 2 ) )
					{
						pxTCB->ulNotifiedValue = ulValue;
					}
					else
					{
						 
						xReturn = ( ( ( BaseType_t ) 0 ) );
					}
					break;

				case eNoAction:
					
 
					break;

				default:
					

 
					;

					break;
			}

			;

			
 
			if( ucOriginalNotifyState == ( ( uint8_t ) 1 ) )
			{
				( void ) uxListRemove( &( pxTCB->xStateListItem ) );
				; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;

				 
				;

#line 4801 "FreeRTOS\\tasks.c"

				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
				{
					
 
					{ ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
				}
				else
				{
					;
				}
			}
			else
			{
				;
			}
		}
		vPortExitCritical();

		return xReturn;
	}


 



	BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken )
	{
	TCB_t * pxTCB;
	uint8_t ucOriginalNotifyState;
	BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );
	UBaseType_t uxSavedInterruptStatus;

		;

		














 
		;

		pxTCB = xTaskToNotify;

		uxSavedInterruptStatus = ulPortRaiseBASEPRI();
		{
			if( pulPreviousNotificationValue != 0 )
			{
				*pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
			}

			ucOriginalNotifyState = pxTCB->ucNotifyState;
			pxTCB->ucNotifyState = ( ( uint8_t ) 2 );

			switch( eAction )
			{
				case eSetBits	:
					pxTCB->ulNotifiedValue |= ulValue;
					break;

				case eIncrement	:
					( pxTCB->ulNotifiedValue )++;
					break;

				case eSetValueWithOverwrite	:
					pxTCB->ulNotifiedValue = ulValue;
					break;

				case eSetValueWithoutOverwrite :
					if( ucOriginalNotifyState != ( ( uint8_t ) 2 ) )
					{
						pxTCB->ulNotifiedValue = ulValue;
					}
					else
					{
						 
						xReturn = ( ( ( BaseType_t ) 0 ) );
					}
					break;

				case eNoAction :
					
 
					break;

				default:
					

 
					;
					break;
			}

			;

			
 
			if( ucOriginalNotifyState == ( ( uint8_t ) 1 ) )
			{
				 
				;

				if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
				{
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
					; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;
				}
				else
				{
					
 
					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
				}

				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
				{
					
 
					if( pxHigherPriorityTaskWoken != 0 )
					{
						*pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
					}

					

 
					xYieldPending = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}
		}
		vPortSetBASEPRI(uxSavedInterruptStatus);

		return xReturn;
	}


 



	void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken )
	{
	TCB_t * pxTCB;
	uint8_t ucOriginalNotifyState;
	UBaseType_t uxSavedInterruptStatus;

		;

		














 
		;

		pxTCB = xTaskToNotify;

		uxSavedInterruptStatus = ulPortRaiseBASEPRI();
		{
			ucOriginalNotifyState = pxTCB->ucNotifyState;
			pxTCB->ucNotifyState = ( ( uint8_t ) 2 );

			
 
			( pxTCB->ulNotifiedValue )++;

			;

			
 
			if( ucOriginalNotifyState == ( ( uint8_t ) 1 ) )
			{
				 
				;

				if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
				{
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
					; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); ;
				}
				else
				{
					
 
					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
				}

				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
				{
					
 
					if( pxHigherPriorityTaskWoken != 0 )
					{
						*pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
					}

					

 
					xYieldPending = ( ( BaseType_t ) 1 );
				}
				else
				{
					;
				}
			}
		}
		vPortSetBASEPRI(uxSavedInterruptStatus);
	}



 



	BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask )
	{
	TCB_t *pxTCB;
	BaseType_t xReturn;

		
 
		pxTCB = ( ( ( xTask ) == 0 ) ? pxCurrentTCB : ( xTask ) );

		vPortEnterCritical();
		{
			if( pxTCB->ucNotifyState == ( ( uint8_t ) 2 ) )
			{
				pxTCB->ucNotifyState = ( ( uint8_t ) 0 );
				xReturn = ( ( ( BaseType_t ) 1 ) );
			}
			else
			{
				xReturn = ( ( ( BaseType_t ) 0 ) );
			}
		}
		vPortExitCritical();

		return xReturn;
	}


 

#line 5079 "FreeRTOS\\tasks.c"
 

static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
{
TickType_t xTimeToWake;
const TickType_t xConstTickCount = xTickCount;

#line 5094 "FreeRTOS\\tasks.c"

	
 
	if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
	{
		
 
		( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );  
	}
	else
	{
		;
	}


	{
		if( ( xTicksToWait == ( TickType_t ) 0xffffffffUL ) && ( xCanBlockIndefinitely != ( ( BaseType_t ) 0 ) ) )
		{
			

 
			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
		}
		else
		{
			

 
			xTimeToWake = xConstTickCount + xTicksToWait;

			 
			( ( &( pxCurrentTCB->xStateListItem ) )->xItemValue = ( xTimeToWake ) );

			if( xTimeToWake < xConstTickCount )
			{
				
 
				vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
			}
			else
			{
				
 
				vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );

				

 
				if( xTimeToWake < xNextTaskUnblockTime )
				{
					xNextTaskUnblockTime = xTimeToWake;
				}
				else
				{
					;
				}
			}
		}
	}
#line 5190 "FreeRTOS\\tasks.c"
}



 






#line 5213 "FreeRTOS\\tasks.c"


