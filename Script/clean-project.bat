@echo off

echo "Cleaning up..."

pushd "%~dp0"
cd ..

echo "Deleting Binaries, Intermediate, Saved, and .sln files..."

if exist "Intermediate" rmdir /s /q Intermediate
if exist "Binaries" rmdir /s /q Binaries
if exist "Saved" rmdir /s /q Saved

if exist *.sln del *.sln

popd

echo "Done."

pause