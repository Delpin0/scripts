#!/bin/bash


#Install apps
apt update && apt upgrade -y && apt autoremove -y 
apt install curl git btop terminator -y

#Install and configure Starship
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Inconsolata.zip
unzip Inconsolata.zip
cp InconsolataNerdFontMono-Bold.ttf /usr/share/fonts/
curl -sS https://starship.rs/install.sh -y | sh
echo 'eval "$(starship init bash)"' >> /root/.bashrc
echo 'eval "$(starship init bash)"' >> ./.bashrc
starship preset tokyo-night -o .config/starship.toml

#Configure Bash
echo '"\e[A":history-search-backward' >> /etc/inputrc
echo '"\e[B":history-search-forward' >> /etc/inputrc

#Configure nano
sed -i 's/# set autoindent/set autoindent/' /etc/nanorc
sed -i 's/# set constantshow/set constantshow/' /etc/nanorc
sed -i 's/set nowrap/#set nowrap/' /etc/nanorc
sed -i 's/# set smarthome/set smarthome/' /etc/nanorc
sed -i 's/# set smooth/set smooth/' /etc/nanorc
sed -i 's/# set softwrap/set softwrap/' /etc/nanorc
sed -i 's/# set tabsize 8/set tabsize 4/' /etc/nanorc
sed -i 's/# set tabstospaces/set tabstospaces/' /etc/nanorc
