EDITOR=vim
export PS1="\u@\h:\w$ "

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export HISTFILESIZE=10000
export HISTSIZE=10000

alias ll="ls -l"
alias c="echo 'use C-l'"
alias vl='vim -c ":set background=light"'
alias vd='vim -c ":set background=dark"'
alias clojure='java -cp ~/Downloads/clojure-1.4.0/clojure-1.4.0.jar clojure.main'
alias j='~/j64-701/bin/jconsole'

export PATH=/Users/jtobin/.cabal/bin:/usr/local/bin:/usr/local/lib:/usr/texbin:$PATH

set -o vi
bind -m vi-insert "\C-l":clear-screen

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
