:: Installing Git
ECHO "\n Installing Git..."
ECHO "(Version control system)\n"

winget install --id Git.Git -e --source winget

ECHO "\n Done"

:: Installing GitHub CLI
ECHO "\n🧪 Installing Command Line Tools..."
ECHO "(GitHub CLI, Oh My Posh, Fast Node Manager)\n"

winget install --id GitHub.cli
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Schniz.fnm

ECHO "\n Done"

:: Installing Win 11 apps
ECHO "\n🧪 Installing Win 11 Apps..."
ECHO "(Visual Studio Code)\n"

winget install vscode

ECHO "\n Done"

:: Set up node lts
ECHO "\n Installing Node LTS..."
ECHO "(JavaScript runtime for local development)\n"

fnm install lts-latest
fnm use lts-latest
ECHO "Installed Node Version:"
node -v

ECHO "\n Done"

:: Install global node packages
ECHO "\n Installing Global Node Modules..."
ECHO "(Node Package Manager - npm)\n"

npm i -g eslint

ECHO "Installed global node modules:" && npm list -g --depth=0;

ECHO "\n Done"
PAUSE
