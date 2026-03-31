.global findSalariesSum

findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %rax
    mov $0, %rcx

Top:
    cmp %rsi, %rcx
    jge Done

    movl 8(%rdi) %eax
    add %rdx, %rcx
    inc %rcx
    jmp Top

Done:
    pop %rbp
    ret


