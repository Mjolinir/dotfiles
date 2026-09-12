ZSH=~/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-brian"

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
export EDITOR=/usr/bin/vim
export BROWSER='/usr/bin/firefox'

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

source $HOME/.profile
source $ZSH/oh-my-zsh.sh

export PATH=$PATH:~/bin:/.local/bin

# Alias ssh to kitty's ssh kitten only if running inside kitty
if [ "$TERM" = "xterm-kitty" ]; then
    alias ssh="kitten ssh"
fi
alias ls='ls --color=auto --group-directories-first'
alias l='ls -lhX'
alias cls='clear'
alias vi='/usr/bin/vim'
alias df='df -v'
alias du='du -h'
alias gm='mutt -F .config/mutt/muttrc.gmail'
alias xrandr='wlr-randr'
