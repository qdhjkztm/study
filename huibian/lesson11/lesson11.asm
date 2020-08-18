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
	call print

	call print_nl

	mov bl, GOODBYE
	call print

	call print_nl

