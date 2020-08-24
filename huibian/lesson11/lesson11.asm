; Hello World Program (Getting input)
; Compile with: nasm -f elf helloworld-input.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld-input.o -o helloworld-input
; Run with: ./helloworld-input

%include 'tools.asm'

section .data
; data
HELLO:
    db 'Hello, World', 0

GOODBYE:
    db 'Goodbye', 0

section .text
global main

main:

	mov bl, HELLO
	pusha
start:
    mov al,[bl] ; 'bx' is the base address for the string
    cmp al, 0 
    je done

    ; the part where we print with the BIOS help
    mov ah, 0x0e
    int 0x10 ; 'al' already contains the char

    ; increment pointer and do next loop
    add bx, 1
    jmp start
done:
	popa
    ret

