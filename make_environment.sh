#!/bin/bash

path=`pwd`

#git clone --depth 5 https://github.com/StevenBlack/hosts.git
#cp hosts/hosts /etc/hosts

ln -f $path/bash/bashrc ~/.bashrc
ln -f $path/bash/bash_profile ~/.bash_profile
ln -f $path/bash/bash_aliases ~/.bash_aliases
ln -f $path/bash/inputrc ~/.inputrc

ln -f $path/ruby/gemrc ~/.gemrc
ln -f $path/ruby/irbrc ~/.irbrc
ln -f $path/ruby/rvmrc ~/.rvmrc
ln -f $path/ruby/railsrc ~/.railsrc

ln -sf $path/bin ~/.bin

ln -f $path/git/gitconfig ~/.gitconfig
ln -f $path/git/gitignore ~/.gitignore
ln -f $path/autotest/autotest.rb ~/.autotest
ln -f $path/vim/vimrc ~/.vimrc
ln -f $path/ssh/config ~/.ssh/config
ln -f $path/tmux/tmux.conf ~/.tmux.conf
ln -f $path/zsh/zshrc ~/.zshrc
# Neovim configuration
ln -sf $path/nvim ~/.config/nvim

#Vim
if [ ! -d ~/.vim ]; then
    echo "VIM set up..."
    mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/tmp/undo
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall +qall
fi

#Mplayer
mkdir ~/.mplayer 2>/dev/null
ln -f $path/mplayer/config ~/.mplayer/config


# zsh steps
if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
