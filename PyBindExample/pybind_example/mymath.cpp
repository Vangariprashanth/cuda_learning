#include<pybind11/pybind11.h>

int multiply(int a, int b){
	return a*b;
}

PYBIND11_MODULE(mymath,m){
	m.def("multiply", &multiply, "Multiply two integers");
}
