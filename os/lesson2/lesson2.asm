SECTION .data
msg db 7
SECTION .text
global _start
_start:
	mov edx,13
	mov ecx,15
	mov eax,msg
     s: add eax,5
	loop s
	mov ecx,eax
	mov ebx,1
	mov eax,4
	int 80h

	mov ebx,0
	mov eax,1
	int 80h
