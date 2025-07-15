#include<stdio.h>
#include<cuda.h>

__global__ void dkernel(){

	printf("GPU: Hello World\n");

}
int main(){
	dkernel<<<1,1>>>();
	dkernel<<<1,1>>>();
	dkernel<<<1,1>>>();
	cudaDeviceSynchronize();
	printf("CPU: hello world\n");
	return 0;

}
