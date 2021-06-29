if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mkdir github

function zshsetup { 
git clone https://github.com/usrnamewastaken/zshrc
cp ~/zshrc/Linux/.zshrc /etc/zsh/zshrc
ln -s /etc/zsh/zshrc ~/.zshrc
function packages {
pacman -Syy gst-plugins-good gst-plugins-bad webkit2gtk gcr python-pywal libxinerama libxft ttf-hack ttf-font-awesome pipewire pipewire alsa-utils pipewire-alsa xorg-server networkmanager xorg-server xautolock zsh zsh-syntax-highlighting
}

function wallpapers {
git clone https://github.com/usrnamewastaken/wallpapers

wal -i /home/adrian/github/wallpapers/DarkCity.jpg

}

function dwm {
cd /home/adrian/github
git clone https://github.com/usrnamewastaken/dwm
cd dwm 
sudo make clean install
}

function dmenu
cd /home/adrian/github
git clone https://github.com/usrnamewstaken/dmenu
sudo make clean install
}
function st { 
cd /home/adrian/github
git clone https://github.com/usrnamewstaken/st
sudo make clean install
}

function slstatus {
cd /home/adrian/github
git clone https://github.com/usrnamewstaken/slstatus
sudo make clean install
}

function scripts {
cd /home/adrian/github
git clone https://github.com/usrnamewstaken/scripts
mkdir /home/adrian/.dwm
cp /home/adrian/github/scripts/autostart.sh /home/adrian/.dwm/

cp /home/adrian/github/scripts/powermenu /bin
cp /home/adrian/github/scripts/wallpaper /bin
cp /home/adrian/github/scripts/recompile /bin
cp /home/adrian/github/scripts/.xinitrc /home/adrian
cp /home/adrian/github/scripts/.zprofile /home/adrian

}

function slock {

cd /home/adrian/github
git clone https://github.com/usrnamewstaken/slock
sudo make clean install
}

function surf { 
cd /home/adrian/github
 git clone https://github.com/usrnamewstaken/surf
 sudo make clean install
}

function tabbed { 
cd /home/adrian/github
git clone https://github.com/usrnamewstaken/tabbed
sudo make clean install


packages
zshsetup
wallpapers
dwm
dmenu
st
slstatus
scripts
slock
surf
tabbed
