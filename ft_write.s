
global _ft_write

extern  ___error
section .text

_ft_write:
    mov     rax, 0x2000004
    syscall
    jc      .err
    ret

.err:
    push    rbp
    mov     rbp, rax
    call    ___error
    mov     [rax], rbp
    mov     rax, -1
    pop     rbp
    ret
