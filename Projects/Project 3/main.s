//Cameron Lawrence
//CPSC 2310 001
//Assignment 3 - Subroutines and Parameters
//June 16th 2023

.global main

main:
	push {lr}

	mov r4, r1 
	ldr r0, [r4, #4]
//change command line strings to integers	
    bl atoi
	mov r5, r0 

	ldr r0, [r4, #8]
//change command line strings to integers		
    bl atoi
	mov r6, r0 

	ldr r0, [r4, #12]
//change command line strings to integers		
    bl atoi
	
    mov r7, r0
	mov r2, r7 
    mov r1, r6 
	mov r0, r5 
	bl offset

	mov r3, r0
	ldr r0, = last
	
    mov r2, r6
	mov r1, r5
	bl printf

	pop {pc}

last: 
	.ascii "the offset for a[%d][%d] is %d\n"

