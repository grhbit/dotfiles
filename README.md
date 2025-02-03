***Managed by chezmoi***

OS: macOS, Arch Linux, Windows 11

# Prerequisites
- zsh
- curl
- pwsh (windows)

# Installation

## [chezmoi](https://www.chezmoi.io)

```shell
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init \
  --promptString email="g.passcode@gmail.com" \
  --promptString name="Gwon Seonggwang" \
  --apply https://github.com/grhbit/dotfiles.git
```

# Misc

## [Keybase](https://keybase.io) or GnuPG
```shell
# Keybase
keybase pgp export | gpg --import # import public key
keybase pgp export --secret | gpg --allow-secret-key --import # import private key

# GnuPG
## export keys
gpg --output public.pgp --armor [email]
gpg --output private.pgp --armor --export-secret-keys [email]

## import keys
gpg --import private.pgp
gpg --import public.pgp
```

# TODO
- Setup age ~~gpg~~
- Separate between headless and desktop environment.
- Support XDG Base Directory of JetBrains products and Gradle.
- Support my windows computer.
