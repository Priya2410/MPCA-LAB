.text
MOV r1,#5
ANDS r2,r1,#1 @To update the flags of CPSR register
BEQ label
MOV r0,#255
B exit
label:MOV r0,#0
exit:SWI 0x11
.end