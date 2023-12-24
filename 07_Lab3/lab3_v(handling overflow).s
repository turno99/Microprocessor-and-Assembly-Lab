	AREA task, CODE, READONLY
    ENTRY ; Starting point of code execution
    EXPORT main ; Declaration of identifier "main"
main  ; "main" function label
    MOV32 r0, #4294967294 ; store 4294967294 in r0    
    MOV32 r1, #3; store 3 in r1            
    MOV r2, #0; initialize r2 with 0                
    MOV r3, #0; initialize r3 with 0                
    MOV r4, #0; initialize r4 with 0                
    ADDS r5, r0, r1; store r0 ADD r1 in r5 and set the status registers            
    MOVCS r2, #1 ;set r2 = 1 in case of overflow           
    SUBS r6, r0, r7; store r0 SUB r1 in r6 and set the status registers            
    MOVCC r3, #1 ;set r3 = 1 in case of overflow           
    UMULL r7, r8, r0, r1; store r0 unsigned MUL r1 in r7 and r8 (32 bits each) and set the status registers    
    CMP  r8, #0 ;check if overflow occurred using last 32 bits               
    MOVNE r4, #1  ;set r4 = 1 in case of overflow          
Stop B Stop ; Infinite loop
    END ; Program termination
