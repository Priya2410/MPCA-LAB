.data
A: .HWORD 5
B: .HWORD 15
C:.HWORD 
.text
LDR R0,=A
LDR R1,=B
LDR R2,=C
LDRH R3,[R1]
LDRH R4,[R0]
ADD R5,R3,R4
STRH R5,[R2]
.end