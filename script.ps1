if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
    Write-Host "ERROR: This script must be run as Administrator" -ForegroundColor Red
    exit
}

function InvokeSafe
{
    param(
        [scriptblock]$Command
    )

    try
    {
        & $Command
    }
    catch
    {
        Write-Hoste "FAILURE: $_" -ForegroundColor Yellow
    }
}

Write-Host "------------------------------------------------"
Write-Host ""
Write-Host "Starting win-fresh-setup script"
Write-Host ""
Write-Host "------------------------------------------------"

Write-Host "Debloating win 11 General"
InvokeSafe {
    function Clear-Host
    {
    }
    & ([scriptblock]::Create((irm "https://debloat.raphi.re/")))
}

Write-Host "Debloating win 11 AI"
InvokeSafe {
    & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/zoicware/RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
}

Write-Host "Installing choco package manager"
InvokeSafe {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

$applications = @(
    "chocolateygui"
    "git.install",
    "nodejs-lts",
    "docker-desktop",
    "vscode",
    "webstorm",
    "7zip",
    "libreoffice-fresh",
    "inkscape",
    "keepassxc",
    "flow-launcher",
    "obsidian",
    "brave",
    "steam",
    "spotify",
    "discord"
)

Write-Host "Installing apps via choco"
InvokeSafe {
    choco install $applications -y
}

Write-Host "------------------------------------------------"
Write-Host ""
Write-Host "Setup Completead 0__0"
Write-Host ""
Write-Host "------------------------------------------------"
Write-Host "Computer will restart in 60 seconds. Press Ctrl+C to cancel." -ForegroundColor Yellow

Start-Sleep -Seconds 60
Restart-Computer -Force
