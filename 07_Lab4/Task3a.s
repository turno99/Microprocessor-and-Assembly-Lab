/*    AREA task3a, CODE, READONLY
    ENTRY                 ;Starting point of code execution
    EXPORT main            ;Declaration of identifier "main"
main                    ;"main" function label
    LDR r5, =S          ;loads initial sum(0) in r5 
	LDR r5, [r5]        ;loads into the register r5 from the address in r5
	LDR r4, =F          ;stores endpoint of loop(10) in r4
	LDR r4, [r4]		;loads into the register r4 from the address in r4
    MOV r3, #1			;store i = 1 in register r3
loop 
    MUL r2, r3, r3      ;stores the value of i*i (stored in r3) in r2
    ADD r5, r5, r2		;adds the value of r2 in r5
    ADD r3, r3, #1 		;sets i = i+1
    CMP r4, r3          ;finds r54-r3 & sets flag value
    BGE loop            ;if i<=10, continue loop 
	LDR r1, =S			;store resultant sum in r1
    STR r5, [r1]		;store the sum in r5 from 
Stop B Stop
    AREA task3aData, DATA, READWRITE, ALIGN=4
S     DCD     0             ;create variable S with initial value 0
F     DCD     10            ;create variable F with initial value 10
    END*/