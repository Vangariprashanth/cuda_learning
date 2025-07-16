#include<stdio.h>
#include<cuda.h>
# define N 10 

__global__ void dkernel(){
	printf("%u\n",threadIdx.x * threadIdx.x);
}

int main(){
	dkernel<<<1,N>>>();
	cudaDeviceSynchronize();
	return 0;
}
