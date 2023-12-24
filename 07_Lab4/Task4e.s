    AREA task4e, CODE, READONLY
    ENTRY                 ;Starting point of code execution
    EXPORT main            ;Declaration of identifier "main"
main                    ;"main" function label
    LDR r0, =A 			;store A string in r0
    LDR r1, =B  		;store B string in r1
    LDR r6, =C			;store C string in r6
    MOV r5, #0			;store 0 in r5
L    LDRB r2, [R0]		;loop for iterating over A string
    CMP r2, #0			;compare current character with terminating character
    BEQ    L1			;if equal, break loop
    STRB r2, [r6]		;store current character in C
    ADD r0, r0, #1		;move the pointer in A forward
    ADD r6, r6, #1		;move the pointer in C forward
    B L					;iterate
L1     LDRB r3, [r1]	;loop for iterating over B string
    CMP r3, #0			;compare current character with terminating character
    BEQ    L2			;if equal, break loop
    STRB r3, [r6]		;store current character in C
    ADD r1, r1, #1		;move the pointer in B forward
    ADD r6, r6, #1		;move the pointer in C forward
    B L1				;iterate
L2    STRB r5, [r6]		;store the resultant string in r5
Stop B Stop
    AREA task4eData, DATA, READWRITE, ALIGN=4
A     DCB      "ABCDE", 0  ; 'ABCDE' stored in A with terminating 0
B    DCB        "ABCZ", 0  ; 'ABCZ' stored in B with terminating 0
C    DCB        ""		   ;  empty string stored in C, for storing the result

    END