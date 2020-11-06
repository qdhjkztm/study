%include    'function.asm'     
section .data
section .text
global main
 
main:        ; move the address of our integer into eax
    mov     eax,'111'    ; return to our program
    call    printStr
    mov     ecx,2
    mov     eax,4
loopPrint:
    add     eax,eax
    loop loopPrint
    call    printInteger
    mov     eax,100
    mov     ebx,1000
    sub     ebx,eax
    mov     eax,ebx
    call    printInteger

    call    quit