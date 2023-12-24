/*    AREA task4b, CODE, READONLY
    ENTRY                 ;Starting point of code execution
    EXPORT main            ;Declaration of identifier "main"
main                    ;"main" function label
    LDR r1, =S ; store the reference to S in r1
    MOV r2, r1 ; store the content of s in r2
L   LDRB r0, [r2] ; load next character of string in r0
    CMP r0, #0 ;compare it with terminating character 
    BEQ L1 ;if equal, break loop
    ADD r2, r2, #1 ; move the pointer to string forward
    B L ; continue iterating
L1  SUB r2, r2, #1 ;last index of string
L2  CMP R1, R2 ;compare two indexes
    BHS L3 ; if left index >= right index then finished
    LDRB R0, [R1] ; swap left and right character
    LDRB R3, [R2] ;
    STRB R0, [R2] ;
    STRB R3, [R1] ;
    ADD R1, R1, #1 ;move the left index to the right
    SUB R2, R2, #1 ;move the right index to the left
    B L2 ; continue iterating
L3 ;
Stop B Stop
    AREA task4bData, DATA, READWRITE, ALIGN=4
S     DCDU     0x41424344, 0x00  ; 0-terminated 'DCBA' string stored in S
    END*/