#include "stm32f10x.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_usart.h"
#include "misc.h"

#include <stdio.h>



#include "Tom_Common_Api.h"
#include "use_config.h"


#include "ff.h"

#include "includes.h"


#define Beep_On  		GPIO_SetBits(GPIOD,GPIO_Pin_6)
#define Beep_Off  	GPIO_ResetBits(GPIOD,GPIO_Pin_6)

#define Led_On_1  	GPIO_ResetBits(GPIOB,GPIO_Pin_5)
#define Led_Off_1  	GPIO_SetBits(GPIOB,GPIO_Pin_5)

#define Led_On_2  	GPIO_ResetBits(GPIOD,GPIO_Pin_12)
#define Led_Off_2  	GPIO_SetBits(GPIOD,GPIO_Pin_12)


/* 起始任务相关设置*/
//任务优先级
#define Start_Task_PRIO          10  //优先级最低，越大越低


//任务堆栈大小
#define Start_STK_Size            64
//#define Start_STK_Size            256

//任务堆栈空间大小
OS_STK Start_Task_STK[Start_STK_Size];


uint8_t  fac_us=0;	//us的延时倍数
uint16_t fac_ms=0;	//ms的延时倍数


void Tom_CheckStackSize(INT8U prio);

int SendChar (int ch)  
{
#if defined(USART1_DEBUG)
	USART_SendData(USART1,(unsigned char)ch);        
	while(USART_GetFlagStatus(USART1,USART_FLAG_TC) != SET);
#elif defined(USART2_DEBUG)
	USART_SendData(USART2,(unsigned char)ch);        
	while(USART_GetFlagStatus(USART2,USART_FLAG_TC) != SET);
#elif defined(USART3_DEBUG)
	USART_SendData(USART3,(unsigned char)ch);        
	while(USART_GetFlagStatus(USART3,USART_FLAG_TC) != SET);
#elif defined(UART4_DEBUG)
	USART_SendData(UART4,(unsigned char)ch);        
	while(USART_GetFlagStatus(UART4,USART_FLAG_TC) != SET);	
#elif defined(UART5_DEBUG)
	USART_SendData(UART5,(unsigned char)ch);        
	while(USART_GetFlagStatus(UART5,USART_FLAG_TC) != SET);	
#else
  	return (ch);
#endif
}


//USART1,USART3
void GPIO_Configure(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB|RCC_APB2Periph_GPIOC|RCC_APB2Periph_AFIO|RCC_APB2Periph_USART1, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2|RCC_APB1Periph_USART3|RCC_APB1Periph_UART4|RCC_APB1Periph_UART5, ENABLE);


	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_9|GPIO_Pin_2;
	GPIO_InitStructure.GPIO_Mode=GPIO_Mode_AF_PP;//fatal mistake:Out
	GPIO_InitStructure.GPIO_Speed=GPIO_Speed_50MHz;
	GPIO_Init(GPIOA,&GPIO_InitStructure);//PA9,PA2:TX

	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_10;
	GPIO_Init(GPIOB,&GPIO_InitStructure);//PB10:TX

	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_10;
	GPIO_Init(GPIOC,&GPIO_InitStructure);//PC10:TX

	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_12;
	GPIO_Init(GPIOC,&GPIO_InitStructure);//PC12:TX

	
	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_10|GPIO_Pin_3;
	GPIO_InitStructure.GPIO_Mode=GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA,&GPIO_InitStructure);//PA10,PA3:RX

	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_11;
	GPIO_Init(GPIOB,&GPIO_InitStructure);//PB11:RX

	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_11;
	GPIO_Init(GPIOC,&GPIO_InitStructure);//PC11:RX
}


void Beep_Init(void)
{
	GPIO_InitTypeDef GPIO_Init88;
	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD, ENABLE);
	
	GPIO_Init88.GPIO_Pin=GPIO_Pin_6;
	//配置成普通io时，直接选择推挽输出，而不是复用推挽输出，还不打开复用时钟，细节细节，我真的太菜了
	GPIO_Init88.GPIO_Mode=GPIO_Mode_Out_PP;//fatal mistake:Out
	GPIO_Init88.GPIO_Speed=GPIO_Speed_50MHz;
	GPIO_Init(GPIOD,&GPIO_Init88);//PD6
}


void Led_Init(void)
{
	GPIO_InitTypeDef GPIO_Init88;
	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB|RCC_APB2Periph_GPIOD, ENABLE);
	
	GPIO_Init88.GPIO_Pin=GPIO_Pin_5;
	GPIO_Init88.GPIO_Mode=GPIO_Mode_Out_PP;//fatal mistake:Out
	GPIO_Init88.GPIO_Speed=GPIO_Speed_50MHz;
	GPIO_Init(GPIOB,&GPIO_Init88);//PB5
	
	GPIO_Init88.GPIO_Pin=GPIO_Pin_12;
	GPIO_Init(GPIOD,&GPIO_Init88);//PD12
	
	Led_Off_1;
	Led_Off_2;
}


void USART_Configure(void)
{
	USART_InitTypeDef USART_InitStructure;
	
	USART_InitStructure.USART_BaudRate=115200;
	USART_InitStructure.USART_HardwareFlowControl=USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode=USART_Mode_Tx|USART_Mode_Rx;
	USART_InitStructure.USART_Parity=USART_Parity_No;
	USART_InitStructure.USART_StopBits=USART_StopBits_1;
	USART_InitStructure.USART_WordLength=USART_WordLength_8b;


	USART_Init(USART1,&USART_InitStructure);
	USART_Cmd(USART1, ENABLE);
	
	USART_Init(USART2,&USART_InitStructure);
	USART_Cmd(USART2, ENABLE);

	USART_Init(USART3,&USART_InitStructure);
	USART_Cmd(USART3, ENABLE);

	USART_Init(UART4,&USART_InitStructure);
	USART_Cmd(UART4, ENABLE);

	USART_Init(UART5,&USART_InitStructure);
	USART_Cmd(UART5, ENABLE);
	
	USART_ITConfig(USART1,USART_IT_RXNE,ENABLE);
	USART_ITConfig(USART2,USART_IT_RXNE,ENABLE);
	USART_ITConfig(USART3,USART_IT_RXNE,ENABLE);
	USART_ITConfig(UART4,USART_IT_RXNE,ENABLE);
	USART_ITConfig(UART5,USART_IT_RXNE,ENABLE);
}


void delay_init(void)
{
	uint32_t RELOAD=0;	//


	SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK_Div8);  	//????ía2?ê±?ó HCLK / 8

	fac_us = SystemCoreClock / 8000000;  					//?μí3ê±?óμ? 1/8

	
	RELOAD = SystemCoreClock / 8000000;		//?????óμ???êy′?êy￡?μ￥??Hz
	RELOAD *= 1000000 / OS_TICKS_PER_SEC;		//?ù?Y2ù×÷?μí3μ?D?ì?ê±3¤à′????ò?3?ê±??￡?μ￥??￡oKHz
	                                    		//RELOAD?a24????êy?÷￡?×?′ó?μ?a:16777216 

	fac_ms = 1000 / OS_TICKS_PER_SEC;

	SysTick->CTRL |= SysTick_CTRL_TICKINT_Msk;	//?a??SysTick?¨ê±?÷?D?????ó
	SysTick->LOAD = RELOAD;					//ò?3???êy?μ￡???1/TICKINT_CNT???D??ò?′?
	SysTick->CTRL |= SysTick_CTRL_ENABLE_Msk;   //?aê?μ1êy

}


void OS_Heart_Init(void)
{
	delay_init();
}

u32 test_val=0;

void start_task(void *p_arg)
{
#if 0	
	u8 tmp_buf[512] = {0};
	u8 tmp_buf2[200] = {0};
	u8 tmp_buf3[70] = {0};
	u8 tmp_buf4[16] = {0};
#else
	//想要检查堆栈溢出，应把BUF尽量开大点，利用ucosii相应函数去检查
	//u8 tmp_buf[10] = {0};
#endif
	
	printf("welcome to [%s]\r\n",__func__);
	while(1)
	{
		test_val++;
		printf("hello tom the first ucosii task,hahaha, %d\r\n",test_val);
		OSTimeDly(200);
		//OS_TaskStatStkChk();
		Tom_CheckStackSize(0);
		Tom_CheckStackSize(1);
		Tom_CheckStackSize(2);
		Tom_CheckStackSize(3);
	}
}


int main(void)
{   
	RCC_ClocksTypeDef RCC_Clocks;
	
	GPIO_Configure();
	USART_Configure();

#ifdef APPLICATION
	printf("welcome to APPLICATION, VERSION is %s.\r\n",APPLICATION_VERSION);
#endif		
		
	RCC_GetClocksFreq(&RCC_Clocks);
	
	printf("\r\nSYSCLK_Frequency = %d MHz\n",RCC_Clocks.SYSCLK_Frequency/1000000);
	printf("\r\nHCLK_Frequency = %d MHz\n",RCC_Clocks.HCLK_Frequency/1000000);
	printf("\r\nPCLK1_Frequency = %d MHz\n",RCC_Clocks.PCLK1_Frequency/1000000);
	printf("\r\nPCLK2_Frequency = %d MHz\n",RCC_Clocks.PCLK2_Frequency/1000000);

#if 1
	OS_Heart_Init();  //初始化ucsos心跳，不然调度不起来
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);  //3?ê??ˉ?D??ó??è??

	OSInit();  //初始化ucosii
	//创建起始任务，任务堆栈地址是递减的，所以地址写成这样
	//OSTaskCreate(start_task, (void *)0, (OS_STK *)&Start_Task_STK[Start_STK_Size-1], Start_Task_PRIO);  //
	OSTaskCreateExt(	start_task,
					NULL,
					(OS_STK *)&Start_Task_STK[Start_STK_Size-1],
					Start_Task_PRIO,
					Start_Task_PRIO,
					(OS_STK *)Start_Task_STK,
					Start_STK_Size,
					NULL,
					OS_TASK_OPT_STK_CHK);

	OSStart();  //启动ucosii
#endif	
}


void Tom_CheckStackSize(INT8U prio)
{
	OS_STK_DATA  stk_data;
	
	OSTaskStkChk(prio, &stk_data);
#if 1
	printf("current prio: %d, free size: %d, used size: %d\r\n",prio,stk_data.OSFree*4,stk_data.OSUsed*4);
#endif
}





