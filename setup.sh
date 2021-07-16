#!/bin/bash

pushd $HOME 1> /dev/null 2> /dev/null

ln -s Workspace/github/vim_settings/.bashrc .bashrc
ln -s Workspace/github/vim_settings/.inputrc .inputrc
ln -s Workspace/github/vim_settings/.tmux.conf .tmux.conf
ln -s Workspace/github/vim_settings/.vim .vim
ln -s Workspace/github/vim_settings/.vimrc .vimrc

popd 1> /dev/null 2> /dev/null
