%include 'tools.asm'
section .data
msg db 'hello world',0Ah,0h
msg2 db 'you are so good',0Ah,0h
section .text
global _start
_start:
	mov eax,msg
	call print
	mov eax,msg2
	call print	
	call quit
