#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER=$(who am i | awk '{print $1}')
eval cd ~$USER
HOME=$(pwd)

apt-get update 
apt-get --yes install aptitude
aptitude -y install vim
aptitude -y install git

git config --global user.email "joseph.garrone.gj@gmail.com"

cd $DIR/.vim/bundle

rm -rf nerdtree
git clone https://github.com/scrooloose/nerdtree
chown -R $USER:$USER nerdtree

ls -l

cd $HOME

rm -rf .vim .bashrc .vimrc

ln -s $DIR/.bashrc .
ln -s $DIR/.vimrc .
ln -s $DIR/.vim .

chown $USER:$USER .bashrc .vimrc .vim

cd /root

rm -rf .vim .bashrc .vimrc

ln -s $HOME/.bashrc .
ln -s $HOME/.vimrc .
ln -s $HOME/.vim .

