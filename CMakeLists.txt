cmake_minimum_required(VERSION 3.10)

project(test_swig)

find_package(SWIG REQUIRED)
find_package(PythonLibs 2.7 REQUIRED)

add_library(test_swig_lib test_swig.h test_swig.cpp)

include(${SWIG_USE_FILE})

set_source_files_properties(test_swig.i PROPERTIES CPLUSPLUS ON)
include_directories(${PYTHON_INCLUDE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
set_source_files_properties(test_swig.i PROPERTIES CPLUSPLUS ON)

swig_add_library(test_swig TYPE SHARED MODULE LANGUAGE python SOURCES test_swig.i)
swig_link_libraries(test_swig ${PYTHON_LIBRARIES} test_swig_lib)
