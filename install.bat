@echo off  
rem Microsoft
call :download "Windows.WindowsTerminal"
call :download "Microsoft.Powertoys"
call :download "Microsoft.VisualStudioCode"

rem Productivity Utils
call :download "7zip.7zip"
call :download "CPUID.CPU-Z"
call :download "Balena.Etcher"
call :download "RealVNC.VNCViewer"
call :download "Insecure.Nmap"
call :download "Kitware.CMake"

rem Github
call :download "Git.Git"
call :download "Github.GitHubDesktop"

rem Development Environments
call :download "Python.Python"

rem Utils
call :download "qBittorrent.qBittorrent"
call :download "Apple.iTunes"
call :download "Bitwarden.Bitwarden"

rem Gaming
call :download "Valve.Steam"
call :download "EpicGames.EpicGamesLauncher"
call :download "Discord.Discord"

REM Download function
:download
winget install %~1
if %ERRORLEVEL% EQU 0 Echo %~1 installed successfully.  
