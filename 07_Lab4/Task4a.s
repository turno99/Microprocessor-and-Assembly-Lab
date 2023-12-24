/*    AREA task4a, CODE, READONLY
    ENTRY                 ;Starting point of code execution
    EXPORT main            ;Declaration of identifier "main"
main                    ;"main" function label
    LDR r1, =S ; store the reference to S in r1
    LDR r1, [r1] ; store the content of S in r1
Stop B Stop
    AREA task4aData, DATA, READWRITE, ALIGN=4
S     DCB      "ABCD"  ; string S declared, with value "ABCD"
    END*/