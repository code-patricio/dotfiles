#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nvimrc='nvim ~/dotfiles/nvim/init.lua'
alias notes='nvim ~/notebook/index.md'
alias music='youtube-viewer -a'
alias video='youtube-viewer -4'

PS1='[\u@\h \W]\$ '
##export PATH="$HOME/zig-0.12.0:$PATH"
