#!/data/data/com.termux/files/usr/bin/bash
# Downloading the required dependencies to run a script without error
#################################
#    Project : T-Megapackage    #
#       author : Nurx.          #
#################################
clear

# Updating terminal using pkg
echo 
echo -e "\e[32m[\e[34m*\e[32m]\e[36m Installing Termux-Megapackage \e[m"
echo

pkg update -y
pkg upgrade -y

# Installing core system utilities and programming languages
pkg install python ruby ncurses-utils curl git wget zip unzip nano -y

# Installing packages via pip and gem
pip install lolcat
gem install lolcat 

# Copying script to binary path safely using $PREFIX
if [ -d "m-pkg" ]; then
    cp -R m-pkg "$PREFIX/bin/"
    chmod +x "$PREFIX/bin/m-pkg"
fi

echo
echo -en "\e[92m Do you wish to see a practical video on it (y/n)? \e[m "
read -r answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    # Requires Termux:API to be installed on Android
    if command -v am &> /dev/null; then
        am start -a android.intent.action.VIEW -d https://youtu.be/7xZFg67y1Ug > /dev/null 2>&1
    else
        echo -e "\e[31mTermux:API not found. Open manually: https://youtu.be/7xZFg67y1Ug\e[m"
    fi
fi

echo 
echo -e "\e[33m Run \e[32m m-pkg \e[33m from anywhere to install megapackage tools \e[m"
echo

# Cleanup
cd "$HOME" || exit
rm -rf Termux-Mega
package
