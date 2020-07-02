#include <stdio.h>
#include <math.h>
void add(int a,int b){
	printf("a + b = %d \n",a+b);
}
void two_n(int n){
	int i=0;
	int j=1;
	while(i<n){
		j=j*2;
		i++;
	}
	printf("2 的n次幂是:%d\n",j);
}
		
