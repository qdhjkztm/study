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

	mov 	eax,msg
	call	print

	mov 	edx,255
	mov 	ecx,sinput 
	mov 	ebx,0
	mov 	eax,3
	int 	80h

	mov 	eax,msg2
	call 	print	

	mov 	eax,sinput
	call 	print

	call 	quit
