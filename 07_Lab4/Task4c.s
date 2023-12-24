/*    AREA task4c, CODE, READONLY
    ENTRY                 ;Starting point of code execution
    EXPORT main            ;Declaration of identifier "main"
main                    ;"main" function label
    LDR r4, =S ;store the reference to S in r4
    LDR r0, =0 ; store 0 in r0
    LDR r1, =S ; store the content of S in r1
L   LDRB r2, [r1] ; load next character of string in r2
    CMP r2, #0 ; compare current character with 0
    BEQ L1 ; if equal, break loop
    ADD r0, r0, #1 ; add 1 to length
    ADD r1, r1, #1 ; move the pointer to the string forward
    B    L ; continue iterating
L1
    LDR r3, =LEN ;store the reference to LEN variable in r3
    STR r0, [r3] ; store the value of length in LEN
Stop B Stop
    AREA task4cData, DATA, READWRITE, ALIGN=4
S     DCDU     0x44434241, 0x00000045 ; store 0-terminated 'ABCDE' in S
LEN DCDU     0 ; declare the variable for length
    END*/