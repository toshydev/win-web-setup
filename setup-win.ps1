<#  1. Make sure the Microsoft App Installer is installed:
    https://apps.microsoft.com/store/detail/appinstaller/9NBLGGH4NNS1
    2. Run this script as administrator. #>

Write-Host "Installing Apps ⚙️" -BackgroundColor Black -ForegroundColor Cyan
$apps = @(
    @{name = "Git.Git"},
    @{name = "JanDeDobbeleer.OhMyPosh" },
    @{name = "Microsoft.PowerShell" },
    @{name = "Microsoft.PowerToys" },
    @{name = "Microsoft.VisualStudioCode" },
    @{name = "Microsoft.WindowsTerminal" },
    @{name = "Mozilla.Firefox.DeveloperEdition" },
    @{name = "Mozilla.Firefox.DeveloperEdition" },
    @{name = "Schniz.fnm" }
);
foreach ($app in $apps) {
    $listApp = winget list --exact -q $app.name
    if (![String]::Join("", $listApp).Contains($app.name)) {
        Write-Host "🧪 Installing: " $app.name -BackgroundColor Black -ForegroundColor Green
        winget install -e -h --accept-source-agreements --accept-package-agreements --id $app.name
    }
    else {
        Write-host "⏩ Skipping: " $app.name " (already installed)" -BackgroundColor Black -ForegroundColor Yellow
    }
}
Write-Host "Done ✅" -BackgroundColor Black -ForegroundColor Cyan