/*    AREA task3b, CODE, READONLY
    ENTRY ; Starting point of code execution
    EXPORT main ; Declaration of identifier "main"
main ; "main" function label
    LDR r0, =B ; //loads the length one side of the triangle
    LDR r0, [r0] ; //loads the value from memory into the register r0
    LDR r1, =C ; //loads the length of the other side of the triangle
    LDR r1, [r1] ; // loads the value from memory into the register r1
    MUL r0, r0, r0 ;stores the squared value of the length of one side
    MUL r1, r1, r1 ;stores the squared value of the length of the other side
    MOV r2, r0 ; moves the squared value of one side into the register r2
    ADD r2, r1; calculates the sum of the squared lengths of the two sides
    LDR r3, =A ;the reference to the result variable is stored in r3
    STR r2, [r3] ; the result is stored into memory
    B Stop
Stop B Stop ; Infinite loop
    AREA data3b, DATA, READWRITE, ALIGN=4
B    DCDU    5 ; 
C    DCDU    12 ; 
A    DCDU    0 ;
    END*/