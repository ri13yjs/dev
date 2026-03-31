.global compareAges

compareAges:
    push %rbp
    mov %rsp, %rbp

    movl 4(%rdi), %eax
    movl 4(%rsi), %edx

    cmpl %eax, %edx

    je Equal 
    movq $0, %rax
    jmp Done


Equal:
    mov $1, %rax
    jmp Done


Done:
    pop %rbp
    ret

