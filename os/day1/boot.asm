	org	07c00h			; 告诉编译器程序加载到7c00处
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	call	DispStr			; 调用显示字符串例程
	jmp	$			; 无限循环
DispStr:
	push ax
	mov	ax, BootMessage
	mov	bp, ax			; ES:BP = 串地址
	mov	cx, len_string			; CX = 串长度
	mov	ax, 01301h		; AH = 13,  AL = 01h
	mov	bx, 000ah		; 页号为0(BH = 0) 黑底红字(BL = 0Ch,高亮)
	mov	dl, 0
	int	10h			; 10h 号中断

	pop ax
	add ax,20
	mov ds,ax
	mov es,ax

	mov	ax, BootMessage2
	mov	bp, ax			; ES:BP = 串地址
	mov	cx, len_string2			; CX = 串长度
	mov	ax, 01301h		; AH = 13,  AL = 01h
	mov	bx, 000ah		; 页号为0(BH = 0) 黑底红字(BL = 0Ch,高亮)
	mov	dl, 0
	int	10h			; 10h 号中断
	ret
BootMessage:		db	"Hello, OS world!"
BootMessage2:		db	"aaaaaaaaaaaaaaaaaaaa"
len_string  equ  $ - BootMessage
len_string2  equ  $ - BootMessage2
times 	510-($-$$)	db	0	; 填充剩下的空间，使生成的二进制代码恰好为512字节
dw 	0xaa55				; 结束标志
