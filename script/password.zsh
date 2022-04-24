#!/bin/zsh
clear

source printAsciiArt.zsh

echo -n "Inserisci password.... "
read pw

sleep 1
echo ""

if [ "$pw" = "inspw" ]
then
    clear
    printAscii ./../txt/provaSuperata.txt
    sleep 9999
else 
    echo $'\e[1;31m'PASSWORD ERRATA!$'\e[0m'
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
fi
