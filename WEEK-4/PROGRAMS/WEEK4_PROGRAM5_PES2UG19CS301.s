.data
A: .WORD 1,2,3,4,5,6,7,8,9
B: .WORD 1,2,3,4,5,6,7,8,9
C: .WORD 0,0,0,0,0,0,0,0,0

.text 
LDR R0, =A
LDR R1, =B
LDR R2, =C

MOV R3, #0;
MOV R4, #3; 
MOV R5, #0; 
MOV R9, #9;
LOOP:
	MLA R10, R3, R4, R5
	LDR R6, [R0, R10, LSL #2]
	LDR R7, [R1, R10, LSL #2]
	ADD R8, R7, R6
	STR R8, [R2], #4
	ADD R5, R5, #1 
	SUBS R9, R9, #1
	CMP R5, #3
	BEQ ALT
	BNE LOOP
	SWI 0X11
ALT:
	MOV R5, #0
	ADD R3, R3, #1
	CMP R9, #0
	BNE LOOP
	SWI 0X11