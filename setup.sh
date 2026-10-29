#!/data/data/com.termux/files/usr/bin/bash
# Downloading the required dependencies to run a script without error
#################################
#    Project : T-Megapackage    #
#     author : nmxnur           #
#################################
clear

# Updating terminal using correct pkg syntax
echo 
echo -e "\e[32m[\e[34m*\e[32m]\e[36m Installing Termux-Megapackage \e[m"
echo

pkg update -y
pkg upgrade -y

# Installing core system utilities and programming languages safely
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
echo -e "\e[32m[\e[32m+\e[32m]\e[92m Setup completed successfully! Launching m-pkg... \e[m"
echo

# Cleanup temporary files
cd "$HOME" || exit
rm -rf Termux-Megapackage

# Run the m-pkg command automatically
m-pkg
