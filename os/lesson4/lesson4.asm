SECTION .data
msg db 'hello world,your are good',0Ah
SECTION .text
global _start
_start:
	mov eax,msg
	call strlen

	mov edx,eax
	mov ecx,msg
	mov ebx,1
	mov eax,4
	int 80h

	mov ebx,0
	mov eax,1
	int 80h
strlen:
	mov  ebx,eax
nextchar:
	cmp byte[eax],0
	jz  finished
	inc eax
	jmp nextchar
finished:
	sub eax,ebx
	ret
