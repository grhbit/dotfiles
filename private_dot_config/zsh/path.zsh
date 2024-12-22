if [[ -x '/usr/libexec/path_helper' ]]; then
  # Update the PATH environment variable using path_helper
  source <(/usr/libexec/path_helper -s)
fi

typeset -U path
typeset -U fpath
typeset -U manpath

# Homebrew
if [[ -f '/opt/homebrew/bin/brew' ]]; then
  export HOMEBREW_PREFIX='/opt/homebrew';
  export HOMEBREW_CELLAR='/opt/homebrew/Cellar';
  export HOMEBREW_REPOSITORY='/opt/homebrew';
  path=(
    "${HOMEBREW_PREFIX}/bin"
    "${HOMEBREW_PREFIX}/sbin"
    "${path[@]}"
  )
  fpath=("${HOMEBREW_PREFIX}/share/zsh/site-functions" "${fpath[@]}")
  manpath=("${HOMEBREW_PREFIX}/share/man" "${manpath[@]}")
fi

if [[ -d "${CARGO_HOME}/bin" ]]; then
  path=(
    "${CARGO_HOME}/bin"
    "${path[@]}"
  )
fi

if [[ -d "${XDG_DATA_HOME}/mise/shims" ]]; then
  path=(
    "${XDG_DATA_HOME}/mise/shims"
    "${path[@]}"
  )
fi

path=(
  "${HOME}/.local/bin"
  "${path[@]}"
)

export PATH
