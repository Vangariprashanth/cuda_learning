#include<stdio.h>
#include<cuda.h>

__global__ void dkernel(){
	printf("Hello World\n");
}

int main(){
	dkernel<<<1,1>>>();
	printf("CPU 1\n");
	dkernel<<<1,1>>>();
	printf("CPU 2\n");
	dkernel<<<1,1>>>();
	printf("CPU 3\n");
	cudaDeviceSynchronize();
	printf("On CPU final call");
	return 0;
}
