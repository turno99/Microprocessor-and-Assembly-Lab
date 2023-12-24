/*    AREA test, CODE, READONLY
    ENTRY ; Starting point of code execution
    EXPORT main ; Declaration of identifier "main"
main ; "main" function label
    MOVW r0, #3 ; store 3 in r0 using 16 bits
    MOVW r1, #7 ; store 7 in r1 using 16 bits
    AND r2, r0, r1 ; store r0 AND r1 in r2
    ORR r3, r0, r1 ; store r0 OR r1 in r3
    EOR r4, r3, #4294967295 ; store r0 NOR r1 (r3 XOR 2^32 - 1) in r4
    MOVT r4, #0 ; fill up upper 16 bits with 0's to keep result in 16 bit
    EOR r5, r2, #4294967295 ; store r0 NAND r1 (r2 XOR 2^32 - 1)in r5
    MOVT r5, #0 ; fill up upper 16 bits with 0's to keep result in 16 bit
    EOR r6, r0, r1 ; store r0 XOR r1 in r6 
    EOR r7, r6, #4294967295 ; store r0 XNOR r1 (r6 XOR 2^32 - 1) in r7
    MOVT r7, #0 ; fill up upper 16 bits with 0's to keep result in 16 bit
Stop B Stop ; Infinite loop
    END ; Program termination*/