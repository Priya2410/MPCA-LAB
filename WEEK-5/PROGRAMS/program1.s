.data
str:.asciz "PRIYA"
.text
LDR R1,=str
LOOP:	LDRB R0,[R1],#1
	CMP R0,#0
	BEQ EXIT
	SWI 0X00
	B LOOP
EXIT:SWI 0X11
.end
