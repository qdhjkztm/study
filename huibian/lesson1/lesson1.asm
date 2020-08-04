section .data
msg:
    db "hello, world", 10
len equ $-msg

section .text
global main
main:
    mov edx, len
    mov ecx, [0]
    mov ebx, 1
    mov eax, 4 ;直接使用sys_write系统调用
    int 0x80

    mov ebx, 0
    mov eax, 1
    int 0x80
