
@echo off
setlocal

rem --- EDIT THIS if VMRC is installed elsewhere ---
set "VMRC_EXE=C:\Program Files (x86)\VMware\VMware Remote Console\vmrc.exe"

rem --- Check vmrc.exe exists ---
if not exist "%VMRC_EXE%" (
    echo ERROR: vmrc.exe not found at "%VMRC_EXE%".
    echo Please update VMRC_EXE to the correct path.
    pause
    exit /b 1
)

rem --- VMRC URLs ---
set "VM1=vmrc://vmrc-csfp.pme.cyber.rmc.ca?moid=721"
set "VM2=vmrc://vmrc-csfp.pme.cyber.rmc.ca?moid=722"
set "VM3=vmrc://vmrc-csfp.pme.cyber.rmc.ca?moid=723"

echo Launching VMRC sessions...
start "" "%VMRC_EXE%" "%VM1%"
start "" "%VMRC_EXE%" "%VM2%"
start "" "%VMRC_EXE%" "%VM3%"

echo Done. Three VMRC windows should be opening now.
endlocal
