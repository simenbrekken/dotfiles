# Auto completion system
autoload -Uz compinit && compinit
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

# Application support
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'

## Git
alias g="git"

## VScode
export EDITOR='code --wait';

## Node
export N_PREFIX="$HOME/.node";
export PATH="${PATH}:${N_PREFIX}/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"

alias ni="npm install --ignore-scripts"
alias nr="npm run"

## Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

## Lego
export LEGO_PATH="$HOME/.lego"

alias renew

## Tizen Studio
export PATH="${PATH}:$HOME/tizen/studio/tools:$HOME/tizen/studio/tools/ide/bin"

# Aliases
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
alias ls="ls -lFGh"
alias restart-core-audio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"
alias rm="trash"

# Plugins

## Z
source "$HOME/.zsh_plugins/zsh-z/zsh-z.plugin.zsh"

# Prompt
source "$HOME/.zsh_prompt"

# Secrets
source "$HOME/.zsh_secrets"
