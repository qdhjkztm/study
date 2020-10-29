section .data


section .text
global main
main:
    move    ax,1000
    move    bx,ax
    add     bx,ax
    add     ax,bx

