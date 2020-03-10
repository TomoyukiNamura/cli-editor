#!/bin/bash

function command_exists {
    command -v "$1" > /dev/null;
}

# install git vim 3
if ! command_exists git ; then
    apt update
    wait
    apt install -y git vim
    wait
else
    echo "Info: command git already exists."
fi

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

# copy .vimrc to ~
if [ ! -e ~/.vimrc ];then
    echo "Info: copy .vimrc."
    cp ./.vimrc ~/
    wait

    # install plugin
    echo "Info: install plugins"
    vim +PluginInstall +qall

else
    echo "Info: ~/.vimrc already exists."
fi
wait

echo "Info: done."

exit 0
