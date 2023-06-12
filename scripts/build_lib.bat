call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

cd "%~dp0/../build"
:: /std:c++17       -- C++ 17
:: /Od              -- disable optimization
:: /Ob              -- allow function inlining (dont work with Od?)
:: /Oi              -- generate intrinsic functions (irrelevant?)
:: /Ot              -- prefer fast code (dont work with Od?)
:: /Oy              -- frame-pointer omission (irrelevant?)
:: /GF              -- eliminate duplicate strings
:: /EH              -- catch both structured and standard exceptions
:: /MT              -- static runtime
:: /GS              -- buffer security check
:: /Gy              -- function-level linking (irrelevant?)
:: /Zc:inline       -- "Remove unreferenced COMDAT" (c)
:: /Zc:__cplusplus  -- updated __cplusplus macro
:: /GR              -- enable rtti
:: /Gd              -- calling convention (deprecated)
:: /MP              -- multi-process compilation
:: /nologo          -- suppress banner
:: /bigobj          -- "Increase Number of Sections in .Obj file"
:: -d2FH4           -- ???????
:: /LD              -- create DLL + import library
:: /D_WINDLL        -- default windows DLL define

cl  /std:c++17 ^
    /Od ^
    /Ob2 ^
    /Oi ^
    /Ot ^
    /Oy ^
    /GF ^
    /EHa ^
    /MT ^
    /GS ^
    /Gy ^
    /Zc:inline ^
    /Zc:__cplusplus ^
    /GR ^
    /Gd ^
    /MP ^
    /nologo ^
    /bigobj ^
    -d2FH4 ^
    /LD ^
    /D_WINDLL ^
    ../src/mylib/mylib.cpp ../src/mylib/inline_static.cpp ../src/mylib/my_collection.cpp