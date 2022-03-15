#bin/bash
clear
echo
echo "        Setting up first time installation.....!"
echo
cd $HOME
pkg install python -y
pkg install python2 -y
pkg install tor -y
pkg install git -y
pkg install wget -y
pip install lolcat
pip install --upgrade pip
pip3 install requests --upgrade
pip3 install requests[socks]
pip3 install stem
pip3 install instagram-py
cd $HOME/igcrack
echo "Now Extracting Files...!!"
echo
tar -xvf core.tar.gz
tar -xvf main.tar.gz
tar -xvf pass.tar.gz
tar -xvf stylesheets.tar.gz
clear
echo "now removing unnecessary Files .....!"
echo
rm -rf core.tar.gz
rm -rf main.tar.gz
rm -rf pass.tar.gz
rm -rf stylesheets.tar.gz
clear
echo "installing config.json....!"
echo
cd $HOME
wget -O ~/instapy-config.json "https://git.io/v5DGy"
cd $HOME/igcrack
cd /data/data/com.termux/files/usr/etc/tor
rm torrc
cd $HOME/igcrack
mv torrc /data/data/com.termux/files/usr/etc/tor
cd $HOME
tor
clear
echo "installation complete👌 You can Now Run The Tool"
echo
sleep 4
clear
exit