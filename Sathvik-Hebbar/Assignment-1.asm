global _start

section .data
    n dw 11

section .text
_start:
    xor ecx, ecx
    mov ebx, 1
    mov edx, 1
    cmp edx, [n]
    je _special
    inc edx
    cmp edx, [n]
    je safe_exit
    inc edx

_compute_fibonacci:
    mov eax, ebx
    add ebx, ecx
    mov ecx, eax
    cmp edx, [n]
    je safe_exit
    inc edx
    jmp _compute_fibonacci

_special:
    mov ebx, ecx

safe_exit:
    mov eax, 1
    int 0x80