#!/bin/bash
#------------------
#@file:fscriptSanG.zsh
#------------------
source ./printAsciiArt.zsh

clear

echo "Press any key to continue"
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then


width="$(stty size | cut -d" " -f2)"
line=""
a=1
echo "\n"
for i in {1..200}
do
	line=""
	for i in $( eval echo {1..$width} )
	do
		newchar=$(($RANDOM%2))
		line="$line$newchar"
	done
	echo -n $line
	sleep 0.02
done

printAscii ./../txt/titoloProva.txt

# decho "IN QUESTA PROVA DOVRETE TROVARE LA PASSWORD "
sleep 0.2
echo "Premi un tasto qualsiasi per accedere al menu'..."
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
	zsh menu.zsh
exit ;
else
echo "waiting for the keypress"
fi
done
else
echo "waiting for the keypress"
fi
done