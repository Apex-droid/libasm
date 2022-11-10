global        _ft_strdup
extern        _ft_strlen
extern        _ft_strcpy
extern        _malloc

section        .text
_ft_strdup:
    call       _ft_strlen
    xor        rcx, rcx
    inc        rax
    push       rdi
    mov        rdi, rax
    call       _malloc
    mov        rcx, rdi
    pop        rdi
    mov        rsi, rdi
    mov        rdi, rax
    call       _ft_strcpy
    mov        [rax + rcx], byte 0
    ret
