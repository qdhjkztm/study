printStr:
	mov	bp, bx	; ES:BP = 串地址
	call strlen

	mov	cx, ax			; CX = 串长度
	mov	ax, 01301h		; AH = 13,  AL = 01h
	mov	bx, 000ch		; 页号为0(BH = 0) 黑底红字(BL = 0Ch,高亮)
	mov	dl, 0
	int	10h			; 10h 号中断


	ret
strlen:
	push bx
	mov ax,bx			; ES:BP = 串地址
calculate:
	cmp	byte[eax],0
	jz finished
	inc ax
	jmp calculate
finished:
	sub ax,bx
	pop bx
	ret
	