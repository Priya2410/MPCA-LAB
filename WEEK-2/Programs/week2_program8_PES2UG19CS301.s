.data
A:.word 50
B:.word 19
C:.word
.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
LDR R3,[R0]
LDR R4,[R1]
ADD R5,R3,R4
MOV R8,R4,LSL #2
ADD R6,R4,R8
ADD R7,R6,R5
STR R7,[R2]
.end