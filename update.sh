#!/bin/bash

# copy .vimrc to ~
echo "Info: copy .vimrc."
cp ./.vimrc ~/
wait

# install plugin
echo "Info: install new plugins."
vim +PluginInstall +qall
wait

echo "Info: done."

exit 0
