#!/bin/bash

echo "Info: copy .vimrc to HOME."
cp ./.vimrc ~/
wait

echo "Info: install new plugins."
vim +PluginInstall +qall
wait

echo "Info: copy .tmux.conf to HOME."
cp ./.tmux.conf ~/
wait

echo "Info: copy .eslintrc to HOME."
cp ./.eslintrc ~/
wait

echo "Info: copy .stylelintrc to HOME."
cp ./.stylelintrc ~/
wait

echo "Info: done."

exit 0
