/*	AREA test, CODE, READONLY
    ENTRY ; starting point of the code execution
    EXPORT main ; the declaration of identifier main
main ; address of the main function
    MOV r4, #X ; load X = 9 into r4
    MOV r3, #Y ; load Y = 8 into r3
	MOV r2, #Z ; load Z = 2 into r2
    ADD r1, r4, r3 ; store X + Y in r1
	ADD r1, r1, r2 ; store (X + Y) + Z in r1
Stop B Stop ; Endless loop
X    EQU 9
Y    EQU 8
Z    EQU 5
    END ; End of the program, matched with ENTRY keyword*/