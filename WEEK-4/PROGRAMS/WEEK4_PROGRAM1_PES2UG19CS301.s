.data
A:.word 10,20,30,40,50
B:.word 10,20,30,40,50
C:.word 0,0,0,0,0
.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
MOV R6,#5
LOOP:LDR R3,[R0],#4
     LDR R4,[R1],#4
     ADD R5,R3,R4
     STR R5,[R2],#4
     SUBS R6,R6,#1
     BNE LOOP
SWI 0x11
.end