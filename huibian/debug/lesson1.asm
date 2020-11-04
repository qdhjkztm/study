section .data
section .text
global main
main:
    mov     rcx,0
    mov     rax,rcx
    add     rax,48
    push    rax         ; push the linefeed onto the stack so we can get the address
    mov     rax, rsp    ; move the address of the current stack pointer into rax for sprint
    call    sprint
quit:
    mov     rbx, 0
    mov     rax, 1
    int     80h
    ret
slen:
    push    rbx
    mov     rbx, rax
 
nextchar:
    cmp     byte [rax], 0
    jz      finished
    inc     rax
    jmp     nextchar
 
finished:
    sub     rax, rbx
    pop     rbx
    ret
 
 
;------------------------------------------
; void sprint(String message)
; String printing function
sprint:
    push    rdx
    push    rcx
    push    rbx
    push    rax
    call    slen
 
    mov     rdx, rax
    pop     rax
 
    mov     rcx, rax
    mov     rbx, 1
    mov     rax, 4
    int     80h
 
    pop     rbx
    pop     rcx
    pop     rdx
    ret