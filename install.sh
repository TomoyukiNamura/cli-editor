#!/bin/bash

#function command_exists {
#    command -v "$1" > /dev/null;
#}
#
## install git vim 3
#if ! command_exists git ; then
#    apt update
#    wait
#    apt install -y git vim
#    wait
#else
#    echo "Info: command git already exists."
#fi


# install use commands
apt update
wait
apt install -y git vim tmux
wait

# make dir ~/. vim/bundle
if [ ! -d ~/.vim/bundle ];then
    mkdir -p ~/.vim/bundle
else
    echo "Info: ~/. vim/bundle already exists."
fi
wait

# clone Vundle.vim.git
if [ ! -d ~/.vim/bundle/Vundle.vim ];then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Info: Vundle. vim already exists."
fi
wait

if [ ! -e ~/.vimrc ];then
    # copy .vimrc to ~
    echo "Info: copy .vimrc. to HOME"
    cp ./.vimrc ~/
    wait

    # install plugin
    echo "Info: install plugins"
    vim +PluginInstall +qall
else
    echo "Info: ~/.vimrc already exists."
fi
wait

if [ ! -e ~/.tmux.conf ];then
    # copy .tmux.conf to  ~
    echo "Info: copy .tmux.conf to HOME."
    cp ./.tmux.conf ~/
    wait
else
    echo "Info: ~/.tmux.conf already exists."
fi
wait


echo "Info: done."

exit 0
