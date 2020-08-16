printStr:
	
	mov	bp, bx	; ES:BP = 串地址
	pusha
	call strlen

	mov	cx, ax			; CX = 串长度
	
	mov	ax, 01301h		; AH = 13,  AL = 01h
	mov	bx, 000ah		; 页号为0(BH = 0) 黑底红字(BL = 0Ch,高亮)
	mov	dl, 2
	popa
	int	10h			; 10h 号中断


	ret
strlen:
	mov ax,bx			
calculate:
	cmp	byte[eax],0
	jz finished
	inc ax
	jmp calculate
finished:
	sub ax,bx
	ret

println:
    pusha
    
    mov ah, 0x0e
    mov al, 0x0a ; newline char
    int 0x10
    mov al, 0x0d ; carriage return
    int 0x10
    
    popa
    ret
	