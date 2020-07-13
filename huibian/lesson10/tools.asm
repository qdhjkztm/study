strlen:
	push ebx
	mov  ebx,eax

nextchar:
	cmp  byte[eax],0
	jz   finished
	inc  eax
	jmp  nextchar

finished:
	sub  eax,ebx
	pop  ebx
	ret

print:
	push edx
	push ecx
	push ebx
	push eax
	call strlen
	
	mov edx,eax
	pop eax
	
	mov ecx,eax
	mov ebx,1
	mov eax,4
	int 80h
	
	pop ebx
	pop ecx
	pop edx
	ret
println:
	call print
	
	push eax
	mov  eax,0Ah
	push eax
	mov  eax,esp
	
	call print
	
	pop eax
	pop eax
	ret
	
quit:
	mov ebx,0
	mov eax,1
	int 80h
	ret
	
