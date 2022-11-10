global  _ft_strlen

section        .text

_ft_strlen:
    xor     rax, rax
_loop:
    cmp     [rdi + rax], byte 0
    je      .stop
    inc     rax
    jmp     _loop

.stop:
    ret
