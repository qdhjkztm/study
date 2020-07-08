/* 告诉C编译器，有一个函数在别的文件里 */

void _start(void);

/* 是函数声明却不用{}，而用;，这表示的意思是：
	函数在别的文件中，你自己找一下 */

void main(void)
{

fin:
	_start(); /* 执行naskfunc.nas中的_io_hlt函数 */
	goto fin;

}
