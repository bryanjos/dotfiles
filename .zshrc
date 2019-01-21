# Created by newuser for 5.2
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle :compinstall filename “/Users/bryanjoseph/.zshrc”

autoload -Uz compinit

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme ys
antigen apply

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

eval "$(hub alias -s)"

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# added by travis gem
[ -f /Users/bryanjoseph/.travis/travis.sh ] && source /Users/bryanjoseph/.travis/travis.sh
export PATH="/usr/local/opt/llvm/bin:$PATH"

GPG_TTY=$(tty)
export GPG_TTY
export PATH="/usr/local/sbin:$PATH"
