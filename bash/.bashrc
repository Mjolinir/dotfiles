# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
alias ls='ls --group-directories-first --color=auto'
alias l='ls -lhX'
alias vi='/usr/bin/vim'
alias cls='clear'
alias gm='mutt -F .config/mutt/muttrc.gmail'

#PS1="[\[\e[32m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\]:\[\e[34m\]\W\[\e[m\]]"
PS1="[\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]]"
case `id -u` in
        0) PS1="${PS1}# ";;
        *) PS1="${PS1}$ ";;
esac

export HISTCONTROL=ignoreboth:erasedups:ignorespace
export BROWSER='/usr/bin/firefox'
export EDITOR=/usr/bin/vim
export PATH="$PATH:~/bin:~/.local/bin"

#/usr/local/bin/onedrive --monitor >/dev/null 2>&1 &
