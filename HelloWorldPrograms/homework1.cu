#include<stdio.h>
#include<cuda.h>

__global__ void dkernel(){

	for(int i=0;i<10;i++){ printf("Hello World\n"); }
}

int main(){
	dkernel<<<1,1>>>();
	cudaDeviceSynchronize();
	return 0;
}
