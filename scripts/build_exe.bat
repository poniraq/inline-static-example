call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

cd "%~dp0/../build"
:: /c               -- dont link
:: /std:c++17       -- C++ 17
:: /Od              -- disable optimization
:: /Ob              -- allow function inlining (dont work with Od?)
:: /Oi              -- generate intrinsic functions (irrelevant?)
:: /Ot              -- prefer fast code (dont work with Od?)
:: /Oy              -- frame-pointer omission (irrelevant?)
:: /GF              -- eliminate duplicate strings
:: /EH              -- catch both structured and standard exceptions
:: /MD              -- dynamic runtime
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

cl  /c ^
    /std:c++17 ^
    /Od ^
    /Ob2 ^
    /Oi ^
    /Ot ^
    /Oy ^
    /GF ^
    /EHa ^
    /MD ^
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
    ../src/main.cpp

link /OUT:example.exe mylib.lib main.obj
