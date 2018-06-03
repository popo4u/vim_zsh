#!/bin/sh

if [ -f ~/.zshrc ]; then
    rm ~/.zshrc;
fi
ln -s ./zshrc ~/.zshrc

if [ -f ~/.vimrc ]; then
    rm ~/.vimrc;
fi
ln -s ./vimrc ~/.vimrc

# install git substree
# install incr
wget -P ~/.oh-my-zsh/plugins/incr http://mimosa-pudica.net/src/incr-0.2.zsh
