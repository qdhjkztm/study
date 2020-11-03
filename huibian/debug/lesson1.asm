section .data
section .text
global main
main:
    mov     ecx,'aaa'
    push    ecx
    mov     ecx,esp
    mov     edx,3
    mov     eax,4
    mov     ebx,1
    int     80h