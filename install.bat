@echo off  
call :download "Windows.WindowsTerminal"
call :download "Microsoft.Powertoys"
call :download "Microsoft.VisualStudioCode"

call :download "7zip.7zip"
call :download "CPUID.CPU-Z"
call :download "Balena.Etcher"
call :download "RealVNC.VNCViewer"

call :download "Git.Git"
call :download "Github.GitHubDesktop"

call :download "Python.Python"

call :download "qBittorrent.qBittorrent"
call :download "Apple.iTunes"
call :download "Bitwarden.Bitwarden"
call :download "Valve.Steam"

REM Download function
:download
winget install %~1
if %ERRORLEVEL% EQU 0 Echo %~1 installed successfully.  
