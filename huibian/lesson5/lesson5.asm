%include 'tools.asm'
section .data
msg db '123',0Ah
section .text
global _start
_start:
	mov eax,[123]	;将msg放入eax寄存器，用来计算长度
	call print	;调用print方法
	call quit
