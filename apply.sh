#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER=$(ls -l `tty` | awk '{print $3}')
eval cd ~$USER
HOME=$(pwd)

apt-get update 
apt-get --yes install aptitude
aptitude -y install vim
aptitude -y install git

git config --global user.email "joseph.garrone.gj@gmail.com"

cd $HOME

rm -rf .vim .bashrc .vimrc

cp $DIR/.bashrc .
cp $DIR/.vimrc .

chown $USER:$USER .bashrc .vimrc

cp -r $DIR/.vim .

git clone https://github.com/scrooloose/nerdtree .vim/bundle/nerdtree

chown -R $USER:$USER .vim

cd /root

rm -rf .vim .bashrc .vimrc

ln -s $HOME/.bashrc .
ln -s $HOME/.vimrc .
ln -s $HOME/.vim .

