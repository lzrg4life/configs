# Configs for Linux

## Prerequisites

0. Install git.
1. Install neovim.
2. Copy down vimplug to the appropriate directory for neovim.
3. Clone this configs repo.
4. Install exa.

## Setup

Link neovim config
```sh
cd <configs repo root>
ln ./linux/init.vim ~/.config/nvim/init.vim
```

Run neovim and run ```:PlugInstall```

In bashrc
```bash
alias v='nvim'
alias vinit='nvim ~/.config/nvim/init.vim'
alias ls='exa -lH --group-directories-first'
```
