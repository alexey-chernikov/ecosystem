#!/bin/bash

path=`dirname $0`

ln -f $path/bash/bashrc ~/.bashrc

ln -f $path/ruby/gemrc ~/.gemrc
ln -f $path/ruby/irbrc ~/.irbrc

ln -f $path/git/gitconfig ~/.gitconfig

ln -f $path/autotest/autotest.rb ~/.autotest

ln -f $path/vim/vimrc ~/.vimrc

mkdir ~/.mplayer 2>/dev/null
ln -f $path/mplayer/config ~/.mplayer/config
