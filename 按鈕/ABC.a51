	ORG	0000H


LOOP:	
	


	MOV	P1,#00001101B
	JNB	P2.0,KEY4
	JNB	P2.1,KEY5
	JNB	P2.2,KEY6
	JNB	P2.3,KEY7

	MOV	P1,#00001011B
	JNB	P2.0,KEY8
	JNB	P2.1,KEY9
	JNB	P2.2,KEYA
	JNB	P2.3,KEYB

	MOV	P1,#00000111B
	JNB	P2.0,KEYC
	JNB	P2.1,KEYD
	JNB	P2.2,KEYE
	JNB	P2.3,KEYF
	
	MOV	P1,#00001110B
	JNB	P2.0,KEY0
	JNB	P2.1,KEY1
	;JNB	P2.2,KEY2 ;�����a��
	JNB	P2.3,KEY3
	
	AJMP	LOOP









KEY0:	MOV	R6,#126
	AJMP	OUTPUT

KEY1:	MOV	R6,#113
	AJMP	OUTPUT

KEY2:	MOV	R6,#100
	AJMP	OUTPUT

KEY3:	MOV	R6,#95
	AJMP	OUTPUT

KEY4:	MOV	R6,#85
	AJMP	OUTPUT
KEY5:	MOV	R6,#75
	AJMP	OUTPUT
KEY6:	MOV	R6,#67
	AJMP	OUTPUT
KEY7:	MOV	R6,#63
	AJMP	OUTPUT




KEY8:	MOV	P0,#00001000B
	AJMP	LOOP
KEY9:	MOV	P0,#00001001B
	AJMP	LOOP
KEYA:	MOV	P0,#00001010B
	AJMP	LOOP
KEYB:	MOV	P0,#00001011B
	AJMP	LOOP
KEYC:	MOV	P0,#00001100B
	AJMP	LOOP
KEYD:	MOV	P0,#00001101B
	AJMP	LOOP
KEYE:	

	MOV	P0,#10000000B
	ACALL   DELAY
	ACALL   DELAY
	ACALL   DELAY
	ACALL   DELAY


	MOV	P0,#01000000B
	ACALL   DELAY
	MOV	P0,#00000000B
	ACALL   DELAY
	MOV	P0,#01000000B
	ACALL   DELAY
	MOV	P0,#00000000B
	ACALL   DELAY


	MOV	P0,#00100000B

	ACALL   DELAY
	ACALL   DELAY
	ACALL   DELAY
	ACALL   DELAY


	AJMP	KEYE




KEYF:	MOV	R6,#126
	AJMP	OUTPUT2

OUTPUT: CLR     P2.6
        ACALL   DELAY1
        SETB    P2.6
        ACALL   DELAY1
        AJMP    LOOP

OUTPUT2: CLR     P2.6
        ACALL   DELAY1
        SETB    P2.6
        ACALL   DELAY1
        AJMP    OUTPUT2


DELAY1: MOV     B,R6
DL:     MOV     R7,#6
        DJNZ    R7,$
        DJNZ    R6,DL
        MOV     R6,B
        RET
	

DELAY: MOV	R5,#2
DL1:	 MOV	R6,#250
DL2:	 MOV	R7,#200
DL3:	 DJNZ	R7,DL3
	 DJNZ	R6,DL2
	 DJNZ	R5,DL1
	 RET




END
	