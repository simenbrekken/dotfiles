# Aliases
alias cleands='find . -name ".DS_Store" -depth -exec rm {} \;'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'
alias du='du -h'

# Bash
export CLICOLOR=1
export HISTSIZE=1000000
export SVN_EDITOR='subl -w'

# Node
export NODE_PATH=/usr/local/lib/node
export PATH=/usr/local/share/npm/bin:$PATH

# Ruby (RVM)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Heroku
export PATH=/usr/local/heroku/bin:$PATH

# Git
source ~/.git-completion.sh

# Prompt
BLACK="\[\033[0m\]"
GREEN="\[\033[32m\]"
BLUE="\[\033[34m\]"
PINK="\[\033[35m\]"
GIT="\$(__git_ps1 \" (%s)\")"
RESET="\[\e[m\]"

# \u = User, \h = Host, \w = Working directory, \e = Escape, \$ = Root or user suffix
export PS1="\n$GREEN\u@\h$BLACK:$BLUE\w$PINK$GIT$RESET\$ "
