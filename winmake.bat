:: This is intended to be a template script for compiling SDL2 programs on windows
:: For troubleshooting details of how to set up an SDL2 project on windows, using MinGW or GCC only,
:: visit the following:
:: https://stackoverflow.com/a/64396980/14978745
@echo off

:: Commonly modified flags
set outputFile= -o output.exe
set srcFiles= test.cpp
set compiler= gcc

:: Link flags must be at the end of the command
set linkFlags= -lmingw32 -lSDL2main -lSDL2

:: If <SDL.h> is directly included in the source, path should end with .../include/SDL2/
:: If it is done like <SDL2/SDL.h> then path should end with .../include/
set includeDirectory= -I.\SDL2\include\

:: The path to the folder containing the static libraries
set libDirectory= -L.\SDL2\lib\

@echo on
:: The full command entered into the terminal
%compiler% %outputFile% %includeDirectory% %libDirectory% %srcfiles% %linkFlags%
