#include "inline_static.h"
#include <iostream>

void InlineStatic::print_hello()
{
	std::cout << "test_collection: ";
	for (auto& elem: test_collection)
	{
		std::cout << elem << " ";
	}
	std::cout << std::endl;
	
	std::cout << "hello from InlineStatic" << std::endl;
}
