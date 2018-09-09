HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

autoload -Uz compinit

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme ys
antigen apply

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

export ERL_AFLAGS="-kernel shell_history enabled"
