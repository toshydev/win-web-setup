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
Write-Host "Installing Node LTS ⚙️" -BackgroundColor Black -ForegroundColor Cyan
fnm env | Invoke-Expression;
fnm install lts-latest;
fnm alias lts-latest default;
fnm use default;
Write-Host "Installed Node Version: " $(node -v) -BackgroundColor Black -ForegroundColor Yellow;

Write-Host "Installing Global Node Modules ⚙️" -BackgroundColor Black -ForegroundColor Cyan
npm i -g eslint

Write-Host "Installed global node modules:" -BackgroundColor Black -ForegroundColor Yellow && npm list -g --depth=0;

Write-Host "Configuring terminal 🧪" -BackgroundColor Black -ForegroundColor Cyan
Write-Output "oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/robbyrussell.omp.json' | Invoke-Expression" >> $PROFILE

Write-Host "Done ✅" -BackgroundColor Black -ForegroundColor Cyan
Write-Host "Restarting terminal 🔁" -BackgroundColor Black -ForegroundColor Cyan
. $PROFILE
