.text
MOV R0,#10
MOV R1,#15
MOV R2,R0
MOV R3,R1
LOOP:CMP R2,R3
BEQ EXIT
BLT LABEL1
SUB R2,R2,R3
B LOOP
LABEL1:SUB R3,R3,R2
B LOOP
EXIT:SWI 0x11