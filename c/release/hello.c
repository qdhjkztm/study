#include <stdio.h>
#include "print.h"
#include "sort.h"
int main(){
	int i=110;
	printInt(i);
	char str[]="hello";
	printStr(str);
	print_bubble_sort();	
	print_select_sort();
	print_insert_sort();
}
print_array(int array[],int len){
	int i;
	for(i=0;i<len;i++){
		printf("%d\n",array[i]);
	}
}
print_bubble_sort(){
	int array[]={5,3,8};
	int len=sizeof(array)/sizeof(int);
	bubble_sort(array,len);
	print_array(array,len);
}
print_select_sort(){
	int array[]={5,3,8};
        int len=sizeof(array)/sizeof(int);
	select_sort(array,len);	
	print_array(array,len);
}
print_insert_sort(){	
	int array[]={6,3,0};
        int len=sizeof(array)/sizeof(int);
	insert_sort(array,len);
	print_array(array,len);
}
