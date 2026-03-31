.global findPaymentsSum

findPaymentsSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %rax
    mov $0, %rcx

Top:
    cmp %rsi, %rcx
    jge Done

    mov %rcx, %rdx
    imul $12, %rdx
    movl 8(%rdi, %rdx), %r8d

    add %r8, %rax
    inc %rcx
    jmp Top

Done:
pop %rbp
ret
    