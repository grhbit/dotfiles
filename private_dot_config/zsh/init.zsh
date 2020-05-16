# vi: ft=zsh

export LANG='en_US.UTF-8'
export EDITOR='nvim'
if [[ "${TERM}" != 'alacritty' ]]; then
  export TERM='xterm-256color'
fi

umask 022

if [[ -x '/usr/libexec/path_helper' ]]; then
  source <(/usr/libexec/path_helper -s)
fi

typeset -U path

# asdf
export ASDF_CONFIG_FILE="${XDG_CONFIG_HOME}/asdf/asdfrc"
export ASDF_DATA_DIR="${XDG_DATA_HOME}/asdf"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="${XDG_CONFIG_HOME}/asdf/global-tool-versions"
source "${ASDF_DATA_DIR}/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

# ccache
export CCACHE_DIR="${XDG_CACHE_HOME}/ccache"

# GnuPG
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# httpie
export HTTPIE_CONFIG_DIR="${XDG_CONFIG_HOME}/httpie"

# ncurses
export TERMINFO="${XDG_DATA_HOME}/terminfo"
export TERMINFO_DIRS="${TERMINFO}:/usr/share/terminfo"

# Nix
if [[ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]]; then
  source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

# npm
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# pipx
export PIPX_HOME="${XDG_DATA_HOME}/pipx"
export PIPX_BIN_DIR="${PIPX_HOME}/bin"

# rust
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"

path=(
  "${PIPX_BIN_DIR}"
  "${CARGO_HOME}/bin"
  $path
)
