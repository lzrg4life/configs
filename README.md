# configs

Various configuration files and notes

## Installing Dependencies

### Installing Powershell Core

1. Locate the version you want from [github](https://github.com/PowerShell/PowerShell/releases) and download it.
2. Install it following whatever steps are appropriate.

### Installing DotNet

Install the .NET Core SDK from [Microsoft](https://dotnet.microsoft.com/download)

### Installing Notepad++

1. Download the 64bit msi installer from [the website](https://notepad-plus-plus.org/downloads/)
2. Install it following whatever steps are appropriate

Note that the powershell profile expects the executable to end up at "C:\Program Files\Notepad++\Notepad++.exe"

### Installing Visual Studio Code

Follow the instructions at [code.visualstudio.com](https://code.visualstudio.com/)

## Powershell Profile

Note: You cannot symlink to the file due to stupid Powershell permissions about running scripts from other computers

Open a powershell prompt in the root of this repository and run the following command:

```powershell
# Make sure the path to $profile exists
# Copy the contents of profile.ps1 to your profile
Get-Content .\powershell\profile.ps1 | Out-File $profile
```

## Visual Studio Code Settings

Open an admin powershell prompt in the root of this repository and run the following command:

```powershell
New-Item -ItemType SymbolicLink -Path "$home\AppData\Roaming\Code\User\settings.json" -Target "$pwd\vscode\settings.json"
```
