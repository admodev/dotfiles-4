#!/bin/bash

# get the dir of the current script
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# -p says to create the dir if it doesn't exist already.
mkdir -p ~/.config
mkdir -p ~/.vim/autoload

if [[ ! -a ~/.vim/autoload/plug.vim ]]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

ln -sf $script_dir/vimrc ~/.vimrc
ln -sf $script_dir/vimrc_gui ~/.vimrc_gui
ln -sf $script_dir/vimrc_common ~/.vimrc_common
ln -sf $script_dir/vimrc_plugin ~/.vimrc_plugin
ln -snf $script_dir/spell ~/.vim/spell
ln -snf $script_dir/UltiSnips ~/.vim/UltiSnips

# nvim
ln -sf ~/.vim ~/.config/nvim
ln -sf ~/.vimrc ~/.config/nvim/init.vim
