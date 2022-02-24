################################################################################
#Author: Frank Camilleri (http://deployfrank.sh)
#TL;DR: dot-zsh file. User defined SHELL CONFIGURATIONS + ALIASES go here. NOT SHELL VARIABLES.
#License: MIT (do w/e you want with this code as long as MIT license copy
#included, and I'm not responsible if this code breaks your stuff)
################################################################################
ZSH=~/.oh-my-zsh
#ZSH_THEME="xiong-chiamiov-plus"
ZSH_THEME="xiong-chiamiov-plus-brian"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  colored-man-pages
  web-search
)

#User configuration
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

#Configure Less (the file reader) so we can scroll manpages with the mouse.
export LESS=-R

source $ZSH/oh-my-zsh.sh

alias cls='clear'
alias ls='ls --group-directories-first --color='auto''
alias l='ls -lhX'
alias config='/usr/bin/git --git-dir=/home/btruter/.cfg/ --work-tree=/home/btruter'
alias urxvt='urxvt -depth 32 -bg rgba:1111/1111/1111/ee00 -fn 'xft:Monospace:pixelsize=16,xft:PowerlineSymbols:pixelsize=16''
