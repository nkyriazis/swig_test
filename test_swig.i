%module test_swig

// Add necessary symbols to generated header
%{
#include "test_swig.h"
%}
%include "std_string.i"
%include "std_vector.i"
%include <std_shared_ptr.i>
// Process symbols in header
%include "test_swig.h"

%template(vector_double) std::vector<double>;
%template(test_class_ptr) std::shared_ptr<test::test_class>;