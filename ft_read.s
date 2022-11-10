
global _ft_read

extern  ___error
section .text

_ft_read:
    mov     rax, 0x2000003
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
