clear 
width5="$(stty size | cut -d" " -f3)"

numspace5=$(($width5-71))
numspace5=$(($numspace5/2))

for k in $(eval echo "{1..$numspace5}")
do
  spaces5="${spaces5} "
done

while IFS= read -r line; 
do
    echo -n "$spaces5"
    echo -n "$line"
    echo "$spaces5"
    sleep 0.1
done < decodificatore.txt

echo -n "inserisci messaggio da decodificare: "
read message

if [ "$message" = "messaggiogiusta" ]
then
    echo "messaggio con le info per l'azimut"
    sleep 3
else


a=$(($RANDOM% 60 + 30))

  echo -n "\nbuffering "

for t in $(eval echo "{1..6}")
do
  echo -n "."
  sleep 0.8
done

echo  -n "\n\nmessaggio decodificato: "
sleep 0.6
echo $RANDOM | md5sum | head -c $a; echo;
sleep 3
fi

echo -n "digita menu per tornare al menu',\nqualsiasi altro codice per decodificare un altro messaggio"


echo -n "\n\ninserisci comando: "

read input

if [ "$input" = "menu" ]
then
  zsh menu.zsh
else
decodificatore.zsh
fi
