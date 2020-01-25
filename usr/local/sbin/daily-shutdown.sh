#!/bin/bash
username="gastnutzer"
msg1Title="Der Computer fährt bald herunter -- The computer will shut down soon"
msg1Text="Der Computer fährt in 15 Minuten herunter\!\nBitte speichere alle Daten auf einem externen Medium und schließe alle Programme.\nDu kannst den Computer auch jetzt schon manuell herunter fahren oder neu starten, wenn du im Anschluss weiter an ihm arbeiten willst.\n\n\nThe computer will shut down in 15 minutes\!\nPlease save all your data on an external media and close all applications.\nYou can also shut down the computer manually now already or reboot it, if you want to continue working afterwards."
msg2Title="Der PC wird herunter gefahren -- The computer will shut down"
msg2Text="Der Computer fährt in 5 Minuten herunter\!\nBitte speichere JETZT alle Daten auf einem externen Medium und schließe alle Programme.\nDu kannst den Computer auch jetzt schon manuell herunter fahren oder neu starten, wenn du im Anschluss weiter an ihm arbeiten willst.\n\n\nThe computer will shut down in 5 minutes\!\nPlease save all your data NOW on an external media and close all applications.\nYou can also shut down the computer manually now already or reboot it, if you want to continue working afterwards."

xauth merge "/home/$username/.tmp_xauth"
export DISPLAY=:0.0

zenity --info --ellipsize --display=:0 --timeout=600 --title "$msg1Title" --text "$msg1Text"
sleep 10m
zenity --warning --ellipsize --display=:0 --timeout=300 --title "$msg2Title" --text "$msg2Text"

shutdown -h 5
