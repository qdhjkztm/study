%include 'tools.asm'
section .data
msg db 'hello world',0Ah
section .text
global _start
_start:
	mov eax,msg
	call print
	call quit
