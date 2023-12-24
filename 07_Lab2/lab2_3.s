/*	AREA test3, CODE, READONLY
    ENTRY ; Starting point of code execution
    EXPORT main ; Declaration of identifier "main"
main ; address of the main3 function
    MOVW r2, #0xFFFF ; storing half-word in $r1
    MOVW r3, #0xFFFF ; storing half-word in $r2
    ADD r1, r2, r3 ; storing the sum of values in $r1 and $r2 
	MOV r0, r1; copying the content of r1 to r0 for checking overflow
    MOVT r0, #0 ; padding up with 0's to convert to 32 bit
Stop B Stop ; Infinite loop
    END ; Program termination*/