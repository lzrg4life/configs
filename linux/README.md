# Linux Configs

Packages
```sh
sudo apt install -y git gcc
```

* [Go](https://golang.org/)
* [Nvim](https://github.com/neovim/neovim/releases) (Download the tar.gz file)
* rustup ```curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh```

```sh
cd ~/Downloads
sudo tar -C /usr/local/ -xzf go.*.tar.gz
sudo tar -C /usr/local/ -xzf nvim-*.tar.gz
sudo mv /usr/local/nvim* /usr/local/nvim
cargo install exa
```

Create the ssh key 
```sh
ssh-keygen
```

Add the following to the end of ~/.bashrc
```sh
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/nvim/bin

alias v="nvim"
alias ls="exa -a --group-directories-first"
```
