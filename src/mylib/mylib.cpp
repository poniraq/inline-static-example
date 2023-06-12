#include <iostream>
#include <windows.h>

#include "inline_static.h"

BOOL WINAPI DllMain(
    HINSTANCE hinstDLL,  // handle to DLL module
    DWORD fdwReason,     // reason for calling function
    LPVOID lpvReserved )  // reserved
{
    // Perform actions based on the reason for calling.
    switch( fdwReason ) 
    { 
        case DLL_PROCESS_ATTACH:
            std::cout << "DLL attached to process" << std::endl;
            InlineStatic::print_hello();
            return TRUE;

        case DLL_THREAD_ATTACH:
            return TRUE;

        case DLL_THREAD_DETACH:
            return TRUE;

        case DLL_PROCESS_DETACH:
            std::cout << "DLL detached from process" << std::endl;
            InlineStatic::print_hello();

            if (lpvReserved != nullptr)
            {
                // do not do cleanup if process termination scenario
                return TRUE;
            }
            
            // perform cleanup
            return TRUE;
        
        default:
            break;
    }

    return TRUE;
}
