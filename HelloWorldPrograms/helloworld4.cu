#include<stdio.h>
#include<cuda.h>

__global__ void dkernel1(){

	printf("Kernel1: Hello World\n");

}

__global__ void dkernel2(){

	printf("Kernel2: Hello World\n");

}

int main(){
	dkernel1<<<1,1>>>();
	dkernel2<<<1,1>>>();
	cudaDeviceSynchronize();
	printf("On CPU\n");
	return 0;
}
