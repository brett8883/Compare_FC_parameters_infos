@echo off
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
set /P F=Enter path to first file or drag it into cmd window [ENTER]
cls
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
set /P S=Enter path to second file or drag it into cmd window then hit [ENTER]
cls
fc %F% %S%
pause