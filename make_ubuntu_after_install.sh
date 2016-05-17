#sudo apt update
#sudo apt upgrade
#sudo add-apt-repository ppa:webupd8team/java
#sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
#sudo add-apt-repository ppa:wine/wine-builds
#sudo apt update

#DATA_FOLDER=/media/data
#ln -sf $DATA_FOLDER/Загрузки ~/Загрузки
#ln -sf $DATA_FOLDER/Dropbox ~/Dropbox

sudo apt install vim-gtk3 nvidia-settings guake git ubuntu-restricted-extras steam shutter nautilus-dropbox flashplugin-installer xubuntu-community-wallpapers-xenial unity-tweak-tool libavcodec-extra htop nmap keepassx mc doublecmd-gtk ncdu guake-indicator gimp doublecmd-gtk p7zip synaptic wmctrl ssh nfs-common tmux pidgin system-config-lvm youtube-dl vlc unity-tweak-tool pv pavucontrol cifs-utils whois filezilla

sudo apt remove thunderbird

# Developer packages
sudo apt install mysql-server libmysqlclient-dev build-essential mysql-workbench nodejs npm giggle giggle-personal-details-plugin giggle-terminal-view-plugin postgresql postgresql-contrib libpq-dev pgadmin3 virt-manager android-tools-adb pwgen
# Home packages
#sudo apt install kodi deluge calibre

# RVM install
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#curl -sSL https://get.rvm.io | bash -s stable

#rvm install 2.3
#rvm install 2.1
#rvm install ree

# Not works yet: myrulib

#Oracle Java 8
#sudo apt install oracle-java8-installer

#Ubuntu Make
#sudo apt install ubuntu-make


#Interesting stuff
#sudo apt-get install bleachbit libdvd-pkg

#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#sudo apt-get install -f

#Viber
#cd ~/Загрузки/
#rm -fr viber.deb*
#wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
#sudo dpkg -i viber.deb

#git clone git://github.com/alexey-chernikov/ecosystem .ecosystem
#cd .ecosystem
#./make_environment.sh

# Wine development
#sudo dpkg --add-architecture i386
#sudo apt install --install-recommends winehq-devel
#sudo apt install winetricks
