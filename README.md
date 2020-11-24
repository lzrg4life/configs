# Configs

Various configuration files and notes.

## Stuff to install

* git
* dotnet sdk
* nvm / node
* visual studio code
* powershell core
* notepad++ (windows)

## Setup Git

```ps1
git config --global user.name "Willis Stearns"
git config --global user.email "email"
```

## Prep file system

```ps1
New-Item -f $HOME\repos\github
New-Item -f $HOME\repos\bitbucket
```

## Clone this repo

```ps1
cd $HOME\repo\github
git clone https://github.com/lzrg4life/configs.git
```

## Setup PowerShell

First, set RemoteSigned *via an Admin Powershell prompt*

```ps1
Set-ExecutionPolicy RemoteSigned
```

You cannot symlink to the file due to Powershell permissions about running unsigned scripts from other computers.

To get around that limitation, create the profile as follows:

```ps1
New-Item -f $profile 
Get-Content -path $HOME\repos\github\configs\windows\profile.ps1 -Raw | Add-Content $profile
```

After the profile is in place you can run the "UpdateProfile" in powershell function get get new versions.

## Setup VS Code

Set the default integrated terminal to PowerShell Core
