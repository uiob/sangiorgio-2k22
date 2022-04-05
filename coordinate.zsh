clear
echo "Inserisci coordinate...."


echo "Premi un tasto qualsiasi per tornare al menu'..."
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
  ./menu.zsh
fi
done
