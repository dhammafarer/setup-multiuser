#!/bin/bash

# plugin directory
pd=~/.vim/pack/vendor/start

echo
echo "INSTALLING PLUGINS"

[[ -d "$pd" ]] && rm -rf $pd
mkdir -p $pd

cd $pd

# plugins
git clone https://github.com/preservim/nerdtree.git && vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/easymotion/vim-easymotion.git
git clone https://github.com/mg979/vim-visual-multi
git clone https://github.com/bronson/vim-trailing-whitespace
git clone https://github.com/jiangmiao/auto-pairs

echo
echo "COPYING DOTFILES"
rm -rf ~/.vimrc > /dev/null 2>&1

cp ~/setup-multiuser/vimrc ~/.vimrc

# ------------------------------------------------------------------------

echo
echo "Done!"
echo
