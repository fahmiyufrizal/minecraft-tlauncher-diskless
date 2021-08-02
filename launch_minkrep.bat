@echo off

title fahmiyufrizal@2021 [github.com/fahmiyufrizal]
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
	echo [EN] Incomplete Installation, check instruction at github.com/fahmiyufrizal/minecraft-tlauncher-diskless
	echo [ID] Instalasi tidak lengkap, cek instruksi di github.com/fahmiyufrizal/minecraft-tlauncher-diskless
	echo.
	pause
	exit
)

:prepare
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
echo.
echo     [mk] Creating tlauncher mklink...
RD /S /Q %appdata%\.tlauncher
mklink /J "%appdata%\.tlauncher" .tlauncher
echo.
echo     [mk] Creating minecraft mklink...
RD /S /Q %appdata%\.minecraft
mklink /J "%appdata%\.minecraft" %~dp0

:clearprofile
echo.
echo     [cp] Resetting old profiles...
del TlauncherProfiles.json_bak
ren "TlauncherProfiles.json" "TlauncherProfiles.json_bak"

:startminkrep
echo     [st] Starting Minecraft TLauncher...
ping 127.0.0.1 -n 4 > nul
start "" TLauncher.exe

:bersihfile
cd _fahmiyufrizal
call cleanup.bat