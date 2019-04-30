#!/usr/bin/env bash
# -*- coding: utf-8 -*-

##############################################
#
#  Author: zhangkai
#  Email: kai.zhang1@nio.com
#  Last modified: 2019-03-18 20:13:08
#
##############################################

if ! command -v nvim && (! vim --version | grep '+python3' 1>/dev/null); then
    echo 'vim should be installed with python3'
    exit 1
fi

pip install -U autopep8 flake8 neovim jedi
rm -rf ~/.vimrc ~/.vim
git clone --recursive https://git.coding.net/zkdfbb/vim.git ~/.vim
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim

echo | vim +PlugInstall +qall
if command -v nvim; then
    echo | nvim +UpdateRemotePlugins
fi
