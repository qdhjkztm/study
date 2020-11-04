section .data
section .text
global main
 
main:
 
    mov     rcx, 0          ; rcx is initalised to zero.
 
nextNumber:
    inc     rcx             ; increment rcx
 
    mov     rax, rcx        ; move the address of our integer into rax
    add     rax, 48         ; add 48 to our number to convert from integer to ascii for printing
    push    rax             ; push rax to the stack
    mov     rax, rsp        ; get the address of the character on the stack
    call    sprintLF        ; call our print function
 
    pop     rax             ; clean up the stack so we don't have unneeded bytes taking up space
    cmp     rcx, 10         ; have we reached 10 yet? compare our counter with decimal 10
    jne     nextNumber      ; jump if not equal and keep counting
 
    call    quit
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

sprintLF:
    call    sprint
 
    push    rax         ; push rax onto the stack to preserve it while we use the rax register in this function
    mov     rax, 0Ah    ; move 0Ah into rax - 0Ah is the ascii character for a linefeed
    push    rax         ; push the linefeed onto the stack so we can get the address
    mov     rax, rsp    ; move the address of the current stack pointer into rax for sprint
    call    sprint      ; call our sprint function
    pop     rax         ; remove our linefeed character from the stack
    pop     rax         ; restore the original value of rax before our function was called
    ret                 ; return to our program