:: This is a setup script intended to set up SDL2 ready for compilation
:: Steps of what the program is supposed to do:
:: - Create a temp file
:: - Download the binaries of sdl2 contained in a tar file, to said temp file
:: - Extract the tar file
:: - Copy the folder prefixed with "x86_64" out of the temp folder
:: - Rename it to "SDL2"
:: - Force delete all the contents of the temp file
:: - Copy SDL2/bin/SDL2.dll into the folder where batch file is running

@echo off

git clone https://www.github.com/silkylogs/sdl2-make-script
mv .\sdl2-make-script\ .\temp\
cd .\temp\

tar -xvf SDL2-devel*.tar.gz
cd .\SDL2-*\
cp .\x86_64-w64*\ ..\..\
cd ..\..\

mv .\x86_64-w64*\ .\SDL2\

rm -Recurse -Force .\temp\

cp .\SDL2\bin\SDL2.dll .\

