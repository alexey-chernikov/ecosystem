#!/bin/bash
sudo apt-get install vim-gnome ubuntu-restricted-extras git ruby rubygems msttcorefonts ssmtp mdadm ctags nvidia-current nvidia-settings chromium-browser chromium-codecs-ffmpeg-nonfree chromium-browser-inspector htop keepassx curl
# For ruby development
sudo apt-get install build-essential bison openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake
# For ruby gems: mysql etc.
sudo apt-get install libmysqlclient-dev libmagickwand-dev

sudo apt-get autoremove
cd && git clone git://github.com/malygos/vimfiles .vim && cd .vim && git submodule init && git submodule update
