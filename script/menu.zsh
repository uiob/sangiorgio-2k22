#!/bin/zsh
clear

source printAsciiArt.zsh

printAscii ./../txt/menu.txt

echo "- ir --> per info su come comunicare con le radio"
sleep 0.4
echo "- id --> per info su come usare il decodificatore"
sleep 0.4
echo "- d  --> per utilizzare il decodificatore"
sleep 0.4
echo "- c  --> per avere le coordinate del punto materiali"
sleep 0.4
echo "- p  --> per inserire la password e VINCERE la prova"
sleep 0.4

# fullname="USER INPUT"
echo -n "\nInserisci comando: " 
read comando

sleep 0.5

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
elif [ "$comando" = "c" ]
then
  zsh coordinate.zsh
  
else
  echo ""
  echo $'\e[1;31m'comando non valido!$'\e[0m'
  sleep 1.8
  zsh menu.zsh
fi

echo " "
echo "$fullname"