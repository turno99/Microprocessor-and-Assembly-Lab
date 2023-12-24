/*    AREA test, CODE, READONLY
    ENTRY ; Starting point of code execution
    EXPORT main ; Declaration of identifier "main"
main ; "main" function label
    MOV32 r0, #4294967227 ; store 4294967227 in r0 using 32 bits
    MOV32 r1, #4294966876 ; store 4294966876 in r1 using 32 bits
    AND r2, r0, r1 ; store r0 AND r1 in r2
    ORR r3, r0, r1 ; store r0 OR r1 in r3
    EOR r4, r3, #4294967295 ; store r0 NOR r1 (r3 XOR 2^32 - 1) in r4
    EOR r5, r2, #4294967295 ; store r0 NAND r1 (r2 XOR 2^32 - 1)in r5
    EOR r6, r0, r1 ; store r0 XOR r1 in r6
    EOR r7, r6, #4294967295 ; store r0 XNOR r1 (r6 XOR 2^32 - 1) in r7
Stop B Stop ; Infinite loop
    END ; Program termination*/