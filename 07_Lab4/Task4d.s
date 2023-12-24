/*    AREA task4b, CODE, READONLY
    ENTRY                 ;Starting point of code execution
    EXPORT main            ;Declaration of identifier "main"
main                    ;"main" function label
    LDR r0, =A 			;store the reference to A string in r0
    LDR r1, =B 			;store the reference to B string in r1
L   LDRB r2, [r0]		;store the current character of A in r2
    LDRB r3, [r1]		;store the current character of B in r3
    ORR r6, r2, r3		;OR the characters
    CMP r6, #0			;if their OR sum is zero, both are terminated
    BEQ Stop			;both strings are empty, break loop
    ADD r0, r0, #1		;move the pointer to A string forward
    ADD r1, r1, #1		;move the pointer to B string forward
    CMP r2, r3			;compare the two characters
    BEQ L				;if they are equal, continue iterating
    MOVLT r4, #1		;if r2<r3, store 1 in r4
    MOVGT r5, #1		;if r2>r3, store 1 in r5
Stop B Stop
    AREA task4dData, DATA, READWRITE, ALIGN=4
A    DCB      "ABCDE", 0  ; 'ABCDE' stored in A with terminating 0
B    DCB        "ABCZ", 0  ; 'ABCZ' stored in B with terminating 0
    END*/