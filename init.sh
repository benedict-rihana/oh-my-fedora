#!/bin/bash

mkdir ~/.local/bin
mkdir $HOME/.local/manuals

# echo "export USER_MAN=\$HOME/.local/manuals" >> $HOME/.bash_profile

echo "sherlocked" | sudo -S dnf update -y
echo ""
echo "sherlocked" | sudo -S dnf group install "Development Tools" -y
echo ""
echo "sherlocked" | sudo -S dnf install gcc-c++  -y
echo ""
echo "sherlocked" | sudo -S dnf install yum-utils -y
echo ""
# echo "sherlocked" | sudo -S dnf update -y
# echo ""



git config --global user.name "Benedict"
git config --global user.email "shikifuchi@hotmail.com"
git config --global credential.helper store
git config --global http.sslVerify false

echo "sherlocked" | sudo -S dnf  install ranger -y
# img preview
sudo dnf install w3m -y
sudo dnf install w3m-img -y

echo "sherlocked" | sudo -S dnf install slick-greeter -y

sudo dnf install ibus-pinyin -y
# sudo dnf copr enable antergos/lightdm-webkit2-greeter -y

sudo dnf install materia-gtk-theme -y


ranger --copy-config=all

sudo dnf install python python-devel -y
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

sudo dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo dnf install -y neovim python3-neovim

echo "sherlocked"| sudo -S dnf copr enable atim/lazygit -y
sudo dnf install lazygit -y

sudo dnf install dotnet -y

# list the modules for nodejs
# dnf module list nodejs
# sample: dnf module install nodejs:16
sudo dnf install nodejs -y
sudo dnf install golang -y
echo "sherlocked"| sudo -S dnf install cargo -y

# the vscode installation is too slow.
#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
#
#dnf check-update
#echo "sherlocked" | sudo -S dnf install code -y

# install ftp client
echo "sherlocked" | sudo -S dnf install filezilla -y

echo "sherlocked" | sudo -S dnf install chromium  -y

echo "sherlocked" | sudo -S dnf install libstdc++ libstdc++-static  -y

echo "sherlocked" | sudo -S cp crontabs /var/spool/cron/benedict
# sudo dnf install sxhkd 
# curl -s "https://get.sdkman.io" | bash

# cp bash_rc $HOME/.bashrc
cp bash_profile $HOME/.bash_profile
cp custom_sh_rc $HOME/.custom_sh_rc

cp -rf xfce4 $HOME/.config/

if [[ ! -d $HOME/.local/share/xfce4/terminal ]]; then
  mkdir -p $HOME/.local/share/xfce4/terminal
fi

mv $HOME/.config/xfce4/terminal/colorschemes $HOME/.local/share/xfce4/terminal/

source $HOME/.bash_profile
source $HOME/.bashrc

exec "./nerd font/linux.install.sh"
