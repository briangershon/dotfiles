# OSX-only stuff. Abort if not OSX.
[[ "$OSTYPE" =~ ^darwin ]] || return 1

export PATH=$PATH:/Users/briangershon/Dropbox/brianscripts
alias s='~/s/s.sh'

[[ -s /Users/briangershon/.nvm/nvm.sh ]] && . /Users/briangershon/.nvm/nvm.sh # This loads NVM

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
