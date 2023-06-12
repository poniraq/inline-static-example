#pragma once
#include <unordered_set>
#include "export.h"

class MYLIB_EXPORT MyCollection : public std::unordered_set<std::string>
{
private:
    using Parent = std::unordered_set<std::string>;

public:
    MyCollection();
    ~MyCollection();
};
