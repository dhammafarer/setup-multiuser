#!/bin/bash

# plugin directory
pd=~/.vim/pack/vendor/start

echo
echo "INSTALLING PLUGINS"

[[ -d "$pd" ]] && rm -rf $pd && mkdir -p $pd

# nerd tree
git clone https://github.com/preservim/nerdtree.git $pd/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

echo
echo "COPYING DOTFILES"
rm -rf ~/.vimrc > /dev/null 2>&1

cp ~/setup-multiuser/vimrc ~/.vimrc

# ------------------------------------------------------------------------

echo
echo "Done!"
echo
