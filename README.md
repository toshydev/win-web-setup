# Web Developer Setup for Windows 11

Instructions on how to set up and configure developer tools on windows.

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
