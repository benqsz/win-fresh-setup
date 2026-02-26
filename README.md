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
  - [General](https://github.com/Raphire/Win11Debloat)
  - [AI](https://github.com/zoicware/RemoveWindowsAI)
  - [Choco](https://chocolatey.org/install)
