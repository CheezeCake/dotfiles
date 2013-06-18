#!/bin/sh

#ce script va dans ~/bin
#ne pas oublier d'ajouter ~/bin à PATH

usage()
{
	echo "usage: update-dotfiles pull|push"
	exit 1
}

if test $# != 1 || test $1 != "pull" || test $1 != "push"; then
	usage
fi

cd ~/.dotfiles

if test $1 = "pull"
then
	echo "pulling from: "`git remote -v | head -1 | cut -f2 | cut -d ' ' -f1`
	git $1
fi

FILES=`git ls-files | sed 's/.*.sh//'`

for file in $FILES
do
	if test $1 = "pull"
	then
		DEST=~/$file
		SRC=$file
	else
		DEST=$file
		SRC=~/$file
	fi

	if test -f $DEST
	then
		cmp $DEST $SRC > /dev/null
		if test $? != 0
		then
			echo "$DEST saved as $DEST.old"
			mv $DEST $DEST.old
			cp $SRC $DEST
		fi
	else
		if test $1 = "pull"; then
			echo "new dotfile: $DEST"
		else
			echo "modified: $SRC"
		fi
		cp $SRC $DEST
	fi
done

if test $1 = "push"
then
	echo "git commit -a"
	git commit -am 'update'
	echo "pushing to origin master"
	git push origin master
fi
