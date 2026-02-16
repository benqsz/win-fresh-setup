# win-fresh-setup

One command to automatically debloat windows, install choco, and install useful (in my opinion) apps.

Best used on a fresh windows installation because may break some things, especially due to the debloating scripts

## Usage
Run this command in PowerShell as administrator
```bash
irm "https://raw.githubusercontent.com/benqsz/win-fresh-setup/master/script.ps1" | iex
```
[source](./win-fresh-setup.ps1)

## Requirements
- Windows 10 / 11
- PowerShell as Administrator
- Internet connection

## Third-Party Scripts Used
- Win 11 debloat
  - [General](https://github.com/Raphire/Win11Debloat)
  - [AI](https://github.com/zoicware/RemoveWindowsAI)
- Dev environment
  - [Choco](https://chocolatey.org/install)
  - [ChocolateyGUI](https://community.chocolatey.org/packages/ChocolateyGUI)
  - [Git](https://community.chocolatey.org/packages/git.install)
  - [Nodejs](https://community.chocolatey.org/packages/nodejs-lts)
  - [Docker Desktop](https://community.chocolatey.org/packages/docker-desktop)
  - [vscode](https://community.chocolatey.org/packages/vscode)
  - [WebStorm](https://community.chocolatey.org/packages/WebStorm)
- Tools
  - [7zip](https://community.chocolatey.org/packages/7zip)
  - [LibreOffice](https://community.chocolatey.org/packages/libreoffice-fresh)
  - [Inkscape](https://community.chocolatey.org/packages/InkScape)
  - [KeePassXC](https://community.chocolatey.org/packages/keepassxc)
  - [Flow launcher](https://github.com/Flow-Launcher/Flow.Launcher)
  - [Obisdian.md](https://community.chocolatey.org/packages/obsidian)
  - [Brave](https://community.chocolatey.org/packages/brave/)
- Entertainment
  - [Steam](https://community.chocolatey.org/packages/steam)
  - [Spotify](https://community.chocolatey.org/packages/spotify)
- Communication
  - [Discord](https://community.chocolatey.org/packages/discord)
