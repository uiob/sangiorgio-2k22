#!/bin/zsh
clear

source printAsciiArt.zsh

printAscii ./../txt/menu.txt

echo "- ir --> per info su come comunicare con le radio"
sleep 0.4
echo "- id --> per info su come usare il decodificatore"
sleep 0.4
echo "- d --> per utilizzare il decodificatore"
sleep 0.4
echo "- p --> per inserire la password e VINCERE la prova."

# fullname="USER INPUT"
echo -n "Inserisci comando: " 
read comando

if [ "$comando" = "p" ]
then
  zsh password.zsh
elif [ "$comando" = "d" ]
then
  zsh decodificatore.zsh
elif [ "$comando" = "ir" ]
then
  zsh infoRadio.zsh
  elif [ "$comando" = "id" ]
then
  zsh infoDecodificatore.zsh
else
  
  echo "comando non valido!"
  sleep 1.2
  zsh menu.zsh
fi

echo " "
echo "$fullname"