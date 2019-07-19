@echo off
rmdir /Q /S nonemptydir tmp
cls
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
mkdir tmp
copy 7za.exe tmp
copy tools.7z tmp
copy *.bin tmp 
cd tmp 
cls
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
7za.exe e tools.7z 
del tools.7z
7za.exe e *.bin
del *pro.cfg.sig
del *305*.sig
rename *pro.fw.sig 306.pro.fw.sig
python dji_flyc_param_ed.py -vv -x -b 0x420000 -m 306.pro.fw.sig
cls
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
copy flyc_param_infos ..
cd ..
rmdir /Q /S nonemptydir tmp
cls
copy flyc_param_infos DefaultParams
cd DefaultParams
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo Compare to stock 
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
ECHO [1] Mavic Pro 1 / Mavic Platinum / Mavic Artic White
ECHO [2] Spark
ECHO [3] Phantom 4 Standard
ECHO [4] Phantom 4 Advanced
ECHO [5] Phantom 4 Pro
ECHo [6] Phantom 4 Pro v2
ECHO [7] Inspire 2
choice /C 1234567 /D 1 /T 99 /M "Please select factory parameters to compare"
If Errorlevel 7 goto sorry
If Errorlevel 6 goto p4pv2
If Errorlevel 5 set facparms=flyc_param_infos_p4p_V01.05.0600_stock
If Errorlevel 4 set facparms=flyc_param_infos_P4A_V01.00.0128_stock
If Errorlevel 3 set facparms=flyc_param_infos_p4STANDARD_V02.00.0700_stock
If Errorlevel 2 set facparms=flyc_param_infos_spark_V01.00.0900_stock
If Errorlevel 1 set facparms=flcy_param_infos_mavicPro_v01.04.0300_stock

:main
@echo off
cls
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
Echo compare to stock 
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
cls
fc %facparms% flyc_param_infos
del flyc_param_infos
pause
exit

:p4pv2
@echo off
ECHO [1] V01.00.1500
ECHO [2] V01.00.2200
choice /C 12 /D 1 /T 99 /M "Which stock firmware to compare?"
If Errorlevel 2 set facparms=flyc_param_infos_p4pv2_V01.00.2200_stock
If Errorlevel 1 set facparms=flyc_param_infos_factory_P4Pv2_V01.00.1500_stock
goto main

:sorry
cls 
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
Echo Sorry I dont have a factory parameter list for that aircraft yet
pause 
exit


