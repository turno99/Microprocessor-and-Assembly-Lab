/*	AREA test, CODE, READONLY
	ENTRY ;Starting point of code execution
	EXPORT main ;Declaration of identifier "main"
main 			;"main" function label
	MOV r6, #0xFFFFFFFF ;store 0xFFFFFFFF in r6
	ADDS r6, r6, r6 ; perform addition in r6 and update status register
	MRS r0, APSR ; read flag state into r0
	MRS r1, IPSR ; read exception/interrupt state into r1
	MRS r2, EPSR ; read execution state into r2
Stop B Stop
	END*/