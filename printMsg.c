#include "TM4C123GH6PM.h"
#include<stdio.h>
#include<string.h>
void printMsg(int a,int b,int c,int d)
{
	 //float a1=*((float*) &a);
	 //float b1=*((float*) &b);
	 char Msg1[100];
	 //char Msg2[100];
	 //char Msg3[100];
	 //char Msg4[100];
	
	 char *ptr;
	 sprintf(Msg1, "%d", b);
	 
	 

	
	 ptr = Msg1 ;					//first
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 ITM_SendChar(' ');
	 ITM_SendChar(' ');
	 
	 sprintf(Msg1, "%d", c);
	 ptr = Msg1 ;					//second
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 ITM_SendChar(' ');
	 ITM_SendChar(' ');
	 
	 sprintf(Msg1, "%d", d);
	 ptr = Msg1 ;					// third
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 ITM_SendChar(' ');
	 ITM_SendChar(' ');
	 
	 sprintf(Msg1, "%d", a);
	 ptr = Msg1 ;					// fourth
   while(*ptr != '\0'){
      ITM_SendChar(*ptr);
      ++ptr;
   }
	 
	 ITM_SendChar('\n');
}

void printMsgand(int a,int b,int c,int d){
	 //char *ptr;
	 //char Msg3[100];
	 //sprintf(Msg3, "%d", a);
	 ITM_SendChar('a');
	 ITM_SendChar('n');
	 ITM_SendChar('d');
	 ITM_SendChar('\n');
	 ITM_SendChar('x');
	 ITM_SendChar('1');
	 ITM_SendChar(' ');
	 ITM_SendChar('x');
	 ITM_SendChar('2');
	 ITM_SendChar(' ');
	ITM_SendChar('x');
	 ITM_SendChar('3');
	 ITM_SendChar(' ');
	ITM_SendChar('o');
	 ITM_SendChar('u');
	 ITM_SendChar('t');
	 ITM_SendChar('\n');
	 printMsg(a,b,c,d);
}

void printMsgor(int a,int b,int c,int d){
	 //char *ptr;
	 //char Msg3[100];
	 //sprintf(Msg3, "%d", a);
	 ITM_SendChar('o');
	 ITM_SendChar('r');
	 ITM_SendChar('\n');
	 ITM_SendChar('x');
	 ITM_SendChar('1');
	 ITM_SendChar(' ');
	 ITM_SendChar('x');
	 ITM_SendChar('2');
	 ITM_SendChar(' ');
	ITM_SendChar('x');
	 ITM_SendChar('3');
	 ITM_SendChar(' ');
	ITM_SendChar('o');
	 ITM_SendChar('u');
	 ITM_SendChar('t');
	 ITM_SendChar('\n');
	 printMsg(a,b,c,d);
}

void printMsgnot(int a,int b,int c,int d){
	 //char *ptr;
	 //char Msg3[100];
	 //sprintf(Msg3, "%d", a);
	 ITM_SendChar('n');
	 ITM_SendChar('o');
	 ITM_SendChar('t');
	 ITM_SendChar('\n');
	 ITM_SendChar('x');
	 ITM_SendChar('1');
	 ITM_SendChar(' ');
	 ITM_SendChar('x');
	 ITM_SendChar('2');
	 ITM_SendChar(' ');
	ITM_SendChar('x');
	 ITM_SendChar('3');
	 ITM_SendChar(' ');
	ITM_SendChar('o');
	 ITM_SendChar('u');
	 ITM_SendChar('t');
	 ITM_SendChar('\n');
	 printMsg(a,b,c,d);
}

void printMsgnand(int a,int b,int c,int d){
	 //char *ptr;
	 //char Msg3[100];
	 //sprintf(Msg3, "%d", a);
	 ITM_SendChar('n');
	 ITM_SendChar('a');
	 ITM_SendChar('n');
	 ITM_SendChar('d');
	 ITM_SendChar('\n');
	 ITM_SendChar('x');
	 ITM_SendChar('1');
	 ITM_SendChar(' ');
	 ITM_SendChar('x');
	 ITM_SendChar('2');
	 ITM_SendChar(' ');
	ITM_SendChar('x');
	 ITM_SendChar('3');
	 ITM_SendChar(' ');
	ITM_SendChar('o');
	 ITM_SendChar('u');
	 ITM_SendChar('t');
	 ITM_SendChar('\n');
	 printMsg(a,b,c,d);
}

void printMsgnor(int a,int b,int c,int d){
	 //char *ptr;
	 //char Msg3[100];
	 //sprintf(Msg3, "%d", a);
	 ITM_SendChar('n');
	 ITM_SendChar('o');
	 ITM_SendChar('r');
	 ITM_SendChar('\n');
	 ITM_SendChar('x');
	 ITM_SendChar('1');
	 ITM_SendChar(' ');
	 ITM_SendChar('x');
	 ITM_SendChar('2');
	 ITM_SendChar(' ');
	ITM_SendChar('x');
	 ITM_SendChar('3');
	 ITM_SendChar(' ');
	ITM_SendChar('o');
	 ITM_SendChar('u');
	 ITM_SendChar('t');
	 ITM_SendChar('\n');
	 printMsg(a,b,c,d);
}
