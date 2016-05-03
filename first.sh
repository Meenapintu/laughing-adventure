#!/bin/bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install build-essential geany nginx php mysql-server php-mysql  vim dconf-editor git cmake


sudo xhost +SI:localuser:lightdm
sudo su lightdm -s /bin/bash
gsettings set com.canonical.unity-greeter draw-grid false;exit




