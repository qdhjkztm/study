#include <stdio.h>
#include "print.h"
#include "sort.h"
int main(){
	int i=110;
	printInt(i);
	char str[]="hello";
	printStr(str);
	print_array();
	print_select_sort();
}
print_array(){
	int array[]={5,3,8};
	int len=sizeof(array)/sizeof(int);
	bubble_sort(array,len);
	int m;
	for(m=0;m<len;m++){
		printf("%d\n",array[m]);
	}
}
print_select_sort(){
	int array[]={5,3,8};
        int len=sizeof(array)/sizeof(int);
	select_sort(array,len);
	int m;
        for(m=0;m<len;m++){
                printf("%d\n",array[m]);
        }
}
