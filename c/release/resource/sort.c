#include <stdio.h>
void bubble_sort(int array[],int len){
	int i,j,temp;
	for(i=0;i<len-1;i++){
		for(j=i+1;j<len;j++){
			if(array[i]>array[j]){
				temp=array[j];
				array[j]=array[i];
				array[i]=temp;
			}
		}
	}
}
void select_sort(int array[],int len){
	int i,j,min_index,temp;
	for(i=0;i<len-1;i++){
		min_index=i;
		for(j=i+1;j<len;j++){
			if(array[j]<array[i]){
				min_index=j;
			}
		}
		temp=array[min_index];
		array[min_index]=array[i];
		array[i]=temp;
	}
}
				
	
