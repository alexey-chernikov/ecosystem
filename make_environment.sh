#!/bin/bash

path=`pwd`

#git clone --depth 5 https://github.com/StevenBlack/hosts.git
#cp hosts/hosts /etc/hosts

ln -sf $path/bash/bashrc ~/.bashrc
ln -sf $path/bash/bash_profile ~/.bash_profile
ln -sf $path/bash/bash_aliases ~/.bash_aliases
ln -sf $path/bash/inputrc ~/.inputrc

ln -sf $path/ruby/gemrc ~/.gemrc
ln -sf $path/ruby/irbrc ~/.irbrc
#ln -sf $path/ruby/rvmrc ~/.rvmrc
ln -sf $path/ruby/railsrc ~/.railsrc
mkdir -p ~/.bundle
ln -sf $path/ruby/bundle_config ~/.bundle/config

if [[ ! -e ~/.bin ]]; then
    ln -sf $path/bin ~/.bin
fi

ln -sf $path/git/gitconfig ~/.gitconfig
ln -sf $path/git/gitignore ~/.gitignore
ln -sf $path/autotest/autotest.rb ~/.autotest
ln -sf $path/vim/vimrc ~/.vimrc
ln -sf $path/ssh/config ~/.ssh/config
ln -sf $path/tmux/tmux.conf ~/.tmux.conf
ln -sf $path/zsh/zshrc ~/.zshrc
ln -sf $path/zsh/p10k.zsh ~/.p10k.zsh
# Neovim configuration
mkdir -p ~/.config/nvim
ln -sf $path/nvim/init.vim ~/.config/nvim/init.vim

# Fonts installation
mkdir -p ~/.local/share/fonts
cp $path/fonts/* ~/.local/share/fonts/

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
    echo "Oh-my-zsh set up..."
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
    omz update # update oh my zsh by embedded update mechanism
fi

[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] &&   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-nvm ] && git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

if [ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# Install asdf
if [ ! -d ~/.asdf ]; then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
    cd ~/.asdf
    git checkout "$(git describe --abbrev=0 --tags)"
fi

# Rbenv installation
if [ ! -d ~/.rbenv ]; then
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
fi

# fzf installation
if [ ! -d ~/.fzf ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all
else
    cd ~/.fzf
    git pull
    ~/.fzf/install --all
fi
