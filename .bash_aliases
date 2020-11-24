# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias rr="rm -rf"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias reload="source ~/.bashrc"
alias cls="clear"

# git for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/git-enviroment/wsl-dotfiles/ --work-tree=$HOME'

# FUNCTIONS

# copy to host clipboard
copy() {
	clip.exe < "$1"
}

# archive extraction
# usage: extract <file>

extract () {
    if [ -f "$1" ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf "$1" ;;
            *.tar.gz)    tar xvzf "$1" ;;
            *.tar.xz)    tar xvJf "$1" ;;
            *.bz2)       bunzip2 "$1" ;;
            *.rar)       unrar x "$1" ;;
            *.gz)        gunzip "$1" ;;
            *.tar)       tar xvf "$1" ;;
            *.tbz2)      tar xvjf "$1" ;;
            *.tgz)       tar xvzf "$1" ;;
            *.zip)       unzip "$1" ;;
            *.jar)       unzip "$1" ;;
            *.Z)         uncompress "$1" ;;
            *.7z)        7z x "$1" ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
