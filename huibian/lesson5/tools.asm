strlen:
	push ebx
	mov  ebx,[eax]	;将msg存入ebx，开始通过eax自增计算msg的长度

nextchar:
	cmp  byte[eax],0	;这个以前的文章讲过，gdb调试那一章
	jz   finished
	inc  eax		
	jmp  nextchar

finished:
	sub  eax,ebx	;计算长度后，将长度存在eax中
	pop  ebx
	ret

print:
	push edx	;push指令将edx压入栈中，需要用到edx原始值得时候，使用pop指令出栈即可，下面相同
	push ecx
	push ebx
	push eax
	call strlen
	
	mov edx,eax	;
	pop eax		;重新使eax内存地址指向的值为msg
	
	mov ecx,eax	;固定将msg放入ecx
	mov ebx,1
	mov eax,4
	int 80h
	
	pop ebx
	pop ecx
	pop edx
	ret

quit:
	mov ebx,0
	mov eax,1
	int 80h
	ret
	
