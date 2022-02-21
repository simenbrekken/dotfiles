## VScode
export EDITOR='code --wait';

## Node (Volta)
export VOLTA_HOME="$HOME/.volta"
export PATH="$PATH:$VOLTA_HOME/bin"

# Ruby
export GEM_HOME="$HOME/.gem"
export PATH="$PATH:$GEM_HOME/bin"

# Secrets
source "$HOME/.zsh_secrets"

# Tripletex
source "$HOME/.zshenv_tripletex"
