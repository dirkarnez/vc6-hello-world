@echo off

SET VS=%USERPROFILE%\Downloads\Visual C++ 6.0
SET PATH=%VS%\VC98\bin;%VS%\VB98;%PATH%
SET INCLUDE=%VS%\VC98\Include;%VS%\VC98\MFC\Include;%VS%\VC98\ATL\Include;
SET LIB=%VS%\VC98\Lib;%VS%\VC98\MFC\Lib

set BUILD_DIR=%CD%\build

if exist %BUILD_DIR% (
    rmdir %BUILD_DIR%
)

mkdir %BUILD_DIR%

@REM /EHsc to stop "warning C4530: C++ exception handler used, but unwind semantics are not enabled."
cl /Fe"%BUILD_DIR%\vc6-hello-world.exe" /Fo"%BUILD_DIR%\vc6-hello-world.obj" /EHsc main.cpp 

pause