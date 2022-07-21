#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER=$(ls -l `tty` | awk '{print $3}')
eval cd ~$USER
HOME=$(pwd)

git config --global user.email "thierywilliam99@gmail.com"

cd $HOME

rm -rf .vim .bash_profile .vimrc

cp $DIR/.bash_profile_mac .bash_profile
cp $DIR/.vimrc .

chown $USER:staff .bash_profile .vimrc

cp -r $DIR/.vim .

git clone https://github.com/scrooloose/nerdtree .vim/bundle/nerdtree

chown -R $USER:staff .vim

cd /var/root

rm -rf .vim .bashrc .vimrc

ln -s $HOME/.bash_profile .bashrc
ln -s $HOME/.vimrc .
ln -s $HOME/.vim .

