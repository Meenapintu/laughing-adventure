mkdir temp
cd temp
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
curl -O	https://download.sublimetext.com/sublime-text_build-3103_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo dpkg -i sublime-text_build-3103_amd64.deb

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java8-installer
