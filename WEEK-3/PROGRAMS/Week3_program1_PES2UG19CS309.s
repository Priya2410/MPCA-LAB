.data
	a: .word 34281722, 19102233 
	b: .word 98764532, 63547281
	c: .word 0
.text
	LDR R0,=a
	LDR R1,=b
	LDR R2,=c
	LDR R4,[R0],#4
	LDR R5,[R1],#4
	ADDS R4,R4,R5
	STR R4,[R2],#4
	LDR R4,[R0]
	LDR R5,[R1]
	ADC R4,R4,R5
	STR R4,[R2]
.end
