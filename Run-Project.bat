@echo off
title Angular Windows Fixer - By Mohammed Al-Sarraj
color 0A

echo ===================================================
echo      Angular Ultimate Runner (Windows Fix)
echo ===================================================
echo.

:: 1. Clean Angular Cache to prevent EPERM errors
echo [1/3] Cleaning Angular Cache...
if exist ".angular\cache" (
    rmdir /s /q ".angular\cache"
)

:: 2. Check for node_modules and install if missing
echo [2/3] Checking dependencies...
if not exist "node_modules" (
    echo [!] node_modules not found. Installing dependencies...
    call npm install
)

:: 3. Launch Angular with Polling (Fixes Windows File Watcher) and HMR
echo [3/3] Launching Angular...
echo Mode: HMR + Polling (Safe Mode)
echo ===================================================
call ng serve --hmr --poll 2000 --open

echo.
echo [!] Server stopped.
pause