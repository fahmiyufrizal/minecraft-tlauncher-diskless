@echo off

title fahmiyufrizal@2021 [github.com/fahmiyufrizal] [Licensed to : 0-fahmiyufrizal]
:createfolder
if exist _fahmiyufrizal (
    goto checkinstall
) else (
    mkdir _fahmiyufrizal
)

:checkinstall
del _fahmiyufrizal.io
cd _fahmiyufrizal
del cleanup.bat
cd ..
cls
if exist .tlauncher (
    goto prepare
) else (
    echo.
	echo [EN] Incomplete Installation, now checking existing installation
	echo [ID] Instalasi tidak lengkap, sedang melakukan pengecekan instalasi
	echo.
	ping 127.0.0.1 -n 2 > nul
	goto roborobo
)

:roborobo
echo.
echo     [dte] Now checking existing installation...
if exist "%appdata%\.tlauncher" (
    goto copycopy
) else (
    echo.
	echo [EN] Minecraft TLauncher not installed properly!
	echo [ID] Minecraft TLauncher belum terinstall dengan benar!
	echo.
	pause
	exit
)

:copycopy
echo.   
echo     [tlf] Installation found! now copying tlauncher...
ROBOCOPY %appdata%\.tlauncher "%~dp0.tlauncher" /E /NFL /NDL /NJH /NJS /nc /ns /np
echo     [dtm] Detecting existing Minecraft gamedir...
if exist "%appdata%\.minecraft" (
    echo     [mgf] Existing minecraft found! now copying minecraft...
	ROBOCOPY "%appdata%\.minecraft" "%~dp0" /E /NFL /NDL /NJH /NJS /nc /ns /np
	echo     [clm] Deleting existing minecraft files...
	RD /S /Q "%appdata%\.minecraft"
) else (
    echo     [mgx] Existing minecraft gamedir not found, skipping to next step...
	goto cleanup_tlaunch
)

:cleanup_tlaunch
echo     [clt] Deleting existing tlauncher files...
RD /S /Q "%appdata%\.tlauncher"

:prepare
cls
echo.  
echo.  
echo     Minecraft TLauncher for Diskless > _fahmiyufrizal.io
echo     by fahmiyufrizal@2021 >> _fahmiyufrizal.io
echo.  >> _fahmiyufrizal.io
echo     github.com/fahmiyufrizal >> _fahmiyufrizal.io
cd _fahmiyufrizal
echo cd .. > cleanup.bat
echo del launch_minkrep.bat >> cleanup.bat
cd ..
type _fahmiyufrizal.io
ping 127.0.0.1 -n 4 > nul

:mklinkfolder
if exist _fahmiyufrizal\tlauncher-2.0.properties (
    goto eraseme
) else (
    echo     [grb] Backuping TLauncher configuration...
	copy .tlauncher\tlauncher-2.0.properties _fahmiyufrizal
)

:eraseme
echo.
echo     [ers] Erasing TLauncher path configuration...
del .tlauncher\tlauncher-2.0.properties
setlocal
for /F "tokens=2 delims==" %%a in ('findstr /I "minecraft.gamedir=" _fahmiyufrizal\tlauncher-2.0.properties') do set "minepath=%%a"
set strFileAwal=_fahmiyufrizal\tlauncher-2.0.properties
set dstFileFix=.tlauncher\tlauncher-2.0.properties
set path_lawas=%minepath%
set path_anyar= 

setlocal EnableDelayedExpansion
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "%strFileAwal%"') do (
	set "line=%%j"
	if not "!line!"=="" set "line=!line:%path_lawas%=%path_anyar%!"
	echo.!line!>>%dstFileFix%
)

endlocal
echo.
echo     [mk] Creating tlauncher mklink...
RD /S /Q %appdata%\.tlauncher
mklink /J "%appdata%\.tlauncher" .tlauncher
echo.
echo     [mk] Creating minecraft mklink...
RD /S /Q %appdata%\.minecraft
mklink /J "%appdata%\.minecraft" "%~dp0"

:clearprofile
echo.
echo     [cp] Resetting old profiles...
del TlauncherProfiles.json_bak
ren "TlauncherProfiles.json" "TlauncherProfiles.json_bak"

:startminkrep
echo     [st] Starting Minecraft TLauncher...
ping 127.0.0.1 -n 4 > nul
start "" TLauncher.exe
