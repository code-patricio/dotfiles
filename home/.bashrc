#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nvimrc='nvim ~/dotfiles/nvim/init.lua'
alias music='youtube-viewer -a'

PS1='[\u@\h \W]\$ '
