#include<stdio.h>
#include<cuda.h>

__global__ void dkernel1(){

	printf("Kernel 1: Hello World\n");
}

__global__ void dkernel2(){

	printf("Kernel 2: Hello World\n");
}

int main(){
	dkernel1<<<1,1>>>();
	dkernel2<<<1,1>>>();
	printf("On CPU\n");
	cudaDeviceSynchronize();
	return 0;
}
