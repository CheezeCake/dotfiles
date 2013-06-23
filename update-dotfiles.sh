#!/bin/sh

#ce script va dans ~/bin
#ne pas oublier d'ajouter ~/bin à PATH

usage()
{
	echo "usage: update-dotfiles pull|push"
	exit 1
}

if test $# != "1"; then
	usage
fi

if test $1 != "pull" && test $1 != "push"; then
	usage
fi

cd ~/.dotfiles

if test $1 = "pull"
then
	echo "pulling from: "`git remote -v | head -1 | cut -f2 | cut -d ' ' -f1`
	git $1
fi

FILES=`git ls-files | sed 's/^.*\.sh$//' | sed 's/^README$//'`
PUSH="false"

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
			if test $1 = "pull"; then
				echo "$DEST saved as $DEST.old"
				mv $DEST $DEST.old
			else
				echo "modified: $SRC"
				PUSH="true"
			fi
			cp $SRC $DEST
		fi
	else
		echo "new dotfile: $DEST"
		cp $SRC $DEST
	fi
done

if test $1 = "push"
then
	if test $PUSH = "true"
	then
		echo "git commit -a"
		git commit -am 'update'
		echo "pushing to origin master"
		git push origin master
	else
		echo "Nothing to push"
	fi
fi
