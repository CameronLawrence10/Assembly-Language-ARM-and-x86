//Cameron Lawrence
//CPSC 2310 001
//Assignment 3 - Subroutines and Parameters
//June 16th 2023

/* -------- REGISTER INDICATIONS for offset ----------
Inputs from user     r0 = i     r1 = j    r2 = n with r0 being the offset/return 

Calculations/Math = r4 and r5. Then r6 = 4, for offset equation                */


.global offset

offset:
//register 4 through 6	
	push {r4-r6, lr}

	mov r6, #4
	mov r4, #0
	mov r5, #0
	
	add r4, r0, #1 
	mul r4, r2 
	add r5, r1, #1 
	sub r5, r2, r5 
//don't forget register declarations	
	sub r5, r4, r5
	mul r5, r6
	sub r5, r5, r6
	mov r0, r5

	pop {r4-r6, pc}
  


