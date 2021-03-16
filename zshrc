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

# Find completion candidates as they are.
# -> Change input from lowercase to uppercase to find suggestions.
# -> Change input from uppercase to lowercase to find suggestions.
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

### Grouping by completion method.
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

### select=2: Select a completion candidate from the list. If there are no more than two candidates, completion will be done immediately.
zstyle ':completion:*:default' menu select=2

# automatically change directory when dir name is typed
setopt auto_cd

# disable ctrl+s, ctrl+q
setopt no_flow_control

# Customize to my needs...
eval "$(starship init zsh)"
export PATH=/opt/local/bin:$PATH

alias ll='exa -l -snew'
