%include 'tools.asm'
section .data
msg db 'please enter your name:',0h
msg2 db 'hello,',0h

section .bbs
sinput:	resb 255

section .text
global _start
_start:
	mov eax,msg
	call print

	mov edx,255
	mov ecx,sinput 
	mov ebx,0
	mov eax,3
	int 80h

	mov eax,msg2
	call print	

	mov eax,sinput
	call print

	call quit
