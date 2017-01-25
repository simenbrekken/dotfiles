# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable tab completion for `g` by marking it as an alias for `git`
complete -o default -o nospace -F _git g;

## Prompt
reset="\e[0m";
orange="\e[38;5;208m";
light_yellow="\e[38;5;227m";

export PS1="${light_yellow}\W ${orange}→ ${reset}";


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


## Aliases

# List all files colorized in long format
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'

alias l="ls -lFGh"

# Get week number
alias week='date +%V'

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
