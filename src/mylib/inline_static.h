#pragma once
#include <unordered_set>
#include "my_collection.h"
#include "export.h"

class MYLIB_EXPORT InlineStatic
{
public:
    inline static std::unordered_set<std::string> test_collection = {"a", "b", "c"};
    inline static MyCollection my_collection;
    static void print_hello();
};