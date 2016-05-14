#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install build-essential geany vim dconf-editor cmake make unity-tweak-tool codeblocks 


sudo xhost +SI:localuser:lightdm
sudo su lightdm -s /bin/bash
gsettings set com.canonical.unity-greeter draw-grid false;exit




