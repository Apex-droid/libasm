global        _ft_strcpy

section        .text

_ft_strcpy:
    xor        rcx, rcx
    xor        rax, rax
_loop:
    mov        al, [rsi + rcx]
    cmp        al, byte 0
    je        .exit
    mov        [rdi + rcx], al
    inc        rcx
    jmp        _loop

.exit:
    mov        [rdi + rcx], byte 0
    mov        rax, rdi
    ret
