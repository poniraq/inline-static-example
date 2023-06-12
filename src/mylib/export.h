#ifdef _WINDLL // we are building Windows DLL
#define MYLIB_EXPORT __declspec( dllexport )

#else
#define MYLIB_EXPORT

#endif
