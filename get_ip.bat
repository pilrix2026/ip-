@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title 获取本机IP地址 - 棱盾科技网络安全
color 0A
echo.
echo ========================================
echo   棱盾科技网络安全工具
echo   获取本机IP地址 v1.2.3
echo ========================================
echo.
echo 正在获取本机IP地址...
echo.

set ip_address=未找到IP地址

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4"') do (
    set ip_temp=%%a
    set ip_address=!ip_temp: =!
)

echo 本机IP地址: %ip_address%
echo.
echo ========================================
echo 按任意键退出...
pause >nul
endlocal