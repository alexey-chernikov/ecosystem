#!/bin/bash

path=`dirname $0`

ln -f $path/bash/bashrc ~/.bashrc
ln -f $path/ruby/irbrc ~/.irbrc
ln -f $path/git/gitconfig ~/.gitconfig
ln -f $path/autotest/autotest.rb ~/.autotest
