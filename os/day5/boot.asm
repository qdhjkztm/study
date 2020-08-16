
	org	07c00h			; 告诉编译器程序加载到7c00处
	
	mov	bx, msg
	call	printStr			; 调用显示字符串例程
	
	call	println

	mov	bx, msg2
	call	printStr			; 调用显示字符串例程
	jmp	$			; 无限循环
%include 'tools.asm'
msg:		db	"Hello, OS world! Second Good Start",0h
msg2:		db	"this is the second line",0h
times 	510-($-$$)	db	0	; 填充剩下的空间，使生成的二进制代码恰好为512字节
dw 	0xaa55				; 结束标志
