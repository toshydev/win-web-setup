# Web Developer Setup for Windows 11

Instructions on how to set up and configure developer tools on windows.

> This instruction uses the winget tool, which is only supported on Windows 10 1709 (build 16299) or later at this time. The winget tool will not be available until you have logged into Windows as a user for the first time, triggering Microsoft Store to register Windows Package Manager as part of an asynchronous process. If you have recently logged in as a user for the first time and find that winget is not yet available, you can open PowerShell and enter the following command to request this winget registration: Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.

## Quick Setup

1. Install and/or update the [**Microsoft App Installer**](https://apps.microsoft.com/store/detail/appinstaller/9NBLGGH4NNS)
2. `Win` + `R` (Run)

```
cmd /c curl https://raw.githubusercontent.com/toshydev/win-web-setup/main/setup.bat > %userprofile%\setup.bat && %userprofile%\setup.bat
```

3. Configure **Windows Terminal**

- [Set default terminal application](https://learn.microsoft.com/en-us/windows/terminal/install#set-your-default-terminal-application)
- [Set default profile](https://learn.microsoft.com/en-us/windows/terminal/install#set-your-default-terminal-profile)
- No need to add new profiles, continue with step `4`

4. Install Apps
   Run in **Windows Terminal as Administrator**:

```
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/toshydev/win-web-setup/main/setup-win.ps1)))
```

5. Configure **Git & GitHub**
   Run in **Windows Terminal**:

```
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/toshydev/win-web-setup/main/setup-git-win.ps1)))
```

---

## Windows Package Manager

[Docs](https://learn.microsoft.com/en-us/windows/terminal/)

> The winget command line tool enables users to discover, install, upgrade, remove and configure applications on Windows 10 and Windows 11 computers. This tool is the client interface to the Windows Package Manager service.

### Install

The **winget** tool is part of the [_Microsoft App Installer_](https://apps.microsoft.com/store/detail/appinstaller/9NBLGGH4NNS). If it's already installed, make sure it is updated with the **latest version**.

## Windows Terminal & PowerShell 7

[Docs](https://learn.microsoft.com/en-us/windows/terminal/)

> Windows Terminal is a modern host application for the command-line shells you already love, like Command Prompt, PowerShell, and bash (via Windows Subsystem for Linux (WSL)). Its main features include multiple tabs, panes, Unicode and UTF-8 character support, a GPU accelerated text rendering engine, and the ability to create your own themes and customize text, colors, backgrounds, and shortcuts.

[Docs](https://learn.microsoft.com/en-us/powershell/)

> PowerShell is a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework. PowerShell runs on Windows, Linux, and macOS.

### Install

To install **Windows Terminal** & **PowerShell 7**, run this `.bat` script in **Windows CMD**:

- Open **CMD** with the key-combination: `WIN` + `R`, type `cmd` and press `ENTER`
- paste and run this `cURL` command in `CMD`:

```
curl https://raw.githubusercontent.com/toshydev/win-web-setup/main/setup.bat > %userprofile%\setup.bat && %userprofile%\setup.bat
```

(The [script](https://github.com/toshydev/win-web-setup/blob/main/setup.bat) installs _Windows Terminal_ and _PowerShell 7_ with the _winget_ tool you installed in the first step.)

### Configuration (Do not skip)

Set **Windows Terminal** as your default Terminal and **PowerShell 7** as the default profile by following these two simple steps:

- [Set default terminal application](https://learn.microsoft.com/en-us/windows/terminal/install#set-your-default-terminal-application)
- [Set default profile](https://learn.microsoft.com/en-us/windows/terminal/install#set-your-default-terminal-profile)

You can skip the rest of the customization (_Add new profile_, etc.)

## Dev Tools

Now that you have a brand new terminal you can install the most important applications:

- [Git](https://git-scm.com/) - Version Control System
- [Visual Studio Code](https://code.visualstudio.com/) - IDE
- [Firefox Developer Edition](https://www.mozilla.org/de/firefox/developer/) - Browser & Dev Tools
- [Fast Node Manager](https://github.com/Schniz/fnm) - Node.js version manager
- [Microsoft PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/) - Utilities
- [Oh My Posh](https://ohmyposh.dev/) - Shell customization

### Install

With the _winget_ tool you can easily install all these tools at once.
Open **Windows Terminal as Administrator** and paste and run this script:

```
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/toshydev/win-web-setup/main/setup-win.ps1)))
```

The [script](https://github.com/toshydev/win-web-setup/blob/main/setup-win.ps1) installs the apps from the list as well as the _eslint_ package for error linting in **VSC**.

## Git & GitHub

To be able to connect your remote **GitHub** repositories with your local projects you need to set up your **Git** config and authenticate with the **GitHub CLI**.

### Configuration

Make sure to open **Windows Terminal as Administrator** and paste and run this script:

```
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/toshydev/win-web-setup/main/setup-git-win.ps1)))
```

The [script](https://github.com/toshydev/win-web-setup/blob/main/setup-git-win.ps1) sets your **Git** username and email globally, creates a new SSH key, adds the key to your SSH agent and uses these settings with the **GitHub CLI** to authorize you without a password.

## The End

Good Work! You did it! Nothing can stop you!
Happy Hacking 👾

Please leave a star ⭐ if this instruction helped you.

If an instruction didn't work as it should, open an issue in the [Issues section](https://github.com/toshydev/win-web-setup/issues).

![good job](https://media.giphy.com/media/Qs0QEnugOy0xIsFkpD/giphy.gif)

![Visitors](https://api.visitorbadge.io/api/VisitorHit?user=win-web-setup&repo=toshydev&countColor=%237B1E7A)