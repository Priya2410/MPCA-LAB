.data
A:.word 10,20,30,40,50
B:.word 10,20,30,40,50
.text
LDR R0,=A
LDR R1,=B
MOV R2,#5
MOV R5,#0
LOOP:   LDR R3,[R0],#4
        LDR R4,[R1],#4
        MUL R6,R3,R4
        ADD R5,R5,R6
        SUBS R2,R2,#1
        BNE LOOP
SWI 0x11
.end