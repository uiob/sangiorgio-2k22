#!/bin/zsh
clear 

source printAsciiArt.zsh

printAscii ./../txt/walkietalkie.txt


echo -n "\n\nPremi un tasto qualsiasi per tornare al menu'... "
read tasto

zsh menu.zsh