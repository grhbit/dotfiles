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
## [zinit](https://github.com/zdharma-continuum/zinit.git)
```shell
$ mkdir -p "$(dirname $ZINIT_HOME)"
$ git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
```

## [vim-plug](https://github.com/junegunn/vim-plug)
```shell
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## [asdf-vm](https://asdf-vm.com)
```shell
$ git clone https://github.com/asdf-vm/asdf.git "${ASDF_DIR}" && cd "${ASDF_DIR}" && git checkout "$(git describe --abbrev=0 --tags)"
$ for plugin in deno direnv golang java nodejs python ruby yarn; do asdf plugin-add $plugin; done
$ NODEJS_CHECK_SIGNATURES=no asdf install
```

## [rustup](https://rustup.rs)
```shell
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --no-modify-path
```

## [Keybase](https://keybase.io)
```shell
$ keybase pgp export | gpg --import # import public key
$ keybase pgp export --secret | gpg --allow-secret-key --import # import private key
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
- Separate between headless and desktop environment.
- Support XDG Base Directory of JetBrains products and Gradle.
- Support my windows computer.
- Consider using [paru](https://github.com/Morganamilo/paru) instead of `yay`.
    - :+1: It can be installed by cargo.
    - :+1: Written in Pure Rust.

