
	org	07c00h			; 告诉编译器程序加载到7c00处
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	call	DispStr			; 调用显示字符串例程
	jmp	$			; 无限循环
DispStr:
	mov	ax, msg
	mov	bp, ax			; ES:BP = 串地址
	mov	cx, 16			; CX = 串长度
	mov al, 0                             ; al为0,不移动光标，字符串中没有属性内容
	mov bh, 0                             ; 第0页显示
	mov bl, 0xFC                          ; 闪烁白色背景，红色加亮前景
	mov	dl, 0
	int	10h			; 10h 号中断
	ret
msg:		db	"Hello, OS world!"
times 	510-($-$$)	db	0	; 填充剩下的空间，使生成的二进制代码恰好为512字节
dw 	0xaa55				; 结束标志
