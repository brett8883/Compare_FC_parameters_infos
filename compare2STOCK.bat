@echo off
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
set /P P=Enter path to parameter file you'd like to compare or drag it into cmd line then press [enter]
cls
cd DefaultParams
fc %facparms% %P%
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


