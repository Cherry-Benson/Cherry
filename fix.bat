@echo off
title Windows 7 C Drive Check and Fix
echo ============================================
echo  Checking and fixing C: drive on Windows 7
echo ============================================
echo.

echo Scheduling disk check for C:...
echo Y|chkdsk C: /f /r > "%SystemDrive%\chkdsk_c_log.txt"
echo.

echo Running system file check...
sfc /scannow > "%SystemDrive%\sfc_log.txt"
echo.

echo Done.
echo CHKDSK log: %SystemDrive%\chkdsk_c_log.txt
echo SFC log: %SystemDrive%\sfc_log.txt
echo.
pause