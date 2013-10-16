# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cheezecake"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"

OS=`uname`
if test $OS = "Darwin"; then #Max OSX
	plugins=(git osx brew)
	export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/sbin:/Users/manu/bin'
	alias gpg='gpg2'
else
	plugins=(git)
	export PATH=$PATH:~/bin
fi

source $ZSH/oh-my-zsh.sh
autoload -U zmv

export EDITOR='vim'
export LSCOLORS='exfxcxdxbxegedabagacad' #only works with BSD/OSX ls

# Color in man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export PAGER='less -is'

#aliases
alias please='sudo !!'

echo "Welcome to `uname -srm` on `hostname | sed 's/\..*//'` !"
