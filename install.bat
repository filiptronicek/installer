@echo off  
rem Microsoft
call :download "Windows.WindowsTerminal"
call :download "Microsoft.Powertoys"
call :download "Microsoft.VisualStudioCode"
call :download "Microsoft.PowerBI"

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
call :download "OpenJS.NodeJS"
call :download "Docker.DockerDesktop"

rem Utils
call :download "qBittorrent.qBittorrent"
call :download "Apple.iTunes"
call :download "t1m0thyj.WinDynamicDesktop"
call :download "Bitwarden.Bitwarden"

rem Messaging
call :download "Signal.Signal"
call :download "WhatsApp.WhatsApp"

rem Gaming
call :download "Valve.Steam"
call :download "EpicGames.EpicGamesLauncher"
call :download "Discord.Discord"
call :download "OBSProject/OBSStudio"
call :download "canonical.ubuntu"

call :npm "vercel"
call :npm "fast-cli"
call :npm "speed-test"
call :npm "expo-cli"

REM Download function
:download
winget install %~1
if %ERRORLEVEL% EQU 0 Echo %~1 installed successfully.  

REM NPM Download function
:npm
npm i -g %~1
if %ERRORLEVEL% EQU 0 Echo %~1 installed successfully.  