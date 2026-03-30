.global sumOfPowers

sumOfPowers: 
    push %rbp
    mov %rsp, %rbp

    mov %rdi, %rbx
    mov $0, %rax
    mov $1, %rcx

Top:
    #comparison input, iterator
    cmp %rbx, %rcx
    jg Done

    mov %rcx, %rdx
    imul %rdx, %rdx
    add %rdx, %rax

    inc %rcx
    jmp Top

Done:
    pop %rbp
    ret
    





