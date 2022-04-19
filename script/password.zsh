#!/bin/zsh
clear

source printAsciiArt.zsh

echo "Inserisci password.... "
read pw

if [ "$pw" = "pw1" ]
then
    printAscii ./../txt/provaSuperata.txt
    exit ;
else 
    echo "PASSWORD ERRATA!"
    sleep 3
    zsh menu.zsh
fi
