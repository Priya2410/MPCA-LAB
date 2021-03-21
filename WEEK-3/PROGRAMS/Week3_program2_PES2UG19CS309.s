.data
A: .word 1,2,3,4,5
B: .word 0,0,0,0,0
.text
LDR R0,=A
LDR R1,=B
MOV R3,#5
LOOP:
	LDR R4,[R0],#4
	STR R4,[R1],#4
	SUB R3,R3,#1
	CMP R3,#0
	BNE LOOP

.end