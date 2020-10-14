***Managed by chezmoi***

OS: macOS, Arch Linux

# Prerequisites

## [Homebrew](https://brew.sh)
**macOS**
```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## [yay](https://github.com/Jguer/yay)
**Arch Linux**
```shell
$ pacman -S --needed git base-devel
$ git clone https://aur.archlinux.org/yay.git
$ cd yay
$ makepkg -si
```

## [chezmoi](https://www.chezmoi.io)
```shell
$ brew install chezmoi # on macOS
$ yay -S chezmoi # on Arch Linux

$ chezmoi init https://github.com/username/dotfiles.git
$ exit # or reload zsh configs (including zshenv)
```

# Installation
## [zinit](https://github.com/zdharma/zinit)
```shell
$ mkdir -p "${XDG_DATA_HOME}/zinit"
$ git clone https://github.com/zdharma/zinit.git "${XDG_DATA_HOME}/zinit/bin"
```

## [asdf-vm](https://asfd-vm.com)
```shell
$ asdf plugin add deno direnv github-cli golang java nodejs python ruby yarn
$ NODEJS_CHECK_SIGNATURES=no asdf install
```

## [rustup](https://rustup.rs)
```shell
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --no-modify-path
```

# Needs to update periodically

## [zinit](https://github.com/zdharma/zinit)
```shell
$ zinit self-update
$ zinit update --all
$ zinit delete --clean && zinit cclear # cleanup unused plugins
```

## [rustup](https://rustup.rs)
```shell
$ rustup update
```

## [neovim](https://github.com/neovim/neovim)
```shell
$ nvim +PlugUpgrade +PlugUpdate +CocUpdate # +qall (if needed)
```

## [asdf-vm](https://asdf-vm.com)
You need to check and to update each plugin manually. (Please let me know how to update automatically.)

## [Homebrew](https://brew.sh)
**macOS**
```shell
$ brew update && brew upgrade && brew upgrade --cask
```

## [yay](https://github.com/Jguer/yay)
**Arch Linux**
```shell
$ yay
```

# TODO
- Add scripts
    - Install asdf's plugins
    - Make `$XDG_DATA_HOME/zsh` directory for history
    - Install tools using yay
- Setup gpg
- Separate between home and work environment.
