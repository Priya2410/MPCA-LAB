.text
MOV R0,#-4
CMP R0,#0
BEQ label
BMI label2
MOV R1,#2
B exit
label:MOV R1,#1
B exit
label2:MOV R1,#3
exit:SWI 0x011
.end