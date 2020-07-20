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
New-Item -ItemType SymbolicLink -Path "$home\AppData\Local\nvim\init.vim" -Target "$pwd\neovim\init.vim"

New-Item -ItemType SymbolicLink -Path "$home\AppData\Local\nvim\coc.vim" -Target "$pwd\neovim\coc.vim"

New-Item -ItemType SymbolicLink -Path "$home\AppData\Local\nvim\lightline.vim" -Target "$pwd\neovim\lightline.vim"

New-Item -ItemType SymbolicLink -Path "$home\AppData\Local\nvim\coc-settings.json" -Target "$pwd\neovim\coc-settings.json"
```

If necessary, correct the paths to the language servers in the ```coc-settings.json``` file. These need to be absolute paths.

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

Open nvim and confirm the config loaded correctly before continuing.
* You will get a few errors related to the plugins not being installed yet. Just hit Enter to get by them for now.

Now, in nvim do:

```
:PlugInstall
```

Close and reopen nvim.

Then install all the language servers:

```
:CocInstall coc-json coc-tsserver coc-css coc-html coc-omnisharp coc-yaml
```
