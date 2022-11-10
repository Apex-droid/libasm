
global        _ft_strcmp

section     .text
_ft_strcmp:
    xor     rax, rax
    xor     rdx, rdx

.compare:
    mov     al, byte [rdi]
    mov     dl, byte [rsi]
    cmp     al, byte 0
    je      .stope
    cmp     dl, byte 0
    je      .stope
    inc     rdi
    inc     rsi
    cmp     al, dl
    jne     .stope
    jmp     .compare

.stope:
    sub      rax, rdx
    ret
