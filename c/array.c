#include <stdio.h>
void printArray(int array[]){
	int len=sizeof(array)/sizeof(int);
	int i=0;
	printf("izeof array is %d\n",sizeof(array));
	printf("sizeof int is %d\n",sizeof(int));
	
	printf("len is %d\n",len);
	for(i=0;i<len;i++){
		printf("array %d is %d\n",i,*(array+i));
	}
}

