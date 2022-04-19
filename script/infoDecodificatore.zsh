#!/bin/zsh
clear 

source printAsciiArt.zsh

printAscii ./../txt/istruzioniDecodificatore.txt

sleep 2

echo -n "\n\nPremi un tasto qualsiasi per tornare al menu'... "
read tasto

zsh menu.zsh