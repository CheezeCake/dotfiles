# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cheezecake"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

source $ZSH/oh-my-zsh.sh
autoload -U zmv

OS=`uname`
if test $OS = "Darwin"; then #Max OSX
	plugins=(git osx brew)
	PATH=`echo $PATH | sed 's/\/usr\/local\/bin://'`
	export PATH=/usr/local/bin:$PATH:/usr/local/sbin:~/bin
	alias gpg='gpg2'
else
	plugins=(git)
	export PATH=$PATH:~/bin
fi

export EDITOR='vim'
export LSCOLORS='exfxcxdxbxegedabagacad' #only works with BSD/OSX ls

echo "Welcome to `uname -srm` on `hostname | sed 's/\..*//'` !"
