:: This is a setup script intended to set up SDL2 ready for compilation
:: Steps of what the program is supposed to do:

@echo off

:: Download the binaries of sdl2 contained in a tar file
:: and rename it to match its purpose
git clone https://www.github.com/silkylogs/sdl2-make-script
move .\sdl2-make-script .\temp

:: Extract the SDL2 binaries
cd .\temp
tar -xvf SDL2-devel-2.0.16-mingw.tar.gz

:: - Copy the folder conatining the binaries out of the temp folder
cd .\SDL2-2.0.16
move x86_64-w64-mingw32 ..
cd ..
move x86_64-w64-mingw32 ..
cd ..

:: Rename it to "SDL2"
move x86_64-w64-mingw32 .\SDL2

:: Force delete all the contents of the temp file
del .\temp

:: Copy SDL2/bin/SDL2.dll into the folder where batch file is running
copy .\SDL2\bin\SDL2.dll .\

