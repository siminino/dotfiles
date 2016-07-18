source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

export PS1='\[\033[38;5;75m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@ \[$(tput sgr0)\]\[\033[38;5;229m\]\w$(__git_ps1) \[$(tput sgr0)\]\[\033[38;5;39m\]\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source /usr/local/bin/virtualenvwrapper.sh

export LDAP_USER=victor.areas

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec

PAT=H"/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
