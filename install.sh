#!/bin/sh

if [ -f ~/.zshrc ]; then
    cp ~/.zshrc ~/.zshrc.bak
    rm ~/.zshrc;
fi
ln -s ./zshrc ~/.zshrc

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.bak
    rm ~/.vimrc;
fi
ln -s ./vimrc ~/.vimrc

if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.bak
    rm ~/.bashrc;
fi
ln -s ./bashrc ~/.bashrc

# install git substree
# install incr
wget -P ~/.oh-my-zsh/plugins/incr http://mimosa-pudica.net/src/incr-0.2.zsh
