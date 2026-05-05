#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias update='sudo pacman -Syu'
alias roms='cd ~/gaming/roms'
alias flex='fastfetch'
bind 'set enable-bracketed-paste on'
