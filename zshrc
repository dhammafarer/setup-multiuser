export ZSH=~/.oh-my-zsh
export EDITOR=vim

# disable CTRL-s flow control
stty -ixon

# run TMUX on terminal start
#if command -v tmux>/dev/null; then
#  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2
#fi

#ZSH_THEME="avit"
ZSH_THEME="sonicradish"

autoload -Uz compinit
compinit

plugins=(zsh-syntax-highlighting zsh-autosuggestions git)

source $ZSH/oh-my-zsh.sh

source ~/.aliases
