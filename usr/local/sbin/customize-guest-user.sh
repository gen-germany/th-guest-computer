#!/bin/bash
backgroundImage="/usr/local/background.png"
msgTitle="Temporäre Anmeldung -- temporary session"
msgText="Alle Daten werden aus Gründen des Datenschutzes beim Herunterfahren gelöscht.\!\nWenn du Dateien dauerhaft speichern möchtest, musst du sie beispielsweise auf einem USB-Stick sichern.\n\n\nAll data will be deleted during shutdown due to reasons of privacy protection\!\nIf you want to save files permanently, you will have to save them for example to a USB pen drive."

#Bildschirmhintergrund setzen
gsettings set org.gnome.desktop.background picture-uri "file://$backgroundImage"
gsettings set org.gnome.desktop.background picture-options 'scaled'
gsettings set org.gnome.desktop.background primary-color '#126412'

#Bildschirmsperre verhinden
gsettings set org.gnome.desktop.lockdown disable-lock-screen true

#Favoriten in Dock definieren
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'firefox.desktop', 'libreoffice-writer.desktop', 'libreoffice-calc.desktop', 'libreoffice-impress.desktop', 'vlc.desktop', 'yelp.desktop']"

#xauth für cronjob exportieren
xauth extract ~/.tmp_xauth $DISPLAY

#Hinweis Popup
zenity --warning --ellipsize --display=:0 --title "$msgTitle" --text "$msgText"
