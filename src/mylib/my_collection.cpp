#include "my_collection.h"
#include <iostream>

MyCollection::MyCollection()
    : MyCollection::Parent()
{
    std::cout << "MyCollection constructor" << std::endl;
}

MyCollection::~MyCollection()
{
    std::cout << "MyCollection destructor" << std::endl;
}
