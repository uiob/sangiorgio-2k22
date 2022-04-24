#!/bin/zsh
clear 

source printAsciiArt.zsh

printAscii ./../txt/decodificatore.txt

echo -n "\n\ninserisci comando di codifica/decodifica: "
read comando

str1=""
str2=""
str3=""
count=0
while [ "$i" != "'" ] && [ $count -lt 50 ]
do
i="${comando:$count:1}"
str1="${str1}$i"
let count=count+1
done

# echo "str1= $str1"

i="${comando:$count:1}"

while [ "$i" != "'" ] && [ $count -lt 50 ]
do
i="${comando:$count:1}"
str2="${str2}$i"
let count=count+1
done

# echo "str2= $str2"


n1=${#str1}
n2=${#str2}
ncmd=${#comando}

lw=$(($n1 - 2))
# echo "word= $word"

ntot=$(($n1 + $n2))

len=$((ncmd - ntot))

# echo "n1= $n1"
# echo "n2= $n2"
# echo "ncmd= $ncmd"
# echo "len= $len"

i="${comando:$count:1}"

for (( j=0; j<${len}; j++ ));
do
i="${comando:$count:1}"
str3="${str3}$i"
let count=count+1
done

# echo "str3= $str3"
sleep 1
if [ $count -lt 48 ]
then
  word=${str2:0:-1}
  if [ "$str1" = "echo '" ]
  then
    if [ "$str3" = " | base64" ] || [ "$str3" = " | base64 --decode" ]
    then
      echo "\ncomando corretto!"
      sleep 2
      echo -n "lancio il comando"
      sleep 1
      echo -n "."
      sleep 1
      echo -n "."
      sleep 1
      echo "."
      sleep 1
      echo ""
      if [ "$str3" = " | base64" ]
      then
        echo -n "messaggio codificato: "
        echo "$word" | base64
      elif [ "$str3" = " | base64 --decode" ]
      then
        echo -n "messaggio decodificato: "
        echo "$word" | base64 --decode
        sleep 3
      else
      echo $'\e[1;31m'comando non valido$'\e[0m'
      fi
    else
    echo $'\e[1;31m'comando non valido$'\e[0m'
    fi
  else
  echo $'\e[1;31m'comando non valido$'\e[0m'
  fi
else
echo $'\e[1;31m'comando non valido$'\e[0m'
fi

sleep 1.2
echo -n "\ndigita menu per tornare al menu, r per provare un'altro comando"


echo -n "\ninserisci comando: "
read input

if [ "$input" = "menu" ]
then
  zsh menu.zsh
elif [ "$input" = "r" ]
then
  zsh decodificatore.zsh
else
  echo ""
  echo $'\e[1;31m'comando non valido$'\e[0m'
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