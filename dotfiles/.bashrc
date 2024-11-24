# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

PURPLE='\[\033[1;35m\]'
TURQOISE='\[\033[1;36m\]'
ORANGE='\[\033[0;33m\]'
RESET='\[\033[0m\]'

PS1="${PURPLE}\u${TURQOISE}@${PURPLE}\h ${ORANGE}\w${RESET}\$ "

# Created by `pipx` on 2024-06-23 00:15:18
export PATH="$PATH:/home/jacob/.local/bin"
