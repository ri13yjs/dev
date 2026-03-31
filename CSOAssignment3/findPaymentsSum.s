.global findPaymentsSum

findPaymentsSum:
    push %rbp
    mov %rsp, %rbp

    xor %rax, %rax
    xor %rcx, %rcx

Top:
    cmp %rsi, %rcx
    jge Done

    movl 8(%rdi, %rcx, 4), %r8d

    add %r8, %rax
    inc %rcx
    jmp Top

Done:
pop %rbp
ret
    