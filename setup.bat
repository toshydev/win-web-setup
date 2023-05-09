ECHO OFF
ECHO "Installing Windows Terminal and PowerShell"
winget install -e -h --accept-source-agreements --accept-package-agreements --id Microsoft.PowerShell
winget install -e -h --accept-source-agreements --accept-package-agreements --id Microsoft.WindowsTerminal
ECHO "Done"
del %userprofile%\setup.bat