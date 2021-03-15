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

# automatically change directory when dir name is typed
setopt auto_cd

# disable ctrl+s, ctrl+q
setopt no_flow_control

# Customize to my needs...
eval "$(starship init zsh)"
export PATH=/Users/tomohiro.koike/.cargo/bin:$PATH
export PATH=/Users/tomohiro.koike/bin:$PATH
export PATH=/opt/local/bin:$PATH

alias snowsql=/Applications/SnowSQL.app/Contents/MacOS/SnowSQL
alias ll='exa -l -snew'
