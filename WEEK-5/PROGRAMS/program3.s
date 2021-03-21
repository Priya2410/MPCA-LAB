data
srcstr:.asciz "PESU"
dststr:.asciz "aaaa"
.text
LDR R1,=srcstr
LDR R2,=dststr
LOOP:	LDRB R3,[R1],#1
	CMP R3,#0
	BEQ EXIT
	STRB R3,[R2],#1
B LOOP
EXIT:SWI 0X11
.end
