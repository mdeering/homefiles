export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
alias rvmify='echo 2.2 > .ruby-version && echo "${PWD##*/}" > .ruby-gemset && cd . && rvm info'
