@echo off
setlocal

REM ============================================================
REM POSPAY PATCHING - KONFIGURASI
REM Cukup ubah DOWNLOAD_URL, TARGET_DIR dan TARGET_FILE
REM saat update versi.
REM ============================================================

set "DOWNLOAD_URL=https://sopp.posindonesia.co.id/download/aplikasi/Patching_PosPay5008.exe"

set "TARGET_DIR=D:\ALL APLIKASI\POS\SOPP AWAL\PATCHING SOPP 1"

set "TARGET_FILE=Patching_PosPay5008.exe"


REM ============================================================
REM PROSES DOWNLOAD
REM ============================================================

if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%" >nul 2>&1
)

curl -L -f -o "%TARGET_DIR%\%TARGET_FILE%" "%DOWNLOAD_URL%"

if errorlevel 1 exit /b 1

exit /b 0