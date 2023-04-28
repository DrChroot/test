#!/bin/bash

# Update the package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install the Budgie desktop environment
sudo apt install budgie-desktop -y

# Install the Arc GTK theme and the Papirus icon theme
sudo apt install arc-theme papirus-icon-theme -y

# Install the Plank dock
sudo apt install plank -y

# Set the Arc GTK theme and the Papirus icon theme
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
gsettings set org.gnome.desktop.interface icon-theme "Papirus"

# Set the Plank dock as the default dock
gsettings set org.budgie.desktop.session.desktop dock-type "plank"

# Add the Chrome OS wallpaper
wget https://i.imgur.com/G1hJHpl.jpg -O chromeos-wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/chromeos-wallpaper.jpg"

# Add the Chrome OS app launcher icon
sudo wget -O /usr/share/icons/budgie/32x32/places/start-here.svg https://i.imgur.com/1KjgGrs.png

# Set the Chrome OS app launcher icon as the default menu icon
gsettings set org.budgie-desktop.settings icon-theme "Adwaita"
gsettings set org.budgie-desktop.settings menu-icon "start-here"

# Restart the Budgie desktop environment
budgie-panel --replace &
