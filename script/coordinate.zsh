#!/bin/zsh
clear

source printAsciiArt.zsh

echo "Per proteggere le informzioni da membri esetrni alla squadra, le coordinate sono protette da un codice"
sleep 3
echo "\nInserisci il codice per avere le coordinate"

echo -n "Codice: "
read codice

if [ "$codice" = "inscodice" ]
then
  sleep 0.4
  echo "\ncodice corretto!"
  sleep 2
  zsh infoMateriale.zsh
elif [ "$codice" = "nondec" ]
then
  echo ""
  echo $'\e[1;31m'Codice non valido$'\e[0m'
  sleep 1.5
  echo "\nIl codice è in un formato non riconosciuto!"
  sleep 3
else
  echo ""
  echo $'\e[1;31m'Codice non valido$'\e[0m'
  sleep 1.5
fi

    sleep 1
    echo -n "\ngoing back to main menu"
    sleep 1
    echo -n "."
    sleep 1
    echo -n "."
    sleep 1
    echo -n "."
    sleep 1
    zsh menu.zsh