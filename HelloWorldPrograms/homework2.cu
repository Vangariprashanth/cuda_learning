//Print the squares of the N numbers

#include<stdio.h>
#include<cuda.h>
#define N 10

__global__ void dkernel(){
	for(int i=1;i<=N;i++){ printf("%d\n",i*i); }
}

int main(){
	dkernel<<<1,1>>>();
	cudaDeviceSynchronize();
	return 0;
}
