source "/usr/local/etc/bash_completion"
source "/usr/local/etc/profile.d/z.sh"

# Enable tab completion for `g` by marking it as an alias for `git`
complete -o default -o nospace -F _git g;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable tab completion for `g` by marking it as an alias for `git`
complete -o default -o nospace -F _git g;

## Prompt
__node_env_ps1() {
  if [ $NODE_ENV ]; then
    printf -- "${1}" '$NODE_ENV';
  fi
}

__git_dirty_ps1() {
  if ! [ -d ".git" ] || [ -z "$(git status --porcelain)" ]; then
    printf "$2"
  else
    printf "$1"
  fi
}

reset="\e[0m";
yellow="\e[38;5;226m";
orange="\e[38;5;208m";
light_yellow="\e[38;5;227m";
light_blue="\e[38;5;105m";
bright_red="\e[38;5;196m";

PS1="${light_yellow}\W " # Working directory
PS1+='$(__git_ps1 "${light_blue}%s ")' # Git branch
PS1+='$(__node_env_ps1 "${bright_red}%s ")' # NODE_ENV
PS1+='$(__git_dirty_ps1 "${yellow}✗ " "${orange}→ ")' # Git status
PS1+="${reset}" #Suffix

export PS1;


## Exports

# Make VS Code the default editor
export EDITOR='code';

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";

# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8'; # no_NO.UTF-8
export LC_ALL='en_US.UTF-8'; # no_NO.UTF-8

# Set colors when using ls
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'


## Aliases

alias g="git"

alias ls="ls -lFGh"

# Get week number
alias week='date +%V'

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
