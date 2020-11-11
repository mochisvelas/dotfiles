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

# alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/git-enviroment/wsl-dotfiles/ --work-tree=$HOME'

# FUNCTIONS

# copy to host clipboard
copy() {
  clip.exe < "$1"
}

