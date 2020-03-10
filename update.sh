#!/bin/bash

# copy .vimrc to ~
echo "Info: copy .vimrc to HOME."
cp ./.vimrc ~/
wait

# install plugin
echo "Info: install new plugins."
vim +PluginInstall +qall
wait

# copy .vimrc to ~
echo "Info: copy .tmux.conf to HOME."
cp ./.tmux.conf ~/
wait

echo "Info: done."

exit 0
