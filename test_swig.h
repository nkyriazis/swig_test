#pragma once

#include <vector>
#include <string>
#include <memory>

inline std::string test_method() { return "Hello world"; }

namespace test
{
  struct test_class
  {
    std::vector<double> data;

    static std::shared_ptr<test_class> make() { return std::make_shared<test_class>(); }
  };
}
