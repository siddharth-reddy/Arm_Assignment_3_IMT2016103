#include "TM4C123GH6PM.h"
#include<stdio.h>
#include<string.h>
void printMsg(int a,int b)
{
	 //float a1=*((float*) &a);
	 //float b1=*((float*) &b);
	 char Msg1[100];
	 char Msg2[100];
	 char *ptr;
	 sprintf(Msg1, "%d", a);
	 sprintf(Msg2, "%d", b);
	 ptr = Msg1 ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 ITM_SendChar(',');
	 ptr = Msg2 ;
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
}

