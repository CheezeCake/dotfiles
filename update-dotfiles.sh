#!/bin/sh

#ce script va dans ~/bin
#ne pas oublier d'ajouter ~/bin à PATH

cd ~/.dotfiles
git pull

git ls-files | while read file
do
	if test -f ~/$file
	then
		cmp ~/$file $file > /dev/null
		if test $? != 0
		then
			echo "~/$file saved as $file.old"
			mv ~/$file ~/$file.old
			cp $file ~/$file
		fi
	else
		echo "new dotfile: ~/$file"
		cp $file ~/$file
	fi
done
