# Configs

Various configuration files and notes.

This is all based on a Windows setup.

## Install stuff

* [Git-scm](https://www.git-scm.com/)
* [Powershell Core](https://github.com/PowerShell/PowerShell/releases)
* [.NET SDK](https://dotnet.microsoft.com/download)
* [64bit Notepad++](https://notepad-plus-plus.org/downloads/)
* [NodeJS](https://nodejs.org/en/)
* [Visual Studio Code](https://code.visualstudio.com/)

## Setup Git

```ps1
git config --global user.name "Willis Stearns"
git config --global user.email "email"
```

## Clone this repo

```ps1
New-Item -f $HOME\repos
cd $HOME\repos
git clone https://github.com/lzrg4life/configs.git
```

## Setup PowerShell

First, set RemoteSigned *via an Admin Powershell prompt*

```ps1
Set-ExecutionPolicy RemoteSigned
```

You cannot symlink to the file due to Powershell permissions about running 
unsigned scripts from other computers.

To get around that limitation, create the profile as follows:

```ps1
New-Item -f $profile && 
  Add-Content $profile ("Get-Content -path $HOME\repos\configs\profile.ps1 -Raw | Invoke-Expression")
```

## Setup VS Code

Install extensions for:

* JavaScript
* TypeScript
* Prettier
* PowerShell

Set the default integrated terminal to PowerShell Core
