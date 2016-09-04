# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="norm"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(aws docker git github z)

source $ZSH/oh-my-zsh.sh

# Prompt
node_env() {
  if [ $NODE_ENV ]; then
    echo "%{$FG[196]%}$NODE_ENV "
  fi
}

PROMPT='%{$FG[208]%}λ %{$FG[227]%}%c $(git_prompt_info)%{$FG[208]%}$(node_env)→ %{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"

# Paths
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin

# Locale
export LC_ALL=no_NO.UTF-8
export LANG=no_NO.UTF-8

# AWS
export AWS_DEFAULT_REGION=$(grep region $AWS_HOME/config|sed -e 's/.*= //')
export AWS_ACCESS_KEY_ID=$(grep aws_access_key_id $AWS_HOME/credentials|sed -e 's/.*= //')
export AWS_SECRET_ACCESS_KEY=$(grep aws_secret_access_key $AWS_HOME/credentials|sed -e 's/.*= //')

# Android SDK
export ANDROID_HOME=/usr/local/opt/android-sdk

# Increase number of open file descriptors
ulimit -n 10240

# Aliases
alias rmds="find . -name '*.DS_Store' -type f -delete"
alias serve="npm run serve"
alias dokku="$HOME/.dokku/contrib/dokku_client.sh"
