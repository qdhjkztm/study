section .data
section .text
global main
main:
    mov     eax,'aaa'
    mov     ebx,eax
    add     ebx,eax
    add     eax,ebx
    push    rax
    mov     eax,[0]
    inc     eax
    add     eax,eax