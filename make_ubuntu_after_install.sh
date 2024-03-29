# Ubuntu 21.04 steps

sudo apt install curl vim git tig htop nmap mc ncdu p7zip ssh nfs-common tmux pv cifs-utils whois tmuxinator default-jre zsh iotop ranger gnupg2
sudo apt install ubuntu-restricted-extras gnome-tweak-tool doublecmd-gtk mpv pavucontrol filezilla keepassxc rxvt-unicode minitube solaar
#sudo snap install keepassxc

# Developer packages
sudo apt install giggle pwgen meld mysql-client postgresql-client libmysqlclient-dev imagemagick nodejs npm libpq-dev libncurses5-dev
#mysql-workbench

# Ruby dependencies
sudo apt install libreadline-dev libsqlite3-dev libmagickwand-dev libxslt1-dev

IFS=$'\n'       # make newlines the only separator
for snappackage in $(cat snaps)
do
    sudo snap install $snappackage
done
unset IFS

# Docker
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo apt-key fingerprint 0EBFCD88
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo apt-get install docker-ce docker-ce-cli containerd.io

# System administrator packages
# sudo apt-get install qemu-kvm libvirt-bin

#git clone git://github.com/alexey-chernikov/ecosystem .ecosystem
#cd .ecosystem
#./make_environment.sh
