# To make Homebrew’s completions available in zsh, you must insert the Homebrew-managed zsh/site-functions path into your FPATH before initialising zsh’s completion facility
FPATH="$HOMEBREW_PREFIX/share/zsh/site-functions:${FPATH}"

# Auto completion system
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select

setopt AUTO_CD # Automatic CD
setopt NO_CASE_GLOB # Case Insensitive Globbing

# History
setopt APPEND_HISTORY # Append to history
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicates first
setopt HIST_FIND_NO_DUPS # Ignore duplicates when searching
setopt HIST_IGNORE_DUPS # Do not store duplications
setopt HIST_REDUCE_BLANKS # Removes blank lines from history
setopt INC_APPEND_HISTORY # Adds commands as they are typed, not at shell exit
setopt SHARE_HISTORY # Share history across multiple zsh sessions
setopt PROMPT_SUBST # Enable variable substitution in prompts

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # Shell History
HISTSIZE=2000
SAVEHIST=5000

# Plugins

## Git status
source "$HOMEBREW_PREFIX/opt/gitstatus/gitstatus.prompt.zsh"

# Application support
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'

## Git
alias g="git"

## Node
# export NVM_DIR="$HOME/.nvm"
# source "$NVM_DIR/nvm.sh"  # This loads nvm
# source "/usr/local/share/zsh/functions/nvm" # This loads nvm auto use
# source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## NPM
alias nd="npm run dev"
alias ni="npm install"
alias nid="npm install --save-dev"
alias nr="npm run"
alias sb="npm run storybook"
alias cs="npx changeset"

# Aliases
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
alias ls="ls -lFGh"
alias restart-core-audio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"
alias rm="trash"

# Prompt
source "$HOME/.zsh_prompt"
