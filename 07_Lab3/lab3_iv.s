/*	AREA test, CODE, READONLY
    ENTRY ; Starting point of code execution
    EXPORT main ; Declaration of identifier "main"
main ; "main" function label
    MOV32 r0, #4294967295 ; store 4294967295 in r0 using 32 bits
    LSR r1, r0, #2 ; store r0 logically shifted right by 2 bits in r1
    ASR r2, r0, #2 ; store r0 arithmetically shifted right by 2 bits in r2
    LSL r3, r0, #2 ; store r0 logically shifted left by 2 bits in r3
Stop B Stop ; Infinite loop
    END ; Program termination*/