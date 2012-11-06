#!/bin/bash

function linkit {
	source=~/dotfiles/$1
	destination=~/$2
	if [ ! -e $destination ] || [ -L $destination ]; then
		rm -rf $destination
		ln -s $source $destination
	else
		echo $destination is not an symbolic link
		exit 1
	fi
}
linkit bash_profile .bash_profile
linkit vimrc .vimrc
linkit vim .vim
