data
str:.asciz "Hello World"
.text
LDR R0,=str
MOV R1,#0 
LOOP:	LDRB R2,[R0],#1
	CMP R2,#0
	BEQ EXIT
	ADD R1,R1,#1
	B LOOP
EXIT:SWI 0X11
.end
