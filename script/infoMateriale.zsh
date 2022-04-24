#!/bin/zsh
clear

source printAsciiArt.zsh

printAscii ./../txt/infoMateriale.txt

echo "\n\n"

echo -n "\n\nPremi un tasto qualsiasi per tornare al menu'... "
read tasto

zsh attacco.zsh