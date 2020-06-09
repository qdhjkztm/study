#include <stdio.h>
void print(int i);
int add(int a,int b);
int getNumber();
void changeValueViaPoint(int a,int b);
void printArray(int array[]);
int main(){
	int m=getNumber();
	int i=add(m,5);
	print(i);
	changeValueViaPoint(5,15);
	int array[]={5,7,9};
	printArray(array);
	return 0;
}
