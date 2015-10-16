# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME='cheezecake_sunrise'

# CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"

plugins=(git colored-man-pages sudo)


case `uname` in
'Darwin')
	plugins+=(osx brew)
	export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/sbin:~/bin
	alias gpg='gpg2'
	;;
'Linux')
	plugins+=(archlinux)
	export PATH=~/bin:$PATH

	if [ `whoami` = 'uapv1202958' ]; then
		export PATH=$PATH:~/opt/bin:/vbox/archives/glassfish3/glassfish/bin/
		export CLASSPATH=$CLASSPATH:.:/vbox/archives/glassfish3/glassfish/modules/gf-client.jar:/vbox/archives/glassfish3/glassfish/lib/appserv-rt.jar:/vbox/archives/glassfish3/glassfish/lib/javaee.jar
	fi
	;;
esac

source $ZSH/oh-my-zsh.sh
autoload -U zmv

export EDITOR='vim'
export LSCOLORS='exfxcxdxbxegedabagacad' #only works with BSD/OSX ls
export TERM='xterm-256color'

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
