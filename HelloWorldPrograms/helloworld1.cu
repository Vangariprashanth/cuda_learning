// This code does not work because we did not use cudaDeviceSynchronize();
// How to run the program ?
// nvcc helloworld1.cu
// ./a.out

#include <cuda.h>
#include <stdio.h>

__global__ void dkernel()
{
    printf("hello world");
}

int main()
{

    dkernel<<<1, 1>>>();
    return 0;
}
