#!/bin/bash

path=`dirname $0`

ln -f $path/bash/bashrc ~/.bashrc
ln -f $path/bash/bash_profile ~/.bash_profile
ln -f $path/bash/bash_aliases ~/.bash_aliases

ln -f $path/ruby/gemrc ~/.gemrc
ln -f $path/ruby/irbrc ~/.irbrc
ln -f $path/ruby/rvmrc ~/.rvmrc

ln -f $path/git/gitconfig ~/.gitconfig
ln -f $path/git/gitignore ~/.gitignore
ln -f $path/autotest/autotest.rb ~/.autotest
ln -f $path/vim/vimrc ~/.vimrc
ln -f $path/ssh/config ~/.ssh/config
ln -f $path/tmux/tmux.conf ~/.tmux.conf

mkdir ~/.mplayer 2>/dev/null
ln -f $path/mplayer/config ~/.mplayer/config
