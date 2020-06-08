#include <stdio.h>
void print(int i);
int add(int a,int b);
int getNumber();
int main(){
	int m=getNumber();
	int i=add(m,5);
	print(i);
	return 0;
}
