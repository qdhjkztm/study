section .data
section .text
global main
main:
    mov     rcx,1234h
    push    rcx
    mov     rcx,rsp
    mov     rdx,3
    mov     rax,4
    mov     rbx,1
    int     80h

    mov     rbx, 0      ; return 0 status on exit - 'No Errors'
    mov     rax, 1      ; invoke SYS_EXIT (kernel opcode 1)
    int     80h