#include<stdio.h>
#include<cuda.h>

__global__ void dkernel(){

	printf("hello world\n");


}
int main(){
	dkernel<<<1,1>>>();
	cudaDeviceSynchronize();
	return 0;
}
