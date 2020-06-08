#include <stdio.h>
void changeValueViaPoint(int a,int b){
	printf("a's value is %d\n",a);//打印改变前a的值
	printf("b's value is %d\n",b);//打印改变前b的值
	printf("===change value===\n");
	int *m=&a;
	int *n=&b;
	int temp=*m;
	*m=b;
	*n=temp;
	printf("a's value is %d\n",a);//打印改变前a的值
	printf("b's value is %d\n",b);//打印改变前b的值
}
