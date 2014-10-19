# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME='cheezecake_sunrise'

# CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"

case `uname` in
'Darwin')
	plugins=(git osx brew)
	export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/sbin:~/bin
	alias gpg='gpg2'
	;;
'Linux')
	plugins=(git archlinux)
	export PATH=$PATH:~/bin

	if [ `whoami` = 'uapv1202958' ]; then
		export PATH=$PATH:/vbox/archives/glassfish3/glassfish/bin/
		export CLASSPATH=$CLASSPATH:.:/vbox/archives/glassfish3/glassfish/modules/gf-client.jar:/vbox/archives/glassfish3/glassfish/lib/appserv-rt.jar:/vbox/archives/glassfish3/glassfish/lib/javaee.jar
	fi
	;;
esac

source $ZSH/oh-my-zsh.sh
autoload -U zmv

export EDITOR='vim'
export LSCOLORS='exfxcxdxbxegedabagacad' #only works with BSD/OSX ls
export TERM='xterm-256color'

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
alias S='sudo'
alias vim='vim -p'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias mk='make'
alias soff='xset dpms force off' #xorg screen off

#Vi mode
set -o vi

#oh-my-zsh fix
bindkey '\eOA' up-line-or-search
bindkey '\eOB' down-line-or-search
