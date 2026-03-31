.global findSalariesSum

findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %rax
    mov $0, %rcx

Top:
    cmp %rsi, %rcx
    jge Done

    movl 8(%rdi), %edx
    addq %rdx, %rax
    addq $12, %rdi
    inc %rcx
    jmp Top

Done:
    pop %rbp
    ret


