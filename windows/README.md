# Configs\Windows

Copy the contents of profile.ps1 to your powershell profile.

## Setting up nvim

```pwsh
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -Force
```

symlink vim stuff (run from this folder)
```pwsh
symlink $HOME\AppData\Roaming\Code\User\settings.json $PWD\vscode-settings.json
symlink $HOME\AppData\Local\NVIm\init.vim $PWD\init.vim
symlink $HOME\AppData\Local\NVIm\coc.vim $PWD\coc.vim
```

open neovim and ```:PlugInstall``` and close it

open neovim and ```:CocInstall coc-go```

Run vscode with the go plugin (and after installing go) and click "Install All" when it prompts about installing missing tools.
