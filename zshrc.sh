export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)


function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

setopt prompt_subst
PROMPT=$'\n''%F{yellow}%~%f $(git_branch_name)'$'\n''$ '

export PATH="/Library/D/ldc/bin:$PATH"
# pnpm
export PNPM_HOME="/Users/jake/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
export PATH="$(npm config get prefix):$PATH"

export PATH="/Users/jake/Library/Python/3.9/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

function ll {
  cd "$(llama "$@")"
}

# bun completions
[ -s "/Users/jake/.bun/_bun" ] && source "/Users/jake/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Created by `pipx` on 2024-03-04 10:47:57
export PATH="$PATH:/Users/jake/.local/bin"
