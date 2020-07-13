%include 'tools.asm'
section .data
msg db 'hello world',0h
msg2 db 'you are so good',0h
section .text
global _start
_start:
	mov 	ebx,0
	mov 	eax,ebx
	call println
	mov eax,msg2
	call println	
	call quit
