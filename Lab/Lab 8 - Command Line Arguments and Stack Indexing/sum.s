//Cameron Lawenrence
//CPSC 2310 001
//Lab8 - Command Line Arguments and Stack Indexing
//June 13 2023 
    .file "sum.s"
    .text
    .align  2
    .global main
    .type   main, %function


main:
    push {lr}    
    
    sub sp, sp, #40
	
	mov r5, #1
	mov r4, sp

	loop:
		 cmp r5, #10
		 bgt finishloop
		 ldr r0, =rdfmt
		 mov r1, r4
		 bl scanf
//look back lab4		 
		 add r5, r5, #1
		 add r4, r4, #4
		 
		 b loop

//needs to be registers 0, 0 , 1
    finishloop:
		 mov r5, #1
		 mov r3, #0
		 mov r2, #0
		
    last:
		 cmp r5, #10
		 bgt done
		 
		 ldr r1, [sp, r3]
		 
		 add r2, r2, r1
		 add r3, r3, #4
		 add r5, r5, #1
		 
		 b last

    done:
		 add sp, sp, #40
		 ldr r0, =prtfmt
		 
		 mov r1, r2
		 bl printf

    pop {pc}             

.section    .rodata
    rdfmt:        .asciz "%d"
    prtfmt:       .asciz "sum is %d\n"






	
