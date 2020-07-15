# configs

Various configuration files and notes

## Installing dependencies

### Installing Powershell Core

1. Locate the version you want from [github](https://github.com/PowerShell/PowerShell/releases) and download it.
2. Install it following whatever steps are appropriate.

### Installing Neovim

1. Locate the version you want from [github](https://github.com/neovim/neovim/releases) and download the zip file.
2. Extract the zip file to an appropriate location like ```C:\tools\neovim\```.
3. Add the ```bin``` folder to your path.

### Installing dart-sdk

1. Download the zip file from [dart.dev](https://dart.dev/tools/sdk/archive)
2. Extract the zip file to an appropriate location like ```C:\tools\dart-sdk\```.
3. Add the ```bin``` folder to your path.

### Installing dotnet

Install the .NET Core SDK from [Microsoft](https://dotnet.microsoft.com/download)

## Powershell Profile

Note: You cannot symlink to the file due to stupid Powershell permissions about running scripts from other computers

Open a powershell prompt in the root of this repository and run the following command:

```powershell
# Copy the contents of profile.ps1 to your profile
Get-Content .\powershell\profile.ps1 | Out-File $profile
```

## Neovim Settings

Open an admin powershell prompt in the root of this repository and run the following command:

```powershell
New-Item -ItemType SymbolicLink -Path "$home\AppData\Local\nvim\init.vim" -Target ".\neovim\init.vim"

New-Item -ItemType SymbolicLink -Path "$home\AppData\Local\nvim\coc.vim" -Target ".\neovim\coc.vim"

New-Item -ItemType SymbolicLink -Path "$home\AppData\Local\nvim\coc-settings.json" -Target ".\neovim\coc-settings.json"
```

Prepare [vim plug](https://github.com/junegunn/vim-plug):

```powershell
md $home\AppData\Local\nvim-data\site\autoload

(New-Object Net.WebClient).DownloadFile(
  "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim",
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "$home\AppData\Local\nvim-data\site\autoload\plug.vim"
  )
)
```

Open nvim and Confirm the config loaded correctly before continuing.

### Neovim: Install the plugins

In nvim do:

```
:PlugInstall
```

Then install all the language servers:

```
:CocInstall coc-json coc-tsserver coc-css coc-html coc-omnisharp coc-yaml
```
