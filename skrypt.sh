#!/bin/bash
sudo apt update
sudo apt -y install xfce4 xfce4-goodies
sudo apt -y install tightvncserver
vncserver
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
touch ~/.vnc/xstartup
echo "#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &" > ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
vncserver
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb
