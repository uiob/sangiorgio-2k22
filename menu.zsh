clear

echo " MENU' COMANDI:
- p --> per inserire la password e VINCERE la prova.
- c --> per avere delle informazioni sulle coordinate.
- bla bla bla   "

# fullname="USER INPUT"
read -p "Inserisci comando: " comando

if [ "$comando" = "p" ]
then
  ./password.zsh
elif [ "$comando" = "c" ]
then
  ./coordinate.zsh
else
  
  echo "Inserici comando CORRETTO"
  sleep 1.2
  ./menu.zsh
fi

echo " "
echo "$fullname"