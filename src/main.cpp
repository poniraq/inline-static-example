#include <iostream>
#include "mylib/inline_static.h"

int main()
{
    std::cout << "Press ENTER to continue" << std::endl;
    std::cin.get();

    std::cout << "program main" << std::endl;
    InlineStatic::print_hello();

    return 0;
}