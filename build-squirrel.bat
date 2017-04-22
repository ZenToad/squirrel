CALL "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
REM if not exist build mkdir build
pushd build
cmake -G "Visual Studio 14 2015 Win64" -DINSTALL_LIB_DIR=..\lib64 -DBUILD_SHARED_LIBS=OFF ..
msbuild squirrel.sln
popd