# vi: ft=zsh

export LANG='en_US.UTF-8'
export EDITOR='nvim'
export TERM='xterm-256color'

umask 022

if [ -x '/usr/libexec/path_helper' ]; then
  eval "$(/usr/libexec/path_helper -s)"
fi

typeset -gU path

# ccache
export CCACHE_DIR="${XDG_CACHE_HOME}/ccache"

# GnuPG
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# httpie
export HTTPIE_CONFIG_DIR="${XDG_CONFIG_HOME}/httpie"

# n
export N_PREFIX="${XDG_DATA_HOME}/n"
path+="${N_PREFIX}/bin"

# ncurses
export TERMINFO="${XDG_DATA_HOME}/terminfo"
export TERMINFO_DIRS="${TERMINFO}:/usr/share/terminfo"

# npm
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# pipx
export PIPX_HOME="${XDG_DATA_HOME}/pipx"
export PIPX_BIN_DIR="${PIPX_HOME}/bin"
path+="${PIPX_BIN_DIR}"

# rust
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
path+="${CARGO_HOME}/bin"

