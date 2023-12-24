/*    AREA test, CODE, READONLY
    ENTRY ; Starting point of code execution
    EXPORT main ; Declaration of identifier "main"
main ; "main" function label
    MOVW r0, #5 ; store 5 in r0 using 16 bits
    MOVW r1, #3 ; store 3 in r1 using 16 bits
    ADD r2, r0, r1 ; store r0 ADD r1 in r2
	SUB r3, r0, r1 ; store r0 SUB r1 in r3
	MUL r4, r0, r1 ; store r0 MUL r1 in r3
Stop B Stop ; Infinite loop
    END ; Program termination*/