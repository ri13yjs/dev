.global compareAges

compareAges:
    push %rbp
    mov %rsp, %rbp

    cmp %rdi, %rsi

    je Equal 
    jl SecondGreater
    jg FirstGreater


Equal:
    mov $1, %rax
    jmp Done
FirstGreater:
    mov $0, %rax
    jmp Done
SecondGreater:
    mov $0, %rax
    jmp Done

Done:
    pop %rbp
    ret

