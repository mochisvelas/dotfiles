#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# get aliases in .bash_aliases if existant
if [ -f ~/.bash_aliases ]; then
		. ~/.bash_aliases
fi
