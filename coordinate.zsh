clear
width3="$(stty size | cut -d" " -f3)"

numspace3=$(($width3-67))
numspace3=$(($numspace3/2))

for j in $(eval echo "{1..$numspace3}")
do
  spaces3="${spaces3} "
done


echo "complimenti, la squadra operativa e' riuscita a raggiungere l'albero!"
sleep 1

while IFS= read -r line; 
do
    echo -n "$spaces3"
    echo -n "$line"
    echo "$spaces3"
    sleep 0.1
done < tree.txt

echo "digita:"
sleep 0.4
echo "- si -> se la password può essere recuperata"
sleep 0.4
echo "- no -> se la password non è raggiungibile"
sleep 0.4

echo -n "Inserisci comando: " 
read comando2

if [ "$comando2" = "si" ]
then
  zsh password.zsh
elif [ "$comando2" = "no" ]
then
  zsh azimut.zsh
else
  echo "comando non valido!"
  sleep 1.2
  zsh coordinate.zsh
fi