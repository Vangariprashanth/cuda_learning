#include<stdio.h>
#include<cuda.h>
#define N 10

__global__ void dkernel(){
	printf("Hello World\n");
}

int main(){
	dkernel<<<1,N>>>();
	cudaDeviceSynchronize();
}
