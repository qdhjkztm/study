; naskfunc
; TAB=4

; func
; TAB=8
[BITS 32]; 制作32位模式用的机械语言
	GLOBAL	_start; 程序中包含的函数名
	GLOBAL	write_mem8
[SECTION .text]        
_start:; void io_hlt(void);
	hlt
	ret
write_mem8:	; void write_mem*(int addr, int data);
	mov	ecx,[esp+4]
	mov	al,[esp+8]
	mov	[ecx],al
	ret