from setuptools import setup, Extension
from pybind11.setup_helpers import Pybind11Extension, build_ext

ext_modules = [
	Pybind11Extension("mymath", ["mymath.cpp"])
]

setup(
	name = "mymath", 
	ext_modules = ext_modules,
	cmdclass = {"build_ext": build_ext},
)
