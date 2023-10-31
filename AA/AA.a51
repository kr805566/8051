
        ORG     0000H
START:  MOV     DPTR,#TABLE
        MOV     R3,#10
;
LOOP:   MOV     R2,#100
SCAN:   ACALL   SCAN1
        DJNZ    R2,SCAN
;
        INC     DPTR
        INC     DPTR
        INC     DPTR
        INC     DPTR
        INC     DPTR
	  INC     DPTR
	  INC     DPTR
	  INC     DPTR
;
        DJNZ    R3,LOOP
        AJMP    START
;
SCAN1:  MOV     R1,#00H
        MOV     R5,#11111110B
        MOV     R4,#08
;
LOOP1:  MOV     A,R1
        MOVC    A,@A+DPTR
;
        MOV     P0,A
        MOV     P1,R5
;
        MOV     R6,#5
DL1:    MOV     R7,#200
DL2:    DJNZ    R7,DL2
        DJNZ    R6,DL1
;
        ORL     P1,#11111111B
;
        MOV     A,R5
        RL      A
        MOV     R5,A
        INC     R1
        DJNZ    R4,LOOP1
        RET
; 0
TABLE:  
	  DB      10000011B
	  DB      01111101B
        DB      01111101B
	  DB      01111101B
	  DB      10000011B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B


;1	 
	  DB      11111111B
	  DB      11111101B
	  DB      00000001B
	  DB      10111101B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 2
        DB      11111101B
	  DB      10001101B
	  DB      01110101B
	  DB      01111001B
	  DB      10111101B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 3
        DB      00110011B
	  DB      01001101B
	  DB      01101101B
	  DB      01111001B
	  DB      01111011B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 4
        
	  DB      11110111B 
	  DB      00000001B	
	  DB      10110111B
	  DB      11010111B
	  DB      11100111B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 5
        DB      01100011B
	  DB      01011101B
	  DB      01011101B
	  DB      01011101B
	  DB      00011011B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 6
        DB      11110011B
	  DB      01101101B
	  DB      01101101B
	  DB      10101101B
	  DB      11000011B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 7
        DB      00111111B
	  DB      01011111B
	  DB      01100001B
	  DB      01111111B
	  DB      01111111B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 8
        DB      10010011B
	  DB      01101101B
	  DB      01101101B
	  DB      01101101B
	  DB      10010011B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B
; 9
        DB      10000111B
	  DB      01101011B
	  DB      01101101B
	  DB      01101101B
	  DB      10011111B
	  DB      11111111B
	  DB      11111111B
	  DB      11111111B

;
        END
