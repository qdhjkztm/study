section .data
section .text
global main
main:
    mov     ecx,'aaa'
    push    rcx
    mov     ecx,esp
    mov     edx,3
    mov     eax,4
    mov     ebx,1
    int     80h

    mov     ebx, 0      ; return 0 status on exit - 'No Errors'
    mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
    int     80h