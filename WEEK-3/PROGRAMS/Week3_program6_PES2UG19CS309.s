.data
A: .word 0

.text
MOV R0,#8
LDR R1,=A
MOV R2,#0
MOV R3,#1
STR R3,[R1],#4
LOOP:
	ADD R4,R2,R3
	MOV r2,r3
	MOV r3,r4
	STR R4,[R1],#4
	SUBS R0,R0,#1
	CMP r0,#0
	BNE LOOP
SWI 0x011
.end