# Git and GitHub Setup

Get-Service ssh-agent | Set-Service -StartupType Automatic
Start-Service ssh-agent;
Write-Host "Git and GitHub Setup ⚙️" -BackgroundColor Black -ForegroundColor Cyan
Write-Host "(Please follow the instructions in the terminal)" -BackgroundColor Black -ForegroundColor Yellow
git config --global --unset-all user.name;
($fullname = Read-Host "Enter your full name (e.g. John Doe)") && git config --global user.name $fullname && ($email = Read-Host "Enter the e-mail you use for GitHub (john@johndoe.com)") && git config --global user.email $email;
git config --global pull.ff "only";
git config --global init.defaultBranch main;
ssh-keygen -t ed25519 -C $email;
Write-Output "Host *\n    AddKeysToAgent yes\n    UseKeychain yes\n    IdentityFile ~/.ssh/id_ed25519" | Out-File -FilePath $HOME\.ssh\config;
ssh-add $HOME/.ssh/id_ed25519;
ssh-keyscan -t rsa github.com >> $HOME/.ssh/known-hosts;

Write-Host "Authenticating with GitHub.com 🔑" -BackgroundColor Black -ForegroundColor Cyan
gh auth login;

Write-Host "Done ✅" -BackgroundColor Black -ForegroundColor Cyan
Write-Host "Happy Hacking 👾" -BackgroundColor Black -ForegroundColor Green
