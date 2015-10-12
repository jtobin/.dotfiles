set -o vi
bind -m vi-insert "\C-l":clear-screen

EDITOR=vim
PATH=/usr/local/bin:/usr/local/lib:/usr/local/sbin:$PATH
PATH=$PATH:/usr/texbin
PATH=$PATH:/usr/local/heroku/bin
PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:$HOME/.lein/bin

export PATH
export PS1="\u@\h:\w$ "
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTFILESIZE=10000
export HISTSIZE=10000

alias ll="ls -l"
alias c="echo 'use C-l'"
alias vl='vim -c ":set background=light"'
alias vd='vim -c ":set background=dark"'
alias j='~/j64-701/bin/jconsole'
alias emacs="/usr/local/bin/emacs"

eval $(gpg-agent --daemon)
export GPG_TTY=$(tty)
export PINENTRY_USER_DATA="USE_CURSES=1"

