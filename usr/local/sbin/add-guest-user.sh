#!/bin/bash
username="gastnutzer"
realname="Gastnutzer"
password="FOO"

adduser --gecos "$realname,,,," --disabled-password --quiet "$username"
echo "$username:$password" | chpasswd
#Gruppen audio/video hinzufügen?? Standard laut /etc/adduser.conf: dialout cdrom floppy audio video plugdev users

mkdir "/home/$username/.config/"
mkdir "/home/$username/.config/autostart/"
chown "$username:$username" "/home/$username/.config"
chown "$username:$username" "/home/$username/.config/autostart"
cp "/usr/local/de.schloss_tempelhof.UserCustomization.desktop" "/home/$username/.config/autostart/"
chown "$username:$username" "/home/$username/.config/autostart/de.schloss_tempelhof.UserCustomization.desktop"
touch "/home/$username/.config/gnome-initial-setup-done"
chown "$username:$username" "/home/$username/.config/gnome-initial-setup-done"
