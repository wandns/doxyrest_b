call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"
rd /s /q _build
mkdir _build
cd _build
cmake -DCMAKE_INSTALL_PREFIX=..\doxyrest\builds\windows ..
copy ..\doxyrest\builds\windows\bin\expat.dll .
rd /s /q ..\doxyrest\builds\windows
cmake --build . --target install
copy expat.dll ..\doxyrest\builds\windows\bin\expat.dll
echo installed doxyrest here: ..\doxyrest\builds\windows
