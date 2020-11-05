%include    'function.asm'     
section .data
section .text
global main
 
main:        ; move the address of our integer into eax
    mov     eax,'111'    ; return to our program
    call    printSrt