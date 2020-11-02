section .data
section .text
global main
main:
    mov     eax,1000h
    mov     ebx,eax
    add     ebx,eax
    add     eax,ebx
    push    eax
    pop     eax
    mov     eax,[0]
    mov     ds,0