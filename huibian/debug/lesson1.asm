%include    'function.asm'     
section .data
section .text
global main
 
main:        ; move the address of our integer into eax
    mov     eax,'111'    ; return to our program
    call    printStr
    mov     cx,10
loopPrint:
    push    cx
    mov     eax,"aaa"
    call    printStr
    pop     cx
    loop loopPrint
    mov     eax,100
    mov     ebx,1000
    sub     ebx,eax
    mov     eax,ebx
    call    printInteger

    call    quit