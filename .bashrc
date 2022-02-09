# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export PATH=$PATH:~/bin
export EDITOR="vim"

# User specific aliases and functions

ipif() { 
    if grep -P "(([1-9]\d{0,2})\.){3}(?2)" <<< "$1"; then
	 curl ipinfo.io/"$1"
    else
	ipawk=($(host "$1" | awk '/address/ { print $NF }'))
	curl ipinfo.io/${ipawk[1]}
    fi
    echo
}

PS1="[\[\e[38;5;33m\]\u\[\e[m\]@\h:\[\e[38;5;33m\]\W\[\e[m\]]"
case `id -u` in
        0) PS1="${PS1}# ";;
        *) PS1="${PS1}$ ";;
esac

alias ls='ls --group-directories-first --color="auto"'
alias l='ls -lhX'
alias cls='clear'
alias vi='vim'
alias sc='systemctl'
alias lc='clear && l'
alias yum='dnf'

#cheat () {curl http://cheat.sh/"$@";}

eval $(thefuck --alias)

if [[ $- == *i* ]]
then
   figlet Fedora34
fi

#if [ -f `which powerline-daemon` ]; then
#  powerline-daemon -q
#  POWERLINE_BASH_CONTINUATION=1
#  POWERLINE_BASH_SELECT=1
#  . /usr/share/powerline/bash/powerline.sh
#fi

#xmodmap -e "keycode 66 =  NoSymbol"

alias config='/usr/bin/git --git-dir=/home/btruter/.cfg/ --work-tree=/home/btruter'
