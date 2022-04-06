clear

width2="$(stty size | cut -d" " -f2)"

numspace2=$(($width2-69))
numspace2=$(($numspace2/2))

for j in $(eval echo "{1..$numspace2}")
do
  spaces2="${spaces2} "
done

while IFS= read -r line; 
do
    echo -n "$spaces2"
    echo -n "$line"
    echo "$spaces2"
    sleep 0.1
done < menu.txt
echo "- i --> per info su come comunicare con le radio"
sleep 0.4
echo "- p --> per inserire la password e VINCERE la prova."
sleep 0.4
echo "- d --> per utilizzare il decodificatore"

# fullname="USER INPUT"
echo -n "Inserisci comando: " 
read comando

if [ "$comando" = "p" ]
then
  zsh password.zsh
elif [ "$comando" = "d" ]
then
  zsh decodificatore.zsh
elif [ "$comando" = "i" ]
then
  zsh infoRadio.zsh
else
  
  echo "comando non valido!"
  sleep 1.2
  zsh menu.zsh
fi

echo " "
echo "$fullname"