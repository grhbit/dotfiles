# vi: ft=zsh
export LANG='en_US.UTF-8'
export EDITOR='nvim'
export TERM='xterm-256color'

umask 022

if [[ -x '/usr/libexec/path_helper' ]]; then
  source <(/usr/libexec/path_helper -s)
fi

typeset -U path
typeset -U manpath

# ccache
export CCACHE_DIR="${XDG_CACHE_HOME}/ccache"

# GnuPG
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# Gradle
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

# Homebrew
if [[ -f "/opt/homebrew/bin/brew" ]]; then
  export HOMEBREW_PREFIX="/opt/homebrew";
  export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
  export HOMEBREW_REPOSITORY="/opt/homebrew";
  path+=(
    "${HOMEBREW_PREFIX}/bin"
    "${HOMEBREW_PREFIX}/sbin"
  )
  fpath=("${HOMEBREW_PREFIX}/share/zsh/site-functions" $fpath)
  manpath=("${HOMEBREW_PREFIX}/share/man" $manpath)
fi

# krew
export KREW_ROOT="${XDG_DATA_HOME}/krew"
path+="${KREW_ROOT}/bin"

# llvm
if [[ -d '/opt/homebrew/opt/llvm/bin' ]]; then
  path+='/opt/homebrew/opt/llvm/bin'
fi

# ncurses
export TERMINFO="${XDG_DATA_HOME}/terminfo"
export TERMINFO_DIRS="${TERMINFO}:/usr/share/terminfo"

# npm
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# rust
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
if [[ -d "${CARGO_HOME}/bin" ]]; then
  path+="${CARGO_HOME}/bin"
fi

# sdkman
export SDKMAN_DIR="${XDG_DATA_HOME}/sdkman"
if [[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]]; then
  source "${SDKMAN_DIR}/bin/sdkman-init.sh"
fi

# solana
export SOLANA_BIN="${XDG_DATA_HOME}/solana/install/active_release/bin"
if [[ -d "${SOLANA_BIN}" ]]; then
  path+="${SOLANA_BIN}"
fi

# volta
export VOLTA_HOME="${XDG_DATA_HOME}/volta"
if [[ -d "${VOLTA_HOME}/bin" ]]; then
  path+="${VOLTA_HOME}/bin"
fi

path=(
  "${HOME}/.local/bin"
  "${HOME}/.rd/bin"
  $path
)
