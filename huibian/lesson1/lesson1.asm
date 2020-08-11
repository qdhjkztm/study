section .data
msg:
    db "hello, world", 10
len equ $-msg

section .text
global main
main:
    mov rdx, len
    mov rcx, 'hello'
    mov rbx, 1
    mov rax, 4 ;直接使用sys_write系统调用
    int 0x80

    mov rbx, 0
    mov rax, 1
    int 0x80
