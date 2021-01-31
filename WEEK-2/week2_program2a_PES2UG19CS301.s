.text
MOV R0,#5
MOV R1,#6
CMP R0,R1
BEQ label
SUB R2,R1,R0
B exit
label:ADD R2,R0,R1
exit:SWI 0x011
.end