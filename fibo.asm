section .text
section .data
global _start
_start:
    mov     eax, 1
    mov     ecx, 0
    mov     edx, 1
    cmp     eax, 1
    je  l1
    cmp     eax, 2
    je l2
fibonacci:
    add     edx, ecx
    mov     ebx, edx
    sub     edx, ecx
    mov     ecx, edx
    mov     edx, ebx
    dec     eax
    cmp     eax, 2
    jg fibonacci
    mov     eax, 1
    int     0x80
l2:
    mov     ebx, 1
    mov     eax, 1
    int     0x80

l1:
    mov     ebx, 0
    mov     eax, 1
    int     0x80