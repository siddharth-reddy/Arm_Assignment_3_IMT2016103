     area     appcode, CODE, READONLY
	 IMPORT printMsg             
	 export __main	
	 ENTRY 
__main  function		 
        ;VLDR.F32 S0, =2.0	; S0 HOLDS VALUE OF POWER IN SIGMOID FN
		VLDR.F32 S1, =10.0	;j NO OF TERMS IN SERIES
		MOV R4, #10
		;signum function power in S0 **(S3-S11)** SUB ROUTINE USES;check which reg u are using
		;BL func1	;PUT VALUE IN S0 AND CALL THIS ANS IN S10
		;keep three reg for weights say (s12-s14)
		;keep inputs in (s15-s17) output-s18
		VLDR.F32 S15, =1.0 ;inputs x1,x2,x3
		VLDR.F32 S16, =1.0
		VLDR.F32 S17, =1.0
		VLDR.F32 S19, =0.5	;constant
		BL logic_or	;call your function
		;VMOV.F32 R0,S18
		MOV R1, #3
		BL printMsg;printing 
		;reg used by sub routines-r(0-3),r4,r5--r6--r7--
		;
		
stop    B stop ; stop program

logic_and	PUSH  {R7, LR}		;reg used r7 , input s15-17 output at s18
			;---------
			;w0=-0.1;w1=0.2;w2=0.2
			VLDR.F32 S12, =-0.1		;weights w1,w2,w3
			VLDR.F32 S13, =0.2
			VLDR.F32 S14, =0.2
			VLDR.F32 S20, =-0.2		;BIAS
			VMUL.F32 S12,S12,S15	;summation 
			VMUL.F32 S13,S13,S16
			VMUL.F32 S14,S14,S17
			VADD.F32 S12,S12,S13
			VADD.F32 S14,S14,S12	;power of sigmoid
			VADD.F32 S0,S14,S20
			BL func1
			;you get output at s10
			VCMP.F32 S10,S19		;compare with 0.5
			VMRS APSR_nzcv, FPSCR
			BLE zero1
			B one1
zero1		MOV R0, #0
			B last1

one1		MOV R0, #1
			B last1
			
			;---------
last1		SUB LR, #0x01
		    POP {R7,PC}
            BX lr ; return from subroutine
			
;-------------
logic_or	PUSH  {R8, LR}		;reg used r8 , input s15-17 output at s18
			;---------
			;w0=-0.1;w1=0.7;w2=0.7
			VLDR.F32 S12, =-0.1		;weights w1,w2,w3
			VLDR.F32 S13, =0.7
			VLDR.F32 S14, =0.7
			VLDR.F32 S20, =-0.1		;BIAS
			VMUL.F32 S12,S12,S15	;summation 
			VMUL.F32 S13,S13,S16
			VMUL.F32 S14,S14,S17
			VADD.F32 S12,S12,S13
			VADD.F32 S14,S14,S12	;power of sigmoid
			VADD.F32 S0,S14,S20
			BL func1
			;you get output at s10
			VCMP.F32 S10,S19
			VMRS APSR_nzcv, FPSCR
			BLE zero2
			B one2
zero2		MOV R0, #0
			B last2

one2		MOV R0, #1
			B last2
			
			;---------
last2		SUB LR, #0x01
		    POP {R8,PC}
            BX lr ; return from subroutine

;-------------
logic_not	PUSH  {R9, LR}		;reg used r9 , input s15-17 output at s18
			;---------
			;w0=0.5;w1=-0.7;
			VLDR.F32 S12, =0.5		;weights w1,w2
			VLDR.F32 S13, =-0.7
			;VLDR.F32 S14, =0.7
			VLDR.F32 S20, =0.1		;BIAS
			VMUL.F32 S12,S12,S15	;summation 
			VMUL.F32 S13,S13,S16
			;VMUL.F32 S14,S14,S17
			VADD.F32 S12,S12,S13
			;VADD.F32 S14,S14,S12	;power of sigmoid
			VADD.F32 S0,S12,S20
			BL func1
			;you get output at s10
			VCMP.F32 S10,S19
			VMRS APSR_nzcv, FPSCR
			BLE zero3
			B one3
zero3		MOV R0, #0
			B last3

one3		MOV R0, #1
			B last3
			
			;---------
last3		SUB LR, #0x01
		    POP {R9,PC}
            BX lr ; return from subroutine
;-------------------
logic_nand	PUSH  {R10, LR}		;reg used r10 , input s15-17 output at s18
			;---------
			;w0=0.6;w1=-0.8;w2=-0.8
			VLDR.F32 S12, =0.6		;weights w1,w2,w3
			VLDR.F32 S13, =-0.8
			VLDR.F32 S14, =-0.8
			VLDR.F32 S20, =0.3		;BIAS
			VMUL.F32 S12,S12,S15	;summation 
			VMUL.F32 S13,S13,S16
			VMUL.F32 S14,S14,S17
			VADD.F32 S12,S12,S13
			VADD.F32 S14,S14,S12	;power of sigmoid
			VADD.F32 S0,S14,S20
			BL func1
			;you get output at s10
			VCMP.F32 S10,S19
			VMRS APSR_nzcv, FPSCR
			BLE zero4
			B one4
zero4		MOV R0, #0
			B last4

one4		MOV R0, #1
			B last4
			
			;---------
last4		SUB LR, #0x01
		    POP {R10,PC}
            BX lr ; return from subroutine
;-------------
logic_nor	PUSH  {R11, LR}		;reg used r11 , input s15-17 output at s18
			;---------
			;w0=0.5;w1=-0.7;w2=-0.7
			VLDR.F32 S12, =0.5		;weights w1,w2,w3
			VLDR.F32 S13, =-0.7
			VLDR.F32 S14, =-0.7
			VLDR.F32 S20, =0.1		;BIAS
			VMUL.F32 S12,S12,S15	;summation 
			VMUL.F32 S13,S13,S16
			VMUL.F32 S14,S14,S17
			VADD.F32 S12,S12,S13
			VADD.F32 S14,S14,S12	;power of sigmoid
			VADD.F32 S0,S14,S20
			BL func1
			;you get output at s10
			VCMP.F32 S10,S19
			VMRS APSR_nzcv, FPSCR
			BLE zero5
			B one5
zero5		MOV R0, #0
			B last5

one5		MOV R0, #1
			B last5
			
			;---------
last5		SUB LR, #0x01
		    POP {R11,PC}
            BX lr ; return from subroutine
;----------------


;-------------
func1	PUSH  {R6, LR}	;sigmoid function output at S10 input S0
        ;--------
		VLDR.F32 S3, =0.0	;COUNTER K
		MOV R5, #0
		VLDR.F32 S4, =0.0	;SUM e
		VLDR.F32 S5, =1.0	;DEN
		VLDR.F32 S6, =1.0	;ii
		VLDR.F32 S7, =0.0 	;ii/DEN
		VLDR.F32 S8, =1.0	;#1
		;------------
		VLDR.F32 S9,  =0.0 	;den
		VLDR.F32 S10, =0.0	;signum function
		VLDR.F32 S11, =1.0	;one
		
	
COMP    CMP R5,R4
		BLT LOOP
		VADD.F32 S9,S4,s11
		VDIV.F32 S10,S4,S9	;S10 HOLDS SIGMOID FN VALUE
		BEQ last
		BGE last

LOOP	VDIV.F32 S7,S6,S5	;II/DEN
		VADD.F32 S4,S4,S7	;SUM
		VMUL.F32 S6,S6,S0	;II	
		VADD.F32 S3,S3,S8	;
		VMUL.F32 S5,S5,S3	;DEN
		ADD R5,R5,#1
		B COMP
		;--------
last	   SUB LR, #0x01
		   POP {R6,PC}
           BX lr ; return from subroutine
;-------------		   


     ENDFUNC
     END 