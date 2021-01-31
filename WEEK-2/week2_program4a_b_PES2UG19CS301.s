.data
A: .WORD 10
B: .WORD 25
C:.WORD 
.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
LDR R3,[R1]
LDR R4,[R0]
ADD R5,R3,R4
STR R5,[R2]
.end