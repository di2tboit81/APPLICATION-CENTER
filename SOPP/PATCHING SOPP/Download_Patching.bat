@echo off
setlocal EnableExtensions

REM ============================================================
REM POSPAY PATCHING - MULTI FILE
REM HTA membaca daftar file langsung dari SOURCE_DIR.
REM Tidak perlu mengubah BAT saat file baru ditambahkan.
REM ============================================================

set "SOURCE_DIR=D:\B@-IT POS\APLIKASI DOWNLOAD POS\FILE PENDUKUNG\file pendukung"
set "TARGET_DIR=D:\B@-IT POS\APLIKASI DOWNLOAD POS\locales"

REM ============================================================
REM VALIDASI
REM ============================================================

if not exist "%SOURCE_DIR%\" exit /b 1

if not exist "%TARGET_DIR%\" (
    mkdir "%TARGET_DIR%" >nul 2>&1
    if errorlevel 1 exit /b 1
)

if "%~1"=="" exit /b 1

REM ============================================================
REM COPY FILE YANG DIPILIH HTA
REM ============================================================

:LOOP
if "%~1"=="" exit /b 0

if not exist "%SOURCE_DIR%\%~1" exit /b 1

copy /Y "%SOURCE_DIR%\%~1" "%TARGET_DIR%\%~1" >nul
if errorlevel 1 exit /b 1

shift
goto LOOP
