.data
A:.asciz "Hello World"
B:.asciz "l"
.text
LDR R0,=A
LDR R2,=B
LDR R1,[R2]
MOV R5,#0
LOOP:	LDRB R4,[R0],#1
	CMP R4,R1
	ADDEQ R5,R5,#1
	CMP R4,#0
	BEQ EXIT
B LOOP
EXIT:SWI 0X11
.end

