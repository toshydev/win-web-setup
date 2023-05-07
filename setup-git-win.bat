ECHO OFF
ECHO "Setting up git and GitHub…"
ECHO "(Please follow the instructions in the terminal)"

set /p fullname='Enter your full name (e.g. John Doe): '
git config --global user.name %fullname%
set -p email='Enter the e-mail you use for GitHub (john@johndoe.com): '
git config --global user.email %email%
git config --global pull.ff "only"
git config --global init.defaultBranch main
ssh-keygen -t ed25519 -C %email%
ECHO "ssh-agent: %(ssh-agent -s)%"
ECHO "Host *\n    AddKeysToAgent yes\n    UseKeychain yes\n    IdentityFile ~\.ssh/id_ed25519" > ~\.ssh/config
ssh-add -K ~\.ssh/id_ed25519
:: add github.com to the list of known hosts
ssh-keyscan -t rsa github.com >> ~\.ssh/known_hosts

ECHO "Authenticating with GitHub.com…"
gh auth login

ECHO "…all done!"
ECHO "You can now use git with your GitHub account."
