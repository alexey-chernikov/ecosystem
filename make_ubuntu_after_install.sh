#!/bin/bash
sudo apt-get install vim-gnome ubuntu-restricted-extras git ruby rubygems msttcorefonts ssmtp mdadm ctags nvidia-current nvidia-settings chromium-browser chromium-codecs-ffmpeg-nonfree chromium-browser-inspector
sudo apt-get autoremove
cd && git clone git://github.com/malygos/vimfiles .vim && cd .vim && git submodule init && git submodule update
