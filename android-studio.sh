#!/bin/bash
echo "########### INSTALLING ANDROID STUDIO#########" 
echo "Select bin folder of extracted zip" 
PATH_BIN=$(zenity --file-selection --directory)

if [ ! -f "$PATH_BIN/studio.sh" ]
then
    echo "File $FILE does not contain studio.sh file  "
    exit
fi

printf ". .. .. .. .. .. ..  \n"
sudo echo "[Desktop Entry] 
Name=Android Studio     
Type=Application
Exec=$PATH_BIN/studio.sh
Terminal=false
Icon=$PATH_BIN/studio.png
Comment=Integrated Development Environment 
NoDisplay=false
Categories=Development;IDE;
Name[en]=Android Studio" >/usr/share/applications/"android studio.desktop"

printf ". .. .. .. .. .. ..  \n"

sudo desktop-file-install /usr/share/applications/"android studio.desktop"

printf ". .. .. .. .. .. ..  \n"

cd /usr/local/bin
sudo rm -rf studio.sh
sudo ln -s $PATH_BIN/studio.sh

printf "\nRUN command studio.sh\n"
