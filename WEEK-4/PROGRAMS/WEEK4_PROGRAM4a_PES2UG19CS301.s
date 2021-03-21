.data

    A: .word 10,20,30,40,50,60
    B: .word 

.text

    LDR R0, =A
    LDR R1, =B

    MOV R2, #2      ;No of rows
    MOV R3, #3      ;No of columns

    loop1:
        loop2:
            LDR R4, [R0], #4
            STR R4, [R1], #4

            SUB R3, R3, #1
            CMP R3, #0
                BNE loop2
        
        SUB R2, R2, #1
        CMP R2, #0
            MOVNE R3, #3
            BNE loop1 

.end