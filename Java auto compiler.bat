@echo off
title Java Auto Compiler

echo.
echo Java files in this directory.
echo -----------------------
echo.

:javaexec
set location = %cd%
dir %cd%\*.java /B
echo.

set /p filename=Enter file name (without extension): 

::Change path of the bin folder from below if required
set path =C:\Program Files (x86)\Java\jdk1.6.0_45\bin

javac %filename%.java
start cmd.exe /k "java %filename%"
cls
goto :javaexec