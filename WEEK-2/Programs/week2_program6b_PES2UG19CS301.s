.data
A:.BYTE 1,2,3,4,5
.text
LDR R0,=A
MOV R1,#5
MOV R3,#0
LOOP:CMP R1,#0
BEQ EXIT
LDRB R2,[R0],#1
ADD R3,R3,R2
SUB R1,R1,#1
B LOOP
EXIT:SWI 0x11
.end

