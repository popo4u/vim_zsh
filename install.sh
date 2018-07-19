#!/bin/sh

if [ -f ~/.zshrc ]; then
    cp ~/.zshrc ~/.zshrc.bak
    rm ~/.zshrc;
fi
ln -s ~/.vim/zshrc ~/.zshrc

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.bak
    rm ~/.vimrc;
fi
ln -s ~/.vim/vimrc ~/.vimrc

if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.bak
    rm ~/.bashrc;
fi
ln -s ~/.vim/bashrc ~/.bashrc

if [ -f ~/.tmux.conf ]; then
    cp ~/.tmux.conf ~/.tmux.conf.bak
    rm ~/.tmux.conf;
fi
ln -s ~/.vim/.tmux.conf ~/.tmux.conf

# install git substree
# install incr
wget -P ~/.oh-my-zsh/plugins/incr http://mimosa-pudica.net/src/incr-0.2.zsh
