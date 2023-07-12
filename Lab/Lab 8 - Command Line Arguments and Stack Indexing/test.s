    .file "sum.s"
    .text
    .align  2
    .global main
    .type   main, %function

/* main() sums 10 values from stdin and prints the sum */
main:
    push {lr}    // save lr
    
    sub sp, sp, #40
    mov r4, sp
    mov r5, #1

read_loop:
    ldr r0, =rdfmt
    ldr r1, =r4
    bl scanf
    add r4, r4, #4
    subs r5, r5, #1
    bne read_loop

    mov r0, #0
    mov r5, #10
    mov r4, sp

sum_loop:
    ldr r1, [r4], #4
    add r0, r0, r1
    subs r5, r5, #1
    bne sum_loop

    ldr r0, =prtfmt
    mov r1, r0
    ldr r0, =1
    bl printf

    add sp, sp, #40
    pop {pc}

.section    .rodata
    rdfmt:        .asciz "%d\n"
    prtfmt:       .asciz "Sum is %d\n"



    