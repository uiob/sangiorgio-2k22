clear 

source printAsciiArt.zsh

printAscii walkietalkie.txt

echo "Premi un tasto qualsiasi per tornare al menu'..."
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
	zsh menu.zsh
exit ;
else
echo "waiting for the keypress"
fi
done