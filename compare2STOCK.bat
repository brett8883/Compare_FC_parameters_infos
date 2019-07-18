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
If Errorlevel 6 set facparms=flcy_param_infos_p4pv2
If Errorlevel 5 set facparms=flcy_param_infos_p4p
If Errorlevel 4 set facparms=flyc_param_infos_P4A
If Errorlevel 3 goto sorry
If Errorlevel 2 set facparms=flcy_param_infos_spark
If Errorlevel 1 set facparms=flcy_param_infos_mavicPro

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


:sorry
cls 
ECHO -------------------------------------------------------------------------------------------
ECHO Compare FC Parameters_infos
echo By Brett8883
ECHO -------------------------------------------------------------------------------------------
Echo Sorry I dont have a factory parameter list for that aircraft yet
pause 
exit


