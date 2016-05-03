#!/bin/bash
echo "  ########## INSTALLING ECLIPSE #########" 
echo " Select folder of extracted zip " 
PATH_BIN=$(zenity --file-selection --directory)

if [ ! -f "$PATH_BIN/eclipse" ]
then
    echo "File $FILE does not contain eclipse file  "
    exit
fi

printf ". .. .. .. .. .. ..  \n"
sudo echo "[Desktop Entry] 
Name=eclipse     
Type=Application
Exec=$PATH_BIN/eclipse
Terminal=false
Icon=$PATH_BIN/icon.xpm
Comment=Integrated Development Environment 
NoDisplay=false
Categories=Development;IDE;
Name[en]=eclipse" >/usr/share/applications/"eclipse.desktop"

printf ". .. .. .. .. .. ..  \n"

sudo desktop-file-install /usr/share/applications/"eclipse.desktop"

printf ". .. .. .. .. .. ..  \n"

cd /usr/local/bin
sudo rm -rf eclipse
sudo ln -s $PATH_BIN/eclipse

printf "\nRUN command eclipse\n"
