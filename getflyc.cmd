@echo off 
rmdir /Q /S nonemptydir tmp
mkdir tmp
cd tools 
copy *
cd tmp
pause