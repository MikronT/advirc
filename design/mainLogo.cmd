@echo off
chcp 65001>nul

mode con:cols=124 lines=36
color 0b

title %versionName%
cls

echo.
echo.
call design\logos.cmd main1
echo.
echo.
echo.

exit /b