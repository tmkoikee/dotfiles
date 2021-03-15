source .zshenv
source .zprofile

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000

# share .zshhistory
setopt inc_append_history
setopt share_history

# enable completion
autoload -Uz compinit && compinit
