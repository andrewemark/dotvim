#!/bin/sh

echo -e "\nSETTING UP SYMBOLIC LINKS..."
ln -sv ~/.vim/vimrc ~/.vimrc
ln -sv ~/.vim/gvimrc ~/.gvimrc

echo -e "\nINSTALLING VUNDLE, THE VIM PLUGIN MANAGER, ..."
git clone -v https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo -e "\nINSTALLING PLUGINS, MAY TAKE A WHILE ..."
vim -c "execute 'BundleInstall' | quitall"

echo -e "\nFINISHED!  HAPPY VIMMING!"
