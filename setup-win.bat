:: Installing Git
ECHO OFF
ECHO "Installing Git..."
ECHO "(Version control system)"

winget install --id Git.Git -e --source winget

ECHO "Done"

:: Installing GitHub CLI
ECHO "Installing Command Line Tools..."
ECHO "(GitHub CLI, Oh My Posh, Fast Node Manager)"

winget install --id GitHub.cli
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Schniz.fnm

ECHO "Done"

:: Installing Win 11 apps
ECHO "Installing Win 11 Apps..."
ECHO "(Visual Studio Code)"

winget install vscode

ECHO "Done"

:: Set up node lts
ECHO "Installing Node LTS..."
ECHO "(JavaScript runtime for local development)"

fnm install lts-latest
fnm use lts-latest
ECHO "Installed Node Version:"
node -v

ECHO "Done"

:: Install global node packages
ECHO "Installing Global Node Modules..."
ECHO "(Node Package Manager - npm)"

npm i -g eslint

ECHO "Installed global node modules:" && npm list -g --depth=0;

ECHO "Done"

rm .\setup.bat
ECHO "Please restart your terminal.
PAUSE
