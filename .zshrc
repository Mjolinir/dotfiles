# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#export TERM="xterm-256color"
export EDITOR=vim
export SHELL=/usr/bin/zsh
export ZSH=/home/brian/.oh-my-zsh
export GPG_TTY=$(tty)

#eval $(thefuck --alias)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd COMPLETE_ALIASES correctall
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brian/.zshrc'
zstyle ':completion:*' menu select
#zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
#zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

autoload -Uz compinit
compinit
#autoload -U promptinit
#promptinit
#prompt fade blue
# End of lines added by compinstall

#source build/powerlevel9k/powerlevel9k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir dir_writable)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)
POWERLEVEL9K_OS_ICON_BACKGROUND='white'
POWERLEVEL9K_OS_ICON_FOREGROUND='043'
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_BACKGROUND='027'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='021'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='024'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='245'
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_LINUX_ICON=$'\uF17C '
POWERLEVEL9K_HOME_ICON=$'\uF015 '
POWERLEVEL9K_HOME_SUB_ICON=$'\uF07C '
POWERLEVEL9K_FOLDER_ICON=$'\uF115 '
POWERLEVEL9K_BACKGROUND_JOBS_ICON=$'\uF013 '
POWERLEVEL9K_EXECUTION_TIME_ICON=$'\uF252 '
COMPLETION_WAITING_DOTS='true'

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/gitfast/gitfast.plugin.zsh
source $ZSH/plugins/colored-man-pages/colored-man-pages.plugin.zsh
source $ZSH/plugins/colorize/colorize.plugin.zsh
source $ZSH/plugins/command-not-found/command-not-found.plugin.zsh
source $ZSH/plugins/dirhistory/dirhistory.plugin.zsh
source $ZSH/plugins/sudo/sudo.plugin.zsh
source $ZSH/plugins/sudo/sudo.plugin.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(gitfast colored-man colorize command-not-found dirhistory sudo zsh-syntax-highlighting)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bold'

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

if [[ $DESKTOP_SESSION = "/usr/share/xsessions/xfce" ]]; then
   POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='green'
   POWERLEVEL9K_DIR_HOME_BACKGROUND='green'
   POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
   POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
   POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
   POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='green'
   POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
   POWERLEVEL9K_OS_ICON_FOREGROUND='black'
fi

alias ls='ls --group-directories-first --color=auto'
alias l='ls -lhX'
alias cls='clear'
alias sc='systemctl'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

#if [[ $- == *i* ]]
#then
#   figlet Fedora27
#fi

aur() {
   cd ~/build
   git clone https://aur.archlinux.org/${1}.git
   cd ${1}
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
