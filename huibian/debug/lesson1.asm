section .data
section .text
global main
main:
    move    eax,1000h
    move    ebx,eax
    add     ebx,eax
    add     eax,ebx

