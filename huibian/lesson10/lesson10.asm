; Hello World Program (Getting input)
; Compile with: nasm -f elf helloworld-input.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld-input.o -o helloworld-input
; Run with: ./helloworld-input

%include 'tools.asm'

section .data
msg 		db 		'please enter your name:',0h
msg2 		db 		'hello,',0h

section .bss
sinput:		resb 	255

section .text
global _start

_start:

	mov 	ecx,0
loop:
	inc		ecx

	mov		eax,ecx
	add		eax,48
	push 	eax
	mov		eax,esp
	call	println

	pop		eax

	cmp		ecx,10
	jne		loop		
	call 	quit
